<?php 
namespace app\models\validacao;

use app\core\Validacao;

class ProdutoValidacao{
    public static function salvar($produto){
        $validacao = new Validacao($produto);

        $validacao->setData("id_unidade", $produto->id_unidade);
        $validacao->setData("preco", $produto->preco);
        $validacao->setData("cfop", $produto->cfop);
        $validacao->setData("ncm", $produto->ncm);

        $validacao->getData("id_unidade")->isVazio();
        $validacao->getData("preco")->isVazio();
        $validacao->getData("cfop")->isVazio();
        $validacao->getData("ncm")->isVazio();

        return $validacao;
    }
}