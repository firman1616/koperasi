<?php
class M_lainlain extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }

  function get_kateg_pemasukan()
  {
    return $this->db->query("SELECT * FROM tbl_kateg_trans WHERE kategori_id = '1' AND id in ('1','2','3')");
  }

  public function insert_pemasukan($data)
  {
    return $this->db->insert('tbl_pemasukan', $data);
  }

  function get_data_pemasukan()
  {
    return $this->db->query('SELECT tp.id, tp.kategori_id, tp.nominal, tp.date, tp.keterangan, tkt.name as kateg from tbl_pemasukan tp 
    left join tbl_kateg_trans tkt on tkt.id = tp.kategori_id');
  }

  public function update_pemasukan($id, $data)
  {
    $this->db->where('id', $id);
    return $this->db->update('tbl_pemasukan', $data);
  }
}
