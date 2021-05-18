<?php

namespace app\controllers;

use app\core\Controller;
use app\core\Flash;
use app\models\service\NfeService;
use app\models\service\NotaFiscalService;

class nfeController extends Controller
{
   public function gerarNfe($id_nfe)
   {
      $notaFiscal = NotaFiscalService::getNotaFiscal($id_nfe);
      $xml = NfeService::gerarNfe($notaFiscal);
      $this->redirect(URL_BASE . "venda/nfe");
      $erro = ($xml->erro > 0) ? -1 : 1;
      Flash::setMsg($xml->msg . " " . $xml->erro, $erro);
   }
   public function assinarNfe($id_nfe)
   {
      $notaFiscal = NotaFiscalService::getNotaFiscal($id_nfe);
      $xml = NfeService::assinarNfe($notaFiscal);
      $this->redirect(URL_BASE . "venda/nfe");
      $erro = ($xml->erro > 0) ? -1 : 1;
      Flash::setMsg($xml->msg . " " . $xml->erro, $erro);
   }
   public function enviarNfe($id_nfe)
   {
      $notaFiscal = NotaFiscalService::getNotaFiscal($id_nfe);
      $xml = NfeService::enviarNfe($notaFiscal);
      $this->redirect(URL_BASE . "venda/nfe");
      $erro = ($xml->erro > 0) ? -1 : 1;
      Flash::setMsg($xml->msg . " " . $xml->erro, $erro);
   }
   public function autorizaNfe($id_nfe)
   {
      $notaFiscal = NotaFiscalService::getNotaFiscal($id_nfe);
      $xml = NfeService::autorizaNfe($notaFiscal);
      //  i($xml);
      //$this->redirect(URL_BASE . "venda/nfeAutorizada");
      
      i($xml);
   }
   public function gerarDanfe($id_nfe)
   {
      $notaFiscal = NotaFiscalService::getNotaFiscal($id_nfe);
      $xml = NfeService::gerarDanfe($notaFiscal);
      //   i($xml);
      //  $this->redirect(URL_BASE."venda/nfe");
   }
   public function cancelarNfe($id_nfe)
   {
      $notaFiscal = NotaFiscalService::getNotaFiscal($id_nfe);
      $xml = NfeService::cancelarNfe($notaFiscal);     
      i($xml);
   }
}
