<?php
namespace app\models\validacao;

use app\core\Validacao;

class ItemVendaValidacao{
    public static function salvar($item){
        $validacao = new Validacao($item);
        $validacao->setData("id_produto", $item->id_produto);
        $validacao->setData("id_venda", $item->id_venda);
        $validacao->setData("qtde", $item->qtde);
        $validacao->setData("valor", $item->valor);
        $validacao->setData("subtotal", $item->subtotal);

        $validacao->getData("id_produto")->isVazio();
        $validacao->getData("id_venda")->isVazio();
        $validacao->getData("qtde")->isVazio();
        $validacao->getData("valor")->isVazio();
        $validacao->getData("subtotal")->isVazio();

        return $validacao;
    }
}