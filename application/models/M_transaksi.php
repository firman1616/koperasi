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
  

}