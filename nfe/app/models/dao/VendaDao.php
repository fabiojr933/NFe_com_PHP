<?php
namespace app\models\dao;
use app\core\Model;

class VendaDao extends Model{
    public function lista(){
        $sql = "SELECT * FROM venda a join cliente b on a.id_cliente = b.id_cliente";
        return $this->select($this->db, $sql);
    }
    public function getVenda($id){
        $sql = "SELECT * FROM venda a 
           join cliente b on a.id_cliente = b.id_cliente
           where a.id_venda = $id";
        return $this->select($this->db, $sql, false);
    }
    public function finalizar($id){
         $sql = "UPDATE VENDA A SET FINALIZADA = 'S' WHERE A.ID_VENDA = $id";
         $qry = $this->db->prepare($sql);
         $qry->execute();
    }
    public function existeItem($id_nfe, $id_produto){
        $sql = "SELECT  *
                    FROM nfe_item a 
                    where a.cProd = $id_produto
                    and a.id_nfe = $id_nfe ";
        return $this->select($this->db, $sql, false);
    }
    public function listaCliente($id_cliente){
        $sql = "SELECT * FROM cliente a 
           where a.id_cliente = $id_cliente";
        return $this->select($this->db, $sql, false);
    }

} 