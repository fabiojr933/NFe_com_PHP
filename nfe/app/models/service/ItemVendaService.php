<?php
namespace app\models\service;

use app\models\dao\ItemVendaDao;
use app\models\validacao\ItemVendaValidacao;

class ItemVendaService {
    public static function listaPorVenda($id_venda){
        $dao = new ItemVendaDao();
        return $dao->listaPorVenda($id_venda);
    }
    public static function salvar($item, $campo, $tabela){
        $validacao = ItemVendaValidacao::salvar($item);
        return Service::salvar($item, $campo, $validacao->listaErros(), $tabela);
    }
    public static function atualizarVenda($id_venda){
        $total = Service::getSoma("item_venda", "subtotal", "id_venda", $id_venda);
        Service::editar(["total"=> $total, "id_venda"=>$id_venda], "id_venda", "venda");
    }
}