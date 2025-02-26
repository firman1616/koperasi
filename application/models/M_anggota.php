<?php
class M_anggota extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }
  
  function get_data() {
    return $this->db->query("SELECT * FROM `tbl_anggota` WHERE name != 'lainnya'");
  }
}