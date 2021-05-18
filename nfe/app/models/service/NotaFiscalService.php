<?php

namespace app\models\service;

use app\controllers\ItemnotafiscalController;
use app\models\dao\NotaFiscalDao;

class NotaFiscalService
{
    public static function salvarNota($id_venda)
    {
        $configuracao = Service::get("configuracao", "id_configuracao", 1);
        $venda = Service::get("venda", "id_venda", $id_venda);          ;      
        $empresa = Service::get("emitente", "id_emitente", $configuracao->empresa_padrao);
        $estado = Service::get("estado", "uf_estado", $empresa->uf);
        $cliente = ClienteService::listaCliente($venda->id_cliente);   
     //   $cliente = Service::get("cliente", "id_cliente ", $venda->id_cliente);   
        $itens =  ItemVendaService::listaPorVenda($id_venda);




        /**
         * EMITENTE
         */
        $nota = new \stdClass();
        $nota->id_venda   = $id_venda;
        $nota->cUF        = $estado->codigo_estado;
        $nota->natOp      = $configuracao->natureza_padrao;
        $nota->indPag     = 0; //NÃO EXISTE MAIS NA VERSÃO 4.00
        $nota->modelo     = 55;
        $nota->serie      = $configuracao->nfe_serie;
        $nota->nNF        = $configuracao->ultimanfe + 1;
        $nota->cNF        = rand($nota->nNF, 99999999);
        $nota->dhEmi      = hoje() . "T" . agora() . "-03:00";
        $nota->dhSaiEnt   = null;
        $nota->tpNF       = $configuracao->tipo_nota_padrao;

        //verifica o destino da operacao
        if ($empresa->uf != "EX") {
            if ($empresa->uf == $cliente->uf) {
                $nota->idDest     = 1;
            } else {
                $nota->idDest     = 3;
            }
        } else {
            $nota->idDest     = 3;
        }

        $nota->cMunFG     = $empresa->ibge;
        $nota->tpImp      = 1;
        $nota->tpEmis     = 1;
        $nota->tpAmb      = $configuracao->nfe_ambiente;
        $nota->finNFe     = $configuracao->indFinal;
        $nota->indFinal   = 1;
        $nota->indPres    = 2;
        $nota->indIntermed = 0; //usar a partir de 05/04/2021
        $nota->procEmi = 0;
        $nota->verProc = $configuracao->nfe_versao;
        $nota->dhCont = null;
        $nota->xJust = null;
        /**
         * DADOS DO EMITENTE
         */
        $nota->em_xNome    = $empresa->razao_social;
        $nota->em_xFant    = $empresa->nome_fantasia;
        $nota->em_IE       = $empresa->ie;
        $nota->em_IEST      = $empresa->iest;
        $nota->em_IM        = $empresa->im;
        $nota->em_CNAE      = $empresa->cnae;
        $nota->em_CRT       = $empresa->regime_tributario;
        $nota->em_CNPJ      = $empresa->cnpj;
        //  $emitente->em_CPF;
        $nota->em_xLgr      = $empresa->logradouro;
        $nota->em_nro       = $empresa->numero;
        $nota->em_xCpl      = $empresa->complemento;
        $nota->em_xBairro   = $empresa->bairro;
        $nota->em_cMun      = $empresa->ibge;
        $nota->em_xMun      = $empresa->cidade;
        $nota->em_UF        = $empresa->uf;
        $nota->em_CEP       = $empresa->cep;
        $nota->em_cPais     = "1058";
        $nota->em_xPais     = "BRASIL";
        $nota->em_fone      = $empresa->ultima_atualizacao;


        $nfe = Service::get("nfe", "id_venda", $id_venda);
        if (!$nfe) {
            $nota->id_status = 2;
            $id_nfe = Service::inserir(objToArray($nota), "nfe");
        } else {
            if ($nfe->id_status < 7) {
                $nota->id_status = 2;
                $nota->id_nfe = $nfe->id_nfe;
                Service::editar(objToArray($nota), "id_nfe", "nfe");
            } else {
                return $nfe->id_nfe;
            }
            $id_nfe = $nfe->id_nfe;
        }
        if (!$id_nfe) {
            echo "erro";
            exit;
        }



        /**
         * dados do destinatario
         */

        $dest = new \stdClass();
        $dest->id_nfe               = $id_nfe;        
        $dest->dest_xNome           = $cliente->nome;
        $dest->dest_indIEDest       = $cliente->indIEDest;
        $dest->dest_IE              = $cliente->ie;
    //  $dest->dest_ISUF            = $cliente->suframa;
        $dest->dest_IM              = $cliente->im;
        $dest->dest_email           = $cliente->email;
        $dest->dest_CNPJ            = $cliente->cnpj;
        $dest->dest_CPF             = $cliente->cpf;
        $dest->dest_idEstrangeiro   = $cliente->cod_estrangeiro;

        $dest->dest_xLgr            = $cliente->logradouro;
        $dest->dest_nro             = $cliente->numero;
        $dest->dest_xCpl            = $cliente->complemento;
        $dest->dest_xBairro         = $cliente->bairro;
        $dest->dest_cMun            = $cliente->ibge;
        $dest->dest_xMun            = $cliente->cidade;
        $dest->dest_UF              = $cliente->uf;
        $dest->dest_CEP             = $cliente->cep;
        $dest->dest_cPais           = "1058";
        $dest->dest_xPais           = "BRASIL";
        $dest->dest_fone            = $cliente->fone;

       

        $destinatario = Service::get("nfe_destinatario", "id_nfe", $id_nfe);
        if (!$destinatario) {
            Service::inserir(objToArray($dest), "nfe_destinatario");
        } else {
            $dest->id_destinatario = $destinatario->id_destinatario;
            Service::editar(objToArray($dest), "id_destinatario", "nfe_destinatario");
        }



        /**
         * Itens da venda
         */

         $j = 0;     
         $total = 0;                       
        foreach ($itens as $i) {

            $item = new \stdClass();
            $item->id_nfe           = $id_nfe;
            $item->numero_item      = $j++; //item da NFe
            $item->cProd            = $i->id_produto;
            $item->cEAN             = $i->gtin;
            $item->xProd            = $i->produto;
            $item->NCM              = $i->ncm;

            $item->cBenef           = $i->cbenef; //incluido no layout 4.00

            $item->EXTIPI           = $i->extipi;
            $item->CFOP             = $i->cfop;
            $item->uCom             = $i->unidade;
            $item->qCom             = $i->qtde;
            $item->vUnCom           = $i->valor;
            $item->vProd            = $i->valor * $i->qtde;
            $item->cEANTrib         = $i->gtin;
            $item->uTrib            = $i->unidade;
            $item->qTrib            = $i->qtde;;
            $item->vUnTrib          = $i->valor;;
            $item->vFrete           = null;
            $item->vSeg             = null; 
            $item->vDesc            = null;
            $item->vOutro           = null;
            $item->indTot           = 1;
            $item->xPed             = $id_nfe;
            $item->nItemPed         = $item->numero_item;
        //  $item->nFCI             = $i->nfci;
            $total                  += $item->vProd; 

            $it = VendaService::existeItem($id_nfe, $item->cProd);  
            if(!$it){         
                Service::inserir(objToArray($item), "nfe_item");
            }else{
                $item->id_nfe_item = $it->id_nfe_item;
                Service::editar(objToArray($item), "id_nfe_item", "nfe_item");
            }
        }
        Service::editar(["id_nfe"=> $id_nfe, "vOrig"=> $total, "vLiq"=> $total, "vProd"=> $total, "vNF"=>$total], "id_nfe", "nfe");
     //   header("location:". URL_BASE."venda" );
        
    }
    public static function lista(){
        $dao = new NotaFiscalDao();
        return $dao->lista();
    }
    public static function getNotaFiscal($id_nfe){
        $dao = new NotaFiscalDao();
        return $dao->getNotaFiscal($id_nfe);
    }
    public static function salvarChave($id_nfe, $chave){
        $dao = new NotaFiscalDao();
        return $dao->salvarChave($id_nfe, $chave);
    }
    public static function salvarXML($id_nfe, $xml){
       $item = Service::get("xml", "id_nfe", $id_nfe);
       if($item){
           Service::editar(["id_nfe"=> $id_nfe, "xml"=> $xml], "id_nfe", "xml");
       }else{
           Service::inserir(["id_nfe"=> $id_nfe, "xml"=> $xml], "xml");
       }
    }
    public static function configuracao(){
        $dao = new NotaFiscalDao();
        return $dao->configuracao();
    }
    public static function mudarStatus($id_nfe, $status){
        $dao = new NotaFiscalDao();
        return $dao->mudarStatus($id_nfe, $status);
    }
    public static function nfes(){
        $dao = new NotaFiscalDao();
        return $dao->nfes();
    }
    public static function nfesAutorizada(){
        $dao = new NotaFiscalDao();
        return $dao->nfesAutorizada();
    }  

    
    public static function salvaRecibo($id_nfe, $recibo, $status){
        $dao = new NotaFiscalDao();
        return $dao->salvaRecibo($id_nfe, $recibo, $status);
    }
    public static function salvarProtocolo($id_nfe, $protocolo, $status){
        $dao = new NotaFiscalDao();
        return $dao->salvaProtocolo($id_nfe, $protocolo, $status);
    }
    
}
