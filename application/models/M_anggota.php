<?php
class M_anggota extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }

  function get_data()
  {
    return $this->db->query("SELECT * FROM `tbl_anggota` WHERE name != 'lainnya'");
  }

  public function update_iuran($anggota_id, $periode, $date)
  {
    $data = [
      'anggota_id' => $anggota_id,
      'periode' => $periode,
      'date' => $date,
      'status' => 1
    ];

    // Cek apakah data sudah ada untuk periode ini
    $this->db->where('anggota_id', $anggota_id);
    $this->db->where('periode', $periode);
    $query = $this->db->get('tbl_iuran');

    if ($query->num_rows() > 0) {
      // Jika sudah ada, update kolom tanggal_bayar, date, dan status
      $this->db->where('anggota_id', $anggota_id);
      $this->db->where('periode', $periode);
      return $this->db->update('tbl_iuran', [
        'date' => $date,
        'status' => 1
      ]);
    } else {
      // Jika belum ada, insert data baru
      return $this->db->insert('tbl_iuran', $data);
    }
  }
}
