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
        'status' => 1,
        'nominal' => 200000
      ], ['anggota_id' => (int)$anggota_id, 'periode' => $periode]);
    } else {
      // Jika belum ada, insert data baru
      return $this->db->insert('tbl_iuran', [
        'anggota_id' => (int)$anggota_id,
        'periode' => $periode,
        'date' => $date,
        'status' => 1,
        'nominal' => 200000
      ]);
    }
  }

  public function insert_deposit($data)
  {
    return $this->db->insert('tbl_deposit', $data);
  }

  public function get_total_deposit_by_periode($periode)
  {
    $this->db->select('SUM(nominal) as total');
    $this->db->from('tbl_deposit');
    $this->db->where("DATE_FORMAT(date, '%m%y') =", $periode); // Filter berdasarkan periode my
    $query = $this->db->get();

    if ($query->num_rows() > 0) {
      return $query->row()->total;
    }
    return 0; // Jika tidak ada data, kembalikan 0
  }

  public function update_keuangan($kategori_id, $periode, $data)
  {
    $this->db->where('kategori_keuangan', $kategori_id);
    $this->db->where('periode', $periode); // Filter berdasarkan periode saat ini
    return $this->db->update('tbl_keuangan', $data);
  }


  public function get_total_iuran_by_periode($periode)
  {
    $this->db->select('SUM(nominal) as total');
    $this->db->from('tbl_iuran');
    $this->db->where("DATE_FORMAT(date, '%m%y') =", $periode); // Filter berdasarkan periode (my)
    $this->db->where('status', '1'); // Tambahkan filter status = '1'
    $query = $this->db->get();

    if ($query->num_rows() > 0) {
      return $query->row()->total;
    }
    return 0; // Jika tidak ada data, kembalikan 0
  }


  public function update_keuangan_iuran($kategori_id, $periode, $data)
  {
    $this->db->where('kategori_keuangan', $kategori_id);
    $this->db->where('periode', $periode); // Filter berdasarkan periode saat ini
    return $this->db->update('tbl_keuangan', $data);
  }
}
