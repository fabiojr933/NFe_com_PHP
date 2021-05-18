<?php
namespace app\controllers;

use app\core\Controller;
use app\core\Flash;
use app\models\dao\Itemitem_vendaDao;
use app\models\service\Itemitem_vendaService;
use app\models\service\ProdutoService;
use app\models\service\Service;
use app\models\service\item_vendaService;
use app\models\service\ItemVendaService;

class ItemVendaController extends Controller{
   private $tabela = "item_venda";
   private $campo  = "id_item_venda";    
   
        
    
  
    public function salvar(){
        $item_venda = new \stdClass();
        $item_venda->id_produto   = $_POST["id_produto"];
        $item_venda->id_venda     = $_POST["id_venda"];
        $item_venda->valor        = $_POST["preco"];
        $item_venda->qtde         = $_POST["qtde"];
        $item_venda->subtotal     = $item_venda->valor * $item_venda->qtde;
  
       Flash::setForm($item_venda);
       ItemVendaService::salvar($item_venda, $this->campo, $this->tabela);
       ItemVendaService::atualizarVenda($item_venda->id_venda);
       $this->redirect(URL_BASE."venda/edit/".$item_venda->id_venda);
    }
     
    
    public function excluir($id){
        $item_venda = Service::get("item_venda", "id_item_venda", $id);
        Service::excluir($this->tabela, $this->campo, $id);
        ItemVendaService::atualizarVenda($item_venda->id_venda);
        $this->redirect(URL_BASE."venda/edit/".$item_venda->id_venda);
    }
    
   
    
    
}

