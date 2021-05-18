<?php

namespace app\models\validacao;

use app\core\Validacao;

class ClienteValidacao
{
    public static function salvar($cliente)
    {
        $validacao = new Validacao($cliente);

        $validacao->setData("nome", $cliente->nome);
        $validacao->setData("fone", $cliente->fone);
        $validacao->setData("cep", $cliente->cep);    

        $validacao->getData("nome")->isVazio();         
        $validacao->getData("fone")->isVazio();
        $validacao->getData("cep")->isVazio();

        return $validacao;
    }
}
