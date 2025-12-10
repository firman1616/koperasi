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
      $last_code = $query->row()->kd_trans;
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

  public function insert_jbbt($data)
  {
    $this->db->insert("tbl_jbbt", $data);
    return $this->db->insert_id();
  }

  public function insert_detail($data)
  {
    return $this->db->insert_batch("tbl_dtl_jbbt", $data);
  }

  function get_jbbt()
  {
    return $this->db->query("SELECT 
        j.*,
        b.nama_barang
    FROM tbl_jbbt j
    LEFT JOIN tbl_barang b 
          ON j.barang_id = b.id
    ORDER BY j.id DESC;");
  }

  public function get_detail_grouped()
  {
    $query = $this->db->query("
        SELECT 
            d.id,
            d.jbbt_id,
            d.tgl_japo,
            d.nominal_bayar,
            d.status
        FROM tbl_dtl_jbbt d
        ORDER BY d.jbbt_id, d.tgl_japo ASC
    ");

    $result = $query->result();

    // kelompokkan berdasarkan jbbt_id
    $grouped = [];
    foreach ($result as $row) {
      $grouped[$row->jbbt_id][] = $row;
    }

    return $grouped;
  }
}
