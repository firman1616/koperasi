<?php
defined('BASEPATH') or exit('No direct script access allowed');

class JBBT extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2 && $this->session->userdata('level') != 3) {
            redirect(base_url("Login"));
        }
        // $this->load->library('Pdf');
        // $this->load->model('M_JBBT', 'jbbt');
    }

    public function index()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Data JBBT',
            'subtitle' => 'List',
            'conten' => 'jbbt/index',
            'footer_js' => array('assets/js/jbbt.js')
        ];
        $this->load->view('template/conten', $data);
    }

    function tableJBBT()
    {
        // $data['anggota'] = $this->anggota->get_data()->result();

        echo json_encode($this->load->view('jbbt/jbbt-table', false));
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

}
