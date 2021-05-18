<?php
namespace app\models\service;

use app\models\dao\VendaDao;

class VendaService{
    public static function lista(){
        $dao = new VendaDao();
        return $dao->lista();
    }
    public static function getVenda($id){
        $dao = new VendaDao();
        return $dao->getVenda($id);
    }
    public static function finalizar($id){
        $dao = new VendaDao();
        return $dao->finalizar($id);
    }
    public static function existeItem($id_nfe, $id_produto){
        $dao = new VendaDao();
        return $dao->existeItem($id_nfe, $id_produto);
    }
}