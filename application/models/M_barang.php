<?php
class M_barang extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }
  
  function get_data()  {
    return $this->db->query("SELECT * FROM tbl_barang WHERE status = '1'");
  }

  public function kd_barang()
  {
    $this->db->select('RIGHT(tbl_barang.id,5) as kode_barang', FALSE);
    $this->db->order_by('id', 'DESC');
    $this->db->limit(1);
    $query = $this->db->get('tbl_barang');
    if ($query->num_rows() <> 0) {
      $data = $query->row();
      $kode = intval($data->kode_barang) + 1;
    } else {
      $kode = 1;
    }
    $date = date('ym');
    $batas = str_pad($kode, 4, "0", STR_PAD_LEFT);
    $kodetampil = "BRG-" . $date . "-" . $batas;
    return $kodetampil;
  }
  

}