<?php
namespace app\models\validacao;

use app\core\Validacao;

class EmitenteValidacao{
    public static function salvar($emitente){
        $validacao = new Validacao($emitente);
        $validacao->setData("razao_social", $emitente->razao_social);
        $validacao->setData("ie", $emitente->ie);

        $validacao->getData("razao_social")->isVazio();
        $validacao->getData("ie")->isVazio();

        return $validacao;

    }
}