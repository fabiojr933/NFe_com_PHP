<?php

namespace app\models\service;

class ItemNFeService
{
    public static function dadosProduto($count, $nfe, $item)
    {
        $std = new \stdClass();
        $std->item       = $count;
        $std->cProd      = $item->cProd;
        $std->cEAN       = $item->cEAN;
        $std->xProd      = $item->xProd;
        $std->NCM        = $item->NCM;

        $std->cBenef     = $item->cBenef;

        $std->EXTIPI     = $item->EXTIPI;
        $std->CFOP       = $item->CFOP;
        $std->uCom       = $item->uCom;
        $std->qCom       = $item->qCom;
        $std->vUnCom     = $item->vUnCom;
        $std->vProd      = $item->vProd;
        $std->cEANTrib   = $item->cEANTrib;
        $std->uTrib      = $item->uTrib;
        $std->qTrib      = $item->qTrib;
        $std->vUnTrib    = $item->vUnTrib;
        $std->vFrete     = $item->vFrete;
        $std->vSeg       = $item->vSeg;
        $std->vDesc      = $item->vDesc;
        $std->vOutro     = $item->vOutro;
        $std->indTot     = $item->indTot;
        $std->xPed       = $item->xPed;
        $std->nItemPed   = $item->nItemPed;
        $std->nFCI       = $item->nFCI;

        $nfe->tagprod($std);
    }
    public static function tagImposto($count, $nfe, $notaFiscal)
    {
        $std = new \stdClass();
        $std->item = $count;
        $std->vTotTrib = $notaFiscal->vTotTrib;
        $nfe->tagimposto($std);
    }
    public static function icmsSn($count, $nfe)
    {
        $std = new \stdClass();
        $std->item = $count;
        $std->orig = 0;
        $std->CSOSN = '102';
    /*    $std->pCredSN = 2.00;
        $std->vCredICMSSN = 20.00;
        $std->modBCST = null;
        $std->pMVAST = null;
        $std->pRedBCST = null;
        $std->vBCST = null;
        $std->pICMSST = null;
        $std->vICMSST = null;
        $std->vBCFCPST = null; //incluso no layout 4.00
        $std->pFCPST = null; //incluso no layout 4.00
        $std->vFCPST = null; //incluso no layout 4.00
        $std->vBCSTRet = null;
        $std->pST = null;
        $std->vICMSSTRet = null;
        $std->vBCFCPSTRet = null; //incluso no layout 4.00
        $std->pFCPSTRet = null; //incluso no layout 4.00
        $std->vFCPSTRet = null; //incluso no layout 4.00
        $std->modBC = null;
        $std->vBC = null;
        $std->pRedBC = null;
        $std->pICMS = null;
        $std->vICMS = null;
        $std->pRedBCEfet = null;
        $std->vBCEfet = null;
        $std->pICMSEfet = null;
        $std->vICMSEfet = null;
        $std->vICMSSubstituto = null;   */
        
        $nfe->tagICMSSN($std);
    }
    public static function pis($count, $nfe){
        $std = new \stdClass();
        $std->item = $count;
        $std->CST = '07';
        $std->vBC = null;
        $std->pPIS = null;
        $std->vPIS = null;
        $std->qBCProd = null;
        $std->vAliqProd = null;

        $nfe->tagPIS($std);
    }
    public static function cofins($count, $nfe){
        $std = new \stdClass();
        $std->item = $count;
        $std->CST = '07';
        $std->vBC = null;
        $std->pCOFINS = null;
        $std->vCOFINS = null;
        $std->qBCProd = null;
        $std->vAliqProd = null;

        $nfe->tagCOFINS($std);
    }
}
