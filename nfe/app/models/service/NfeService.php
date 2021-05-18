<?php

namespace app\models\service;

use app\models\dao\NotaFiscalDao;
use Exception;
use InvalidArgumentException;
use NFePHP\Common\Certificate;
use NFePHP\DA\NFe\Danfe;
use NFePHP\NFe\Common\Standardize;
use NFePHP\NFe\Complements;
use NFePHP\NFe\Make;
use NFePHP\NFe\Tools;

class NfeService
{
    public static function gerarNfe($notaFiscal)
    {
        $dao = new NotaFiscalDao();
        $itens = $dao->getNotaFiscalItem($notaFiscal->id_nfe);



        $nfe = new Make();
        $std = new \stdClass();
        $std->versao = '4.00'; //versão do layout (string)
        $std->Id = ''; //se o Id de 44 digitos não for passado será gerado automaticamente
        $std->pk_nItem = null; //deixe essa variavel sempre como NULL
        $nfe->taginfNFe($std);

        self::identificacao($nfe, $notaFiscal);
        self::emitente($nfe, $notaFiscal);
        self::destinatario($nfe, $notaFiscal);

        $cont = 0;
        foreach ($itens as $item) {
            $cont++;;
            ItemNFeService::dadosProduto($cont, $nfe, $item);
            ItemNFeService::tagImposto($cont, $nfe, $notaFiscal);
            ItemNFeService::icmsSn($cont, $nfe);
            ItemNFeService::pis($cont, $nfe);
            ItemNFeService::cofins($cont, $nfe);
        }

        self::totais($nfe, $notaFiscal);
        self::transporte($nfe, $notaFiscal);

        self::fatura($nfe, $notaFiscal);
        self::pag($nfe, $notaFiscal);

        $retorno = new \stdClass();
        try {
            $result = $nfe->montaNFe();
            if ($result) {
                //     header("Content-type: text/xml; charset=UTF-8");
                $xml = $nfe->getXML();
                $chave = $nfe->getChave();
                $nomeXML = $chave . "-nfe.xml";
                $pastaAmbiente = ($notaFiscal->tpAmb == "1" ? "producao" : "homologacao");
                $path = "notas/{$pastaAmbiente}/temporarias/" . $nomeXML;
                file_put_contents($path, $xml);
                chmod($path, 0777);
                NotaFiscalService::salvarChave($notaFiscal->id_nfe, $chave);
                NotaFiscalService::salvarXML($notaFiscal->id_nfe, $xml);
                $retorno->erro = -1;
                $retorno->msg = "XML GERADO COM SUCESSO";
                $retorno->msg_erro = "";
            } else {
                $retorno->erro = 1;
                $retorno->msg = "ERRO AO GERAR O XML ";
                $retorno->msg_erro = $nfe->getErrors();
            }
        } catch (Exception $th) {
            i($nfe->getErrors());
        }
        return $retorno;
    }
    public static function identificacao($nfe, $notafiscal)
    {
        $std = new \stdClass();
        $std->cUF             = $notafiscal->cUF;
        $std->cNF             = $notafiscal->cNF;
        $std->natOp           = $notafiscal->natOp;
        $std->indPag = 0; //NÃO EXISTE MAIS NA VERSÃO 4.00
        $std->mod             = $notafiscal->modelo;
        $std->serie           = $notafiscal->serie;
        $std->nNF             = $notafiscal->nNF;
        $std->dhEmi           = $notafiscal->dhEmi;
        $std->dhSaiEnt        = $notafiscal->dhSaiEnt;
        $std->tpNF            = $notafiscal->tpNF;
        $std->idDest          = $notafiscal->idDest;
        $std->cMunFG          = $notafiscal->cMunFG;
        $std->tpImp           = $notafiscal->tpImp;
        $std->tpEmis          = $notafiscal->tpEmis;
        $std->cDV             = $notafiscal->cDV;
        $std->tpAmb           = $notafiscal->tpAmb;
        $std->finNFe          = $notafiscal->finNFe;
        $std->indFinal        = $notafiscal->indFinal;
        $std->indPres         = $notafiscal->indPres;
        $std->indIntermed     = $notafiscal->indIntermed;
        $std->procEmi         = $notafiscal->procEmi;
        $std->verProc         = $notafiscal->verProc;
        $std->dhCont          = $notafiscal->dhCont;
        $std->xJust           = $notafiscal->xJust;
        $nfe->tagide($std);
    }
    public static function emitente($nfe, $emitente)
    {
        $std = new \stdClass();
        $std->xNome          = $emitente->em_xNome;
        $std->xFant          = $emitente->em_xFant;
        $std->IE             = $emitente->em_IE;
        $std->IEST           = $emitente->em_IEST;
        $std->IM             = $emitente->em_IM;
        $std->CNAE           = $emitente->em_CNAE;
        $std->CRT            = $emitente->em_CRT;

        if ($emitente->em_CNPJ) {
            $std->CNPJ = $emitente->em_CNPJ;
            $std->CPF = null;
        } elseif ($emitente->em_CPF) {
            $std->CNPJ = null;
            $std->CPF = $emitente->em_CPF;
        } else {
            $std->CNPJ = null;
            $std->CPF = null;
        }

        $nfe->tagemit($std);

        $std = new \stdClass();
        $std->xLgr      = $emitente->em_xLgr;
        $std->nro       = $emitente->em_nro;
        $std->xCpl      = $emitente->em_xCpl;
        $std->xBairro   = $emitente->em_xBairro;
        $std->cMun      = $emitente->em_cMun;
        $std->xMun      = $emitente->em_xMun;
        $std->UF        = $emitente->em_UF;
        $std->CEP       = $emitente->em_CEP;
        $std->cPais     = $emitente->em_cPais;
        $std->xPais     = $emitente->em_xPais;
        $std->fone      = $emitente->em_fone;
        $nfe->tagenderEmit($std);
    }
    public static function destinatario($nfe, $notaFiscal)
    {

        $std = new \stdClass();
        $std->xNome           = $notaFiscal->dest_xNome;
        $std->indIEDest       = $notaFiscal->dest_indIEDest;
        $std->IE              = $notaFiscal->dest_IE;
        //  $std->ISUF            = $notaFiscal->dest_ISUF;
        $std->IM              = $notaFiscal->dest_IM;
        $std->email           = $notaFiscal->dest_email;

        if ($notaFiscal->dest_CNPJ) {
            $std->CNPJ = $notaFiscal->dest_CNPJ;
            $std->CPF = null;
        } elseif ($notaFiscal->dest_CPF) {
            $std->CNPJ = null;
            $std->CPF = $notaFiscal->dest_CPF;
        } else {
            $std->CNPJ = null;
            $std->CPF = null;
        }
        $std->idEstrangeiro   = $notaFiscal->dest_idEstrangeiro;
        $nfe->tagdest($std);

        $std = new \stdClass();
        $std->xLgr        = $notaFiscal->dest_xLgr;
        $std->nro         = $notaFiscal->dest_nro;
        $std->xCpl        = $notaFiscal->dest_xCpl;
        $std->xBairro     = $notaFiscal->dest_xBairro;
        $std->cMun        = $notaFiscal->dest_cMun;
        $std->xMun        = $notaFiscal->dest_xMun;
        $std->UF          = $notaFiscal->dest_UF;
        $std->CEP         = $notaFiscal->dest_CEP;
        $std->cPais       = $notaFiscal->dest_cPais;
        $std->xPais       = $notaFiscal->dest_xPais;
        $std->fone        = $notaFiscal->dest_fone;
        $nfe->tagenderDest($std);
    }
    public static function totais($nfe, $notafiscal)
    {
        $std = new \stdClass();
        $std->vBC           = $notafiscal->vBC;
        $std->vICMS         = $notafiscal->vICMS;
        $std->vICMSDeson    = $notafiscal->vICMSDeson;
        $std->vFCP          = $notafiscal->vFCP;
        $std->vBCST         = $notafiscal->vBCST;
        $std->vST           = $notafiscal->vST;
        $std->vFCPST        = $notafiscal->vFCPST;
        $std->vFCPSTRet     = $notafiscal->vFCPSTRet;
        $std->vProd         = $notafiscal->vProd;
        $std->vFrete        = $notafiscal->vFrete;
        $std->vSeg          = $notafiscal->vSeg;
        $std->vDesc         = $notafiscal->vDesc;
        $std->vII           = $notafiscal->vII;
        $std->vIPI          = $notafiscal->vIPI;
        $std->vIPIDevol     = $notafiscal->vIPIDevol;
        $std->vPIS          = $notafiscal->vPIS;
        $std->vCOFINS       = $notafiscal->vCOFINS;
        $std->vOutro        = $notafiscal->vOutro;
        $std->vNF           = $notafiscal->vNF;
        $std->vTotTrib      = $notafiscal->vTotTrib;

        $nfe->tagICMSTot($std);
    }
    public static function transporte($nfe, $notaFiscal)
    {
        $std = new \stdClass();
        $std->modFrete = 0;

        $nfe->tagtransp($std);
    }
    public static function fatura($nfe, $notaFiscal)
    {
        $std = new \stdClass();
        $std->nFat  = $notaFiscal->id_nfe;
        $std->vOrig = $notaFiscal->vOrig;
        $std->vDesc = $notaFiscal->vDesc;
        $std->vLiq  = $notaFiscal->vLiq;

        $nfe->tagfat($std);
    }
    public static function pag($nfe, $notaFiscal)
    {
        $std = new \stdClass();
        $std->vTroco = null; //incluso no layout 4.00, obrigatório informar para NFCe (65)

        $nfe->tagpag($std);

        $std = new \stdClass();
        $std->tPag = '01';
        $std->vPag = $notaFiscal->vOrig;
        $std->CNPJ = null;
        $std->tBand = null;
        $std->cAut = null;
        $std->tpIntegra = null; //incluso na NT 2015/002
        $std->indPag = '0'; //0= Pagamento à Vista 1= Pagamento à Prazo 


        $nfe->tagdetPag($std);
    }
    public static function assinarNfe($notaFiscal)
    {
        $configuracao = NotaFiscalService::configuracao();
        $arr = [
            "atualizacao" => $notaFiscal->atualizacao,
            "tpAmb" => intval($notaFiscal->tpAmb),
            "razaosocial" => $notaFiscal->em_xNome,
            "cnpj" => $notaFiscal->em_CNPJ,
            "siglaUF" => $notaFiscal->em_UF,
            "schemes" => "PL_009_V4",
            "versao" => '4.00',
            "tokenIBPT" => "",
            "CSC" => "",
            "CSCid" => "",
            "proxyConf" => [
                "proxyIp" => "",
                "proxyPort" => "",
                "proxyUser" => "",
                "proxyPass" => ""
            ]
        ];
        $retorno = new \stdClass();
        try {
            $configJson = json_encode($arr);
            $certificado_digital = file_get_contents("notas/certificados/" . $configuracao->certificado_digital);
            $tools = new Tools($configJson, Certificate::readPfx($certificado_digital, $configuracao->senha_certificado));

            //lendo o xml gerado
            $pastaAmbiente = ($notaFiscal->tpAmb == "1" ? "producao" : "homologacao");
            $xml = "notas/{$pastaAmbiente}/temporarias/{$notaFiscal->chave}-nfe.xml";
            $response = $tools->signNFe(file_get_contents($xml));

            //transportar o xml assinado
            $xml_assinado =  "notas/{$pastaAmbiente}/assinadas/{$notaFiscal->chave}-nfe.xml";
            file_put_contents($xml_assinado, $response);
            chmod($xml_assinado, 0777);
            NotaFiscalService::mudarStatus($notaFiscal->id_nfe, 4);
            $retorno->erro = -1;
            $retorno->msg = "XML ASSINADO COM SUCESSO";
            $retorno->msg_erro = "";
        } catch (\Exception $e) {
            //aqui você trata possiveis exceptions
            $retorno->erro = 1;
            $retorno->msg = "ERRO AO ASSINADO O XML";
            $retorno->msg_erro = $e->getMessage();
            echo $e->getMessage();
        }
        return $retorno;
    }
    public static function enviarNfe($notaFiscal)
    {
        $configuracao = NotaFiscalService::configuracao();
        $arr = [
            "atualizacao" => $notaFiscal->atualizacao,
            "tpAmb" => intval($notaFiscal->tpAmb),
            "razaosocial" => $notaFiscal->em_xNome,
            "cnpj" => $notaFiscal->em_CNPJ,
            "siglaUF" => $notaFiscal->em_UF,
            "schemes" => "PL_009_V4",
            "versao" => '4.00',
            "tokenIBPT" => "",
            "CSC" => "",
            "CSCid" => "",
            "proxyConf" => [
                "proxyIp" => "",
                "proxyPort" => "",
                "proxyUser" => "",
                "proxyPass" => ""
            ]
        ];
        $retorno = new \stdClass();
        try {
            $configJson = json_encode($arr);
            $certificado_digital = file_get_contents("notas/certificados/" . $configuracao->certificado_digital);
            $tools = new Tools($configJson, Certificate::readPfx($certificado_digital, $configuracao->senha_certificado));
            $idLote = str_pad($notaFiscal->nNF, 15, '0', STR_PAD_LEFT);
            //lendo o xml gerado
            $pastaAmbiente = ($notaFiscal->tpAmb == "1" ? "producao" : "homologacao");
            $xml = file_get_contents("notas/{$pastaAmbiente}/assinadas/{$notaFiscal->chave}-nfe.xml");
            //envia o xml para pedir autorização ao SEFAZ
            $resp = $tools->sefazEnviaLote([$xml], $idLote);
            //transforma o xml de retorno em um stdClass
            $st = new Standardize();
            $std = $st->toStd($resp);
            if ($std->cStat != 103) {
                //erro registrar e voltar
                $retorno->erro = 1;
                $retorno->msg = "NÃO FOI POSSIVEL ENVIAR O XML PARA SEFAZ";
                $retorno->msg_erro = $std->xMotivo;
                //   return "[$std->cStat] $std->xMotivo";
                i($retorno);
            }
            $recibo = $std->infRec->nRec;
            //transportar o xml assinado
            $xml_assinado =  "notas/{$pastaAmbiente}/enviadas/{$notaFiscal->chave}-nfe.xml";
            file_put_contents($xml_assinado, $resp);
            chmod($xml_assinado, 0777);
            NotaFiscalService::salvaRecibo($notaFiscal->id_nfe, $recibo, 4);
            $retorno->erro = -1;
            $retorno->msg = "XML ENVIADO COM SUCESSO";
            $retorno->msg_erro = "";
            //esse recibo deve ser guardado para a proxima operação que é a consulta do recibo
            //      header('Content-type: text/xml; charset=UTF-8');
            //      echo $resp;
        } catch (\Exception $e) {
            echo str_replace("\n", "<br/>", $e->getMessage());
            $retorno->erro = 1;
            $retorno->msg = "ERRO AO ENVIAR O XML";
            $retorno->msg_erro = $e->getMessage();
            echo $e->getMessage();
        }
        return $retorno;
    }
    public static function autorizaNfe($notaFiscal)
    {
        $configuracao = NotaFiscalService::configuracao();
        $arr = [
            "atualizacao" => $notaFiscal->atualizacao,
            "tpAmb" => intval($notaFiscal->tpAmb),
            "razaosocial" => $notaFiscal->em_xNome,
            "cnpj" => $notaFiscal->em_CNPJ,
            "siglaUF" => $notaFiscal->em_UF,
            "schemes" => "PL_009_V4",
            "versao" => '4.00',
            "tokenIBPT" => "",
            "CSC" => "",
            "CSCid" => "",
            "proxyConf" => [
                "proxyIp" => "",
                "proxyPort" => "",
                "proxyUser" => "",
                "proxyPass" => ""
            ]
        ];
        $retorno = new \stdClass();
        try {
            //$content = conteúdo do certificado PFX
            $configJson = json_encode($arr);
            $certificado_digital = file_get_contents("notas/certificados/" . $configuracao->certificado_digital);
            $tools = new Tools($configJson, Certificate::readPfx($certificado_digital, $configuracao->senha_certificado));

            //consulta número de recibo
            //$numeroRecibo = número do recíbo do envio do lote
            $xmlResp = $tools->sefazConsultaRecibo($notaFiscal->recibo, intval($notaFiscal->tpAmb));

            //transforma o xml de retorno em um stdClass
            $st = new Standardize();
            $std = $st->toStd($xmlResp);

            if ($std->cStat == '103') { //lote enviado
                //Lote ainda não foi precessado pela SEFAZ;
                $retorno->erro = 1;
                $retorno->msg = "Lote ainda não foi precessado pela SEFAZ";
                $retorno->msg_erro = "Não foi possivel fazer a consulta";
                return $retorno;
            }
            if ($std->cStat == '105') { //lote em processamento
                //tente novamente mais tarde
                $retorno->erro = 1;
                $retorno->msg = "lote em processamento, tente novamente mais tarde";
                $retorno->msg_erro = "Não foi possivel fazer a consulta";
                return $retorno;
            }

            if ($std->cStat == '104') { //lote processado (tudo ok)
                if ($std->protNFe->infProt->cStat == '100') { //Autorizado o uso da NF-e
                    $protocolo = $std->protNFe->infProt->nProt;
                    //lendo o xml gerado
                    $pastaAmbiente = ($notaFiscal->tpAmb == "1" ? "producao" : "homologacao");
                    $xml_assinado = file_get_contents("notas/{$pastaAmbiente}/assinadas/{$notaFiscal->chave}-nfe.xml");

                    $xml_autorizado = Complements::toAuthorize($xml_assinado, $xmlResp);

                    //transportar o xml autorizado
                    $path_autorizado =  "notas/{$pastaAmbiente}/autorizadas/{$notaFiscal->chave}-nfe.xml";
                    file_put_contents($path_autorizado, $xml_autorizado);
                    chmod($path_autorizado, 0777);

                    NotaFiscalService::salvarProtocolo($notaFiscal->id_nfe, $protocolo, 5);
                    $retorno->erro = -1;
                    $retorno->msg = "XML AUTORIZADO COM SUCESSO";
                    $retorno->msg_erro = "";

                    return $retorno;
                } elseif (in_array($std->protNFe->infProt->cStat, ["110", "301", "302"])) { //DENEGADAS

                    $retorno->erro = 1;
                    $retorno->msg = "não foi possivel fazer a consulta nota DENEGADA";
                    $retorno->msg_erro = $std->protNFe->infProt->cStat . ":_:" . $std->protNFe->infProt->xMotivo;
                    return $retorno;
                } else { //não autorizada (rejeição)

                    $retorno->erro = 1;
                    $retorno->msg = "não foi possivel fazer a consulta nota rejeitada";
                    $retorno->msg_erro = $std->protNFe->infProt->cStat . ":_:" . $std->protNFe->infProt->xMotivo;
                    return $retorno;
                }
            } else { //outros erros possíveis

                $retorno->erro = 1;
                $retorno->msg = "não foi possivel fazer a consulta nota rejeitada";
                $retorno->msg_erro = $std->cstat . ":_:" . $std->motivo;
                return $retorno;
            }
        } catch (\Exception $e) {
            echo str_replace("\n", "<br/>", $e->getMessage());
            $retorno->erro = 1;
            $retorno->msg = "ERRO AO CONSULTAR O XML";
            $retorno->msg_erro = $e->getMessage();
            echo $e->getMessage();
        }
        return $retorno;
    }
    public static function gerarDanfe($notaFiscal)
    {

        //  $logo = 'data://text/plain;base64,' . base64_encode(file_get_contents(realpath(__DIR__ . '/../images/tulipas.png')));
        //$logo = realpath(__DIR__ . '/../images/tulipas.png');

        try {
            //lendo o xml gerado
            $pastaAmbiente = ($notaFiscal->tpAmb == "1" ? "producao" : "homologacao");
            $xml_autorizado = file_get_contents("notas/{$pastaAmbiente}/autorizadas/{$notaFiscal->chave}-nfe.xml");

            $danfe = new Danfe($xml_autorizado);
            $danfe->debugMode(false);
            $danfe->creditsIntegratorFooter('WEBNFe Sistemas - http://www.webenf.com.br');
            //    $danfe->obsContShow(false);
            //    $danfe->epec('891180004131899', '14/08/2018 11:24:45'); //marca como autorizada por EPEC
            // Caso queira mudar a configuracao padrao de impressao
            /*  $this->printParameters( $orientacao = '', $papel = 'A4', $margSup = 2, $margEsq = 2 ); */
            // Caso queira sempre ocultar a unidade tributável
            /*  $this->setOcultarUnidadeTributavel(true); */
            //Informe o numero DPEC
            /*  $danfe->depecNumber('123456789'); */
            //Configura a posicao da logo
            /*  $danfe->logoParameters($logo, 'C', false);  */
            //Gera o PDF
            $pdf = $danfe->render();
            header('Content-Type: application/pdf');
            echo $pdf;
        } catch (InvalidArgumentException $e) {
            echo "Ocorreu um erro durante o processamento :" . $e->getMessage();
        }
    }
    public static function cancelarNfe($notaFiscal)
    {
        $configuracao = NotaFiscalService::configuracao();
        $arr = [
            "atualizacao" => $notaFiscal->atualizacao,
            "tpAmb" => intval($notaFiscal->tpAmb),
            "razaosocial" => $notaFiscal->em_xNome,
            "cnpj" => $notaFiscal->em_CNPJ,
            "siglaUF" => $notaFiscal->em_UF,
            "schemes" => "PL_009_V4",
            "versao" => '4.00',
            "tokenIBPT" => "",
            "CSC" => "",
            "CSCid" => "",
            "proxyConf" => [
                "proxyIp" => "",
                "proxyPort" => "",
                "proxyUser" => "",
                "proxyPass" => ""
            ]
        ];
        $retorno = new \stdClass();
        try {
           
            $chave = $notaFiscal->chave;
            $xJust = 'Erro de digitacao nos dados dos produtos preco errado';
            $nProt = $notaFiscal->protocolo;


            //$content = conteúdo do certificado PFX
            $configJson = json_encode($arr);
            $certificado_digital = file_get_contents("notas/certificados/" . $configuracao->certificado_digital);
            $tools = new Tools($configJson, Certificate::readPfx($certificado_digital, $configuracao->senha_certificado));

            //lendo o xml gerado
            $pastaAmbiente = ($notaFiscal->tpAmb == "1" ? "producao" : "homologacao");
            $response = $tools->sefazCancela($chave, $xJust, $nProt);
           
            //você pode padronizar os dados de retorno atraves da classe abaixo
            //de forma a facilitar a extração dos dados do XML
            //NOTA: mas lembre-se que esse XML muitas vezes será necessário, 
            //      quando houver a necessidade de protocolos
            $stdCl = new Standardize($response);  
            
            //nesse caso $std irá conter uma representação em stdClass do XML
            $std = $stdCl->toStd();  
       
            
            //verifique se o evento foi processado
            if ($std->cStat != 128) {
                //houve alguma falha e o evento não foi processado
                $retorno->erro = 1;
                $retorno->msg = "houve alguma falha e o evento não foi processado";
                $retorno->msg_erro = $std->cStat . " " . $std->xMotivo;
                return $retorno;
            } else {
                $cStat = $std->retEvento->infEvento->cStat;
                if ($cStat == '101' || $cStat == '135' || $cStat == '155') {
                    //SUCESSO PROTOCOLAR A SOLICITAÇÂO ANTES DE GUARDAR
                    $xml = Complements::toAuthorize($tools->lastRequest, $response);
                  
                    //grave o XML protocolado 
                    //transportar o xml cancelado
                    $path_cancelado =  "notas/{$pastaAmbiente}/canceladas/{$notaFiscal->chave}-nfe.xml";
                    file_put_contents($path_cancelado, $xml);
                    chmod($path_cancelado, 0777);

                   
                    $retorno->erro = -1;
                    $retorno->msg = "NFE CANCELADO COM SUCESSO";
                    $retorno->msg_erro = "";
                } else {
                    //houve alguma falha no evento 
                    //TRATAR
                    $retorno->erro = 1;
                    $retorno->msg = "houve alguma falha e o evento não foi processado 1";
                    echo $std->cStat . ":_:" . $std->xMotivo;
                    return $retorno;
                }
            }
        } catch (\Exception $e) {
            echo $e->getMessage();
            $retorno->erro = 1;
            $retorno->msg = "houve alguma falha e o evento não foi processado 2";
            echo  $std->cStat . ":_:" . $std->xMotivo;
        }
    }
}
