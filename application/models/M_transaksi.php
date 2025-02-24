<?php
class M_transaksi extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }

  function cari($id)
  {
    return $this->db->query("SELECT * FROM `tbl_barang` WHERE id = '$id'");
  }

  public function kd_trans()
  {
    $this->db->select('RIGHT(tbl_transaksi.id,5) as kode_transaksi', FALSE);
    $this->db->order_by('id', 'DESC');
    $this->db->limit(1);
    $query = $this->db->get('tbl_transaksi');
    if ($query->num_rows() <> 0) {
      $data = $query->row();
      $kode = intval($data->kode_transaksi) + 1;
    } else {
      $kode = 1;
    }
    $date = date('ym');
    $batas = str_pad($kode, 4, "0", STR_PAD_LEFT);
    $kodetampil = "TRX-".$date."-". $batas;
    return $kodetampil;
  }

}
