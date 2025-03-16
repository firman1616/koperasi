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
        tt.pelanggan_id,
        tt.tgl_transaksi,
        tt.lainnya,
        ta.name AS cust,
        tt.metode_bayar
    FROM
        tbl_transaksi tt
    LEFT JOIN 
        tbl_anggota ta ON ta.id = tt.pelanggan_id
    left join tbl_dtl_trans tdt on tdt.head_trans = tt.id
    left join tbl_barang tb on tb.kode_barang  = tdt.kode_barang 
    WHERE
        DATE(tt.tgl_transaksi) >= '$date_start'
        AND DATE(tt.tgl_transaksi) <= '$date_end'
        and tt.metode_bayar = '1'
    group by
        tt.id,
        tt.no_transaksi,
        tt.grand_total,
        tt.tgl_transaksi,
        tt.lainnya,
        ta.name
    order by date(tt.tgl_transaksi) desc");
    return $query;
  }

  function export_excel_penjualan($date_start, $date_end)
  {
    $query = $this->db->query("SELECT
        tt.id,
        tt.no_transaksi,
        tt.grand_total,
        tt.pelanggan_id,
        tt.tgl_transaksi,
        tt.lainnya,
        ta.name AS cust,
        tb.kode_barang,
        tb.nama_barang,
        tdt.qty 
    FROM
        tbl_transaksi tt
    LEFT JOIN 
        tbl_anggota ta ON ta.id = tt.pelanggan_id
    left join tbl_dtl_trans tdt on tdt.head_trans = tt.id
    left join tbl_barang tb on tb.kode_barang  = tdt.kode_barang
    WHERE
        DATE(tt.tgl_transaksi) >= '$date_start'
        AND DATE(tt.tgl_transaksi) <= '$date_end'
        and tt.metode_bayar = '1'");
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

  function lap_iuran($bulan, $tahun)
  {
    return $this->db->query("SELECT 
        ti.anggota_id, 
        ti.date, 
        ti.periode, 
        ta.name AS nama_anggota, 
        ti.status 
    FROM tbl_iuran ti
    LEFT JOIN tbl_anggota ta ON ta.id = ti.anggota_id
    WHERE SUBSTRING(ti.periode, 1, 2) = '$bulan' 
    AND SUBSTRING(ti.periode, 3, 2) = '$tahun'");
  }

  function lap_barang()
  {
    return $this->db->query("SELECT tb.id, tb.kode_barang, tb.nama_barang, tb.qty  from tbl_barang tb");
  }

  function history_barang($id, $date_start, $date_end)
  {
    return $this->db->query("SELECT
      tb.id,
      tb.kode_barang,
      tb.nama_barang,
      tb.qty,
      thb.barang_id,
      thb.qty,
      thb.history_date
    from
      tbl_barang tb
    left join tbl_history_barang thb on
      thb.barang_id = tb.id
    where
      tb.id = '$id' and date(thb.history_date) >= '$date_start' and date(thb.history_date) <= '$date_end'");
  }
}
