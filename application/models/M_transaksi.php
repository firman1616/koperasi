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
    $kodetampil = "TRX-" . $date . "-" . $batas;
    return $kodetampil;
  }

  public function insert_transaksi($data_transaksi, $data_detail)
  {
    $this->db->trans_start(); // Memulai transaksi database

    // Insert ke tbl_transaksi
    $this->db->insert('tbl_transaksi', $data_transaksi);
    $id_transaksi = $this->db->insert_id(); // Ambil ID transaksi yang baru dibuat

    // Update nota dengan ID transaksi yang sama
    $this->db->where('id', $id_transaksi);
    $this->db->update('tbl_transaksi', ['id' => $id_transaksi]);

    // Insert ke tbl_dtl_trans
    foreach ($data_detail as &$detail) {
      $detail['head_trans'] = $id_transaksi; // Tambahkan ID transaksi ke setiap detail
    }
    $this->db->insert_batch('tbl_dtl_trans', $data_detail); // Insert banyak data sekaligus

    $this->db->trans_complete(); // Selesaikan transaksi

    return $this->db->trans_status(); // Mengembalikan status transaksi (true/false)
  }

  public function kurangi_stok($barcode, $jumlah)
  {
    $this->db->set('qty', 'qty - ' . (int) $jumlah, FALSE);
    $this->db->where('kode_barang', $barcode);
    $this->db->update('tbl_barang');
  }

  public function get_all_anggota()
  {
    return $this->db->select('id, name')
      ->from('tbl_anggota')
      ->get()
      ->result();
  }
}
