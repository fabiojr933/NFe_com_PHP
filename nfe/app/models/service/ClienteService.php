<?php
namespace app\models\service;

use app\models\dao\VendaDao;
use app\models\validacao\ClienteValidacao;

class ClienteService{
    public static function salvar($cliente, $campo, $tabela){
        $validacao = ClienteValidacao::salvar($cliente);
        return Service::salvar($cliente, $campo, $validacao->listaErros(), $tabela);
    }
    public static function listaCliente($id_cliente){
        $dao = new VendaDao();
        return $dao->listaCliente($id_cliente);
    }
}