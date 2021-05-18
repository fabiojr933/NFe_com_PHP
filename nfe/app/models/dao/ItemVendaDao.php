<?php
namespace app\models\dao;
use app\core\Model;

class ItemVendaDao extends Model{
    public function listaPorVenda($id_venda){
        $sql = "SELECT * FROM item_venda a 
        join produto b on a.id_produto = b.id_produto
        join unidade c on b.id_unidade = c.id_unidade
        where a.id_venda = $id_venda";
        return $this->select($this->db, $sql);
    }
}