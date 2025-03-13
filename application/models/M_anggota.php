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
    $this->db->where('anggota_id', (int)$anggota_id);
    $this->db->where('periode', $periode);
    $query = $this->db->get('tbl_iuran');

    if ($query->num_rows() > 0) {
      // Jika sudah ada, lakukan update
      return $this->db->update('tbl_iuran', [
        'date' => $date,
        'status' => 1
      ], ['anggota_id' => (int)$anggota_id, 'periode' => $periode]);
    } else {
      // Jika belum ada, insert data baru
      return $this->db->insert('tbl_iuran', [
        'anggota_id' => (int)$anggota_id,
        'periode' => $periode,
        'date' => $date,
        'status' => 1
      ]);
    }
  }

  public function insert_deposit($data)
  {
    return $this->db->insert('tbl_deposit', $data);
  }
}
