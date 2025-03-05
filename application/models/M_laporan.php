<?php
class M_laporan extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }

  public function lap_trans($date_start, $date_end)
  {
    $query = $this->db->query("SELECT
        tt.id,
        tt.no_transaksi,
        tt.grand_total,
        tt.tgl_transaksi,
        tt.pelanggan_id,
        tt.lainnya,
        ta.name AS cust,
        tdt.kode_barang,
        tdt.qty,
        tb.nama_barang 
    FROM
        tbl_transaksi tt
    LEFT JOIN 
        tbl_anggota ta ON ta.id = tt.pelanggan_id
    left join tbl_dtl_trans tdt on tdt.head_trans = tt.id
    left join tbl_barang tb on tb.kode_barang  = tdt.kode_barang 
    WHERE
        DATE(tt.tgl_transaksi) >= '$date_start'
        AND DATE(tt.tgl_transaksi) <= '$date_end'");
    return $query;
  }

  public function lap_det_trans($id)
  {
    $query = $this->db->query("SELECT
        tdt.head_trans,
        tdt.kode_barang,
        tb.nama_barang, 
        tdt.qty
    FROM tbl_dtl_trans tdt
    LEFT JOIN tbl_barang tb ON tb.kode_barang = tdt.kode_barang 
    WHERE tdt.head_trans = ?", [$id]);
    return $query;
  }
}
