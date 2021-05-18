<?php
namespace app\models\dao;

use app\core\Model;

class NotaFiscalDao extends Model{
    public function lista(){
        $sql = "SELECT * FROM NFE A
                    JOIN NFE_DESTINATARIO D ON  A.ID_NFE= D.ID_NFE";
        return $this->select($this->db, $sql);
    }
    public function getNotaFiscal($id_nfe){
        $sql = "SELECT * 
                FROM nfe a
                JOIN nfe_destinatario B ON A.id_nfe = B.id_nfe               
                WHERE A.id_nfe = $id_nfe";
        return $this->select($this->db, $sql, false);
    }
    public function getNotaFiscalItem($id_nfe){
        $sql = "SELECT * 
                FROM nfe_item a               
                WHERE A.id_nfe = $id_nfe";
        return $this->select($this->db, $sql);
    }
    public function salvarChave($id_nfe, $chave){
        $sql = "UPDATE NFE A SET 
                A.CHAVE = $chave,
                A.ID_STATUS = '2' 
                WHERE A.ID_NFE = $id_nfe";
        return $this->db->query($sql);
    }
    public function configuracao(){
        $sql = "SELECT * FROM configuracao";
        return $this->select($this->db, $sql, false);
    }
    public function mudarStatus($id_nfe, $status){
        $sql = "UPDATE NFE A SET 
                A.ID_STATUS = $status
                WHERE A.ID_NFE = $id_nfe";
        return $this->db->query($sql);
    }
    public function nfes(){
        $sql = "SELECT * FROM nfe a
                     join nfe_destinatario b on a.id_nfe = b.id_nfe  where a.id_status <> '5'";
        return $this->select($this->db, $sql);
    }
    public function nfesAutorizada(){
        $sql = "SELECT * FROM nfe a
                     join nfe_destinatario b on a.id_nfe = b.id_nfe  where a.id_status = '5'";
        return $this->select($this->db, $sql);
    }
    public function salvaRecibo($id_nfe, $recibo, $status){
        $sql = "UPDATE NFE A SET 
                A.RECIBO = $recibo,
                A.ID_STATUS = $status
                WHERE A.ID_NFE = $id_nfe";
        return $this->db->query($sql);
    }
    public function salvaProtocolo($id_nfe, $protocolo, $status){
        $sql = "UPDATE NFE A SET 
                A.PROTOCOLO = $protocolo,
                A.ID_STATUS = $status
                WHERE A.ID_NFE = $id_nfe";
        return $this->db->query($sql);
    }
}