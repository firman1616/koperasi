<?php
class M_laporan extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }
  
  function lap_trans() {
    return $this->db->query("SELECT
        tt.no_transaksi,
        tt.grand_total,
        tt.tgl_transaksi,
        tt.pelanggan_id,
        tt.lainnya,
        ta.name AS cust
    FROM
        tbl_transaksi tt
    LEFT JOIN 
        tbl_anggota ta ON ta.id = tt.pelanggan_id
    WHERE
        tt.tgl_transaksi BETWEEN '2025-02-28' AND '2025-03-03'
");
  }
}