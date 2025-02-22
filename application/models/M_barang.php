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
  

}