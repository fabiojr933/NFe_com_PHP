<?php

namespace app\controllers;

use app\core\Controller;
use app\core\Flash;
use app\models\service\ProdutoService;
use app\models\service\Service;

class ProdutoController extends Controller
{
    private $tabela = "produto";
    private $campo  = "id_produto";


    public function index()
    {
        $dados["lista"] = Service::lista($this->tabela);
        $dados["view"]  = "Produto/Index";
        $this->load("template", $dados);
    }

    public function create()
    {
        $dados["cfops"] = Service::lista("cfop");
        $dados["unidades"] = Service::lista("unidade");
        $dados["produto"] = Flash::getForm();
        $dados["view"] = "Produto/Create";
        $this->load("template", $dados);
    }

    public function edit($id)
    {
        $produto = Service::get($this->tabela, $this->campo, $id);
        if (!$produto) {
            $this->redirect(URL_BASE . "produto");
        }

        $dados["produto"] = $produto;
        $dados["cfops"] = Service::lista("cfop");
        $dados["unidades"] = Service::lista("unidade");
        $dados["view"]      = "Produto/Create";
        $this->load("template", $dados);
    }
    public function salvar(){
        $produto = new \stdClass();

        $produto->id_produto = $_POST["id_produto"];
        $produto->produto = $_POST["produto"];
        $produto->id_unidade = $_POST["id_unidade"];
        $produto->preco = $_POST["preco"];
        $produto->cfop = $_POST["cfop"];
        $produto->extipi = $_POST["extipi"];
        $produto->gtin = $_POST["gtin"];
        $produto->ncm = $_POST["ncm"];
        $produto->cest = $_POST["cest"];
        $produto->cbenef = $_POST["cbenef"];
        $produto->mva = $_POST["mva"];
        $produto->nfci = $_POST["nfci"];

        Flash::setForm($produto);
        $retorno = ProdutoService::salvar($produto, $this->campo, $this->tabela);
        if($retorno->resultado){
            $this->redirect(URL_BASE."produto");
        }else{
            if($produto->id_produto){
                $this->redirect(URL_BASE."produto/edit/".$produto->id_produto);
            }else{
                $this->redirect(URL_BASE."produto/create");
            }
        }
    }


    public function excluir($id)
    {
        Service::excluir($this->tabela, $this->campo, $id);
        $this->redirect(URL_BASE . "produto");
    }
}
