<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Peserta extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2 && $this->session->userdata('level') != 3) {
            redirect(base_url("Login"));
        }
        // $this->load->library('Pdf');
        $this->load->model('M_anggota', 'anggota');
    }

    public function index()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Data Peserta',
            'subtitle' => 'List',
            'conten' => 'peserta/index',
            'footer_js' => array('assets/js/peserta.js')
        ];
        $this->load->view('template/conten', $data);
    }

    function tablePeserta()
    {
        $data['anggota'] = $this->anggota->get_data()->result();

        echo json_encode($this->load->view('peserta/peserta-table', $data, false));
    }

    function vtambah()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Tambah Data Peserta',
            'subtitle' => 'Form Tambah Data',
            'conten' => 'peserta/tambah-data',
            // 'footer_js' => array('assets/js/peserta.js')
        ];
        $this->load->view('template/conten', $data);
    }

    function tambah_data()
    {
        $table = 'tbl_anggota';
        $data = [
            'no_agt' => $this->input->post('no_anggota'),
            'name' => $this->input->post('nama_anggota'),
            'jk' => $this->input->post('jenis_kelamin'),
            'binbinti' => $this->input->post('binbinti'),
            'tmp_lahir' => $this->input->post('tempat_lahir'),
            'tgl_lahir' => $this->input->post('tgl_lahir'),
            'nik' => $this->input->post('nik'),
            'alamat' => $this->input->post('alamat'),
            'kongsi2' => $this->input->post('kongsi1'),
            'kongsi1' => $this->input->post('kongsi2'),
            'kongsi3' => $this->input->post('kongsi3'),
            'no_telp' => $this->input->post('phone')
        ];
        $this->m_data->simpan_data($table, $data);
        redirect('Peserta');
    }

    function vedit($id)
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Edit Data',
            'subtitle' => 'List',
            'conten' => 'peserta/edit-data',
            'edit' => $this->m_data->get_data_by_id('tbl_anggota', array('id' => $id))
            // 'footer_js' => array('assets/js/peserta.js')
        ];
        $this->load->view('template/conten', $data);
    }

    function update_data($id)
    {
        $table = 'tbl_anggota';
        $data = [
            'no_agt' => $this->input->post('no_anggota'),
            'name' => $this->input->post('nama_anggota'),
            'jk' => $this->input->post('jenis_kelamin'),
            'binbinti' => $this->input->post('binbinti'),
            'tmp_lahir' => $this->input->post('tempat_lahir'),
            'tgl_lahir' => $this->input->post('tgl_lahir'),
            'nik' => $this->input->post('nik'),
            'alamat' => $this->input->post('alamat'),
            'kongsi2' => $this->input->post('kongsi1'),
            'kongsi1' => $this->input->post('kongsi2'),
            'kongsi3' => $this->input->post('kongsi3'),
            'no_telp' => $this->input->post('phone')
        ];
        $where = array('id' => $id);
        $this->m_data->update_data($table, $data, $where);
        redirect('Peserta');
    }

    function delete_data($id)
    {
        $table = 'tbl_anggota';
        $where = array('id' => $id);
        $this->m_data->hapus_data($table, $where);
        redirect('Peserta');
    }

    public function simpanIuran()
    {
        $anggota_id = $this->input->post('anggota_id');

        if (!$anggota_id) {
            echo json_encode(["message" => "ID Anggota tidak ditemukan"]);
            return;
        }

        $data_iuran = [
            'anggota_id' => $anggota_id,
            'nominal' => 200000,
            'date' => date('Y-m-d H:i:s')
        ];

        // Insert data ke tbl_iuran
        $this->db->insert('tbl_iuran', $data_iuran);

        // Update status iuran di tbl_anggota menjadi 2
        $this->db->where('id', $anggota_id);
        $this->db->update('tbl_anggota', ['status_iuran' => 2]);

        echo json_encode(["message" => "Iuran berhasil disimpan"]);
    }

    function iuran()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Iuran',
            'subtitle' => 'List',
            'conten' => 'iuran/index',
            'footer_js' => array('assets/js/peserta.js')
        ];
        $this->load->view('template/conten', $data);
    }

    public function get_iuran_data()
    {
        $this->db->select("a.id, a.name, b.periode, b.status");
        $this->db->from("tbl_anggota a");
        $this->db->join("tbl_iuran b", "a.id = b.anggota_id", "left");
        $this->db->where("a.id !=", 117);
        $query = $this->db->get();
        $result = $query->result();

        // Ubah hasil query menjadi format yang bisa digunakan di View
        $iuran_data = [];
        foreach ($result as $row) {
            if (!isset($iuran_data[$row->id])) {
                $iuran_data[$row->id] = (object) [
                    'id' => $row->id,
                    'name' => $row->name,
                    'iuran_status' => [] // Simpan status pembayaran
                ];
            }
            if ($row->periode) {
                $iuran_data[$row->id]->iuran_status[$row->periode] = $row->status;
            }
        }

        return array_values($iuran_data);
    }


    function tableIuran()
    {
        $data['iuran'] = $this->get_iuran_data();
        // $this->anggota->get_data()->result();

        echo json_encode($this->load->view('iuran/iuran-table', $data, false));
    }

    public function update_iuran()
    {
        log_message('debug', 'Request diterima: ' . json_encode($this->input->post()));
        $anggota_id = $this->input->post('anggota_id');
        $periode = $this->input->post('periode');
        $date = $this->input->post('date'); // Waktu real-time dari PC pengguna

        if ($this->anggota->update_iuran($anggota_id, $periode, $date)) {
            echo json_encode(["status" => "success"]);
        } else {
            echo json_encode(["status" => "error"]);
        }
    }
}
