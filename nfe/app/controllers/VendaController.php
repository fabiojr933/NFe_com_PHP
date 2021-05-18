<?php

namespace app\controllers;

use app\core\Controller;
use app\models\dao\ItemVendaDao;
use app\models\service\ItemVendaService;
use app\models\service\NotaFiscalService;
use app\models\service\ProdutoService;
use app\models\service\Service;
use app\models\service\VendaService;

class VendaController extends Controller
{
    private $tabela = "venda";
    private $campo  = "id_venda";


    public function index()
    {
        $dados["vendas"] = VendaService::lista();
        $dados["view"]  = "Venda/Index";
        $this->load("template", $dados);
    }
    public function nfe()
    {
        $dados["nfe"] = NotaFiscalService::nfes();
        $dados["view"]  = "Venda/nfe";
        $this->load("template", $dados);
    }
    public function nfeAutorizada()
    {
        $dados["nfeAuto"] = NotaFiscalService::nfesAutorizada();
        $dados["view"]  = "Venda/nfeAutorizada";
        $this->load("template", $dados);
    }
    

    public function create()
    {
        $venda = Service::get($this->tabela, "finalizada", "N");
        if ($venda) {
            $this->redirect(URL_BASE . "venda/edit/" . $venda->id_venda);
        }
        $dados["clientes"] = Service::lista("cliente");
        $dados["view"]            = "Venda/Create";
        $this->load("template", $dados);
    }

    public function edit($id)
    {
        $dados["venda"] = VendaService::getVenda($id);
        $dados["itens"] = ItemVendaService::listaPorVenda($id);
        $dados["produtos"] = Service::lista("produto");
        $dados["view"]          = "Venda/Itens";
        $this->load("template", $dados);
    }
    public function salvar()
    {
        $venda = new \stdClass();
        $venda->id_venda   = $_POST["id_venda"];
        $venda->data_venda = $_POST["data_venda"];
        $venda->hora_venda = $_POST["hora_venda"];
        $venda->id_cliente = $_POST["id_cliente"];

        $id_venda = Service::inserir(objToArray($venda), $this->tabela);
        $this->redirect(URL_BASE . "venda/edit/" . $id_venda);
    }


    public function excluir($id)
    {
        Service::excluir("item_venda", $this->campo, $id);
        Service::excluir($this->tabela, $this->campo, $id);
        ItemVendaService::atualizarVenda($id);
        $this->redirect(URL_BASE . "venda");
    }

    public function excluirItens($id_venda)
    {
        Service::excluir("item_venda", $this->campo, $id_venda);
        ItemVendaService::atualizarVenda($id_venda);
        $this->redirect(URL_BASE . "venda/edit/" . $id_venda);
    }
    public function finalizar($id_venda)
    {        
        VendaService::finalizar($id_venda);
        $this->redirect(URL_BASE . "venda");
    }
}
