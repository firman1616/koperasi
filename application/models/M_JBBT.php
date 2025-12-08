<?php
class M_JBBT extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }
  public function generate_kode_jbbt()
  {
    // format tanggal
    $date = date('ym');  // YYMMDD
    $prefix = "JBBT-" . $date . "-";

    // ambil kode terakhir berdasarkan bulan & tahun yang sama
    $this->db->like('kd_trans', $prefix);
    $this->db->select('kd_trans');
    $this->db->order_by('kd_trans', 'DESC');
    $this->db->limit(1);
    $query = $this->db->get('tbl_jbbt');

    if ($query->num_rows() > 0) {
      // ambil 5 digit terakhir
      $last_code = $query->row()->kode_trans;
      $last_number = intval(substr($last_code, -5));
      $next_number = $last_number + 1;
    } else {
      // jika bulan baru → reset counter ke 1
      $next_number = 1;
    }

    return $prefix . str_pad($next_number, 5, "0", STR_PAD_LEFT);
  }

  public function get_data_barang()
  {
    return $this->db->get_where('tbl_barang', ['status_barang' => 3])->result();
  }
}
