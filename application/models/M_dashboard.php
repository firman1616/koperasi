<?php
class M_dashboard extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }
  
  function trans_month() {
    return $this->db->query("SELECT
      SUM(grand_total) as total
    FROM
      tbl_transaksi
    WHERE
      MONTH(tgl_transaksi) = MONTH(CURRENT_DATE)
      AND YEAR(tgl_transaksi) = YEAR(CURRENT_DATE)
      AND uang_bayar <> '0'")->row();
  }

  function trans_day() {
        return $this->db->query("SELECT
      SUM(grand_total) as total
    FROM
      tbl_transaksi
    WHERE
      DATE(tgl_transaksi) BETWEEN DATE_FORMAT(NOW(), '%Y-%m-01') AND CURDATE()
      AND uang_bayar <> 0")->row();
  }

  function count_anggota() {
    return $this->db->query("SELECT id from tbl_anggota")->num_rows();
  }
}