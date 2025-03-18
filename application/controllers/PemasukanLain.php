<?php
defined('BASEPATH') or exit('No direct script access allowed');

class PemasukanLain extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2) {
            redirect(base_url("Login"));
        }
        // $this->load->library('Pdf');
        $this->load->model('M_lainlain', 'lain');
    }

    public function index()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Pemasukan Lain - lain',
            'subtitle' => 'List',
            'conten' => 'pemasukanlain/index',
            'kateg' => $this->lain->get_kateg_pemasukan(),
            'footer_js' => array('assets/js/pemasukanlain.js')
        ];
        $this->load->view('template/conten', $data);
    }

    function tablePemasukanLain()
    {
        $data['pemasukan'] = $this->lain->get_data_pemasukan()->result();
        $data['kateg'] = $this->lain->get_kateg_pemasukan();
        echo json_encode($this->load->view('pemasukanlain/pemasukan-lain-table', $data, false));
    }

    function store()
    {
        $id = $this->input->post('id');
        if ($id != null) {
            $table = 'tbl_pemasukan';
            $dataupdate = [
                'kategori_id' => $this->input->post('kategori'),
                'nominal' => $this->input->post('nominal'),
                'keterangan' => $this->input->post('keterangan')
            ];
            $where = array('id' => $id);
            $this->m_data->update_data($table, $dataupdate, $where);
        } else {
            $table = 'tbl_pemasukan';
            $data = [
                'kategori_id' => $this->input->post('kategori'),
                'nominal' => $this->input->post('nominal'),
                'date' => date('Y-m-d'),
                'keterangan' => $this->input->post('keterangan')
            ];
            // $die(var_dump($data));
            $this->m_data->simpan_data($table, $data);
        }
    }

    function vedit($id)
    {
        $table = 'tbl_pemasukan';
        $where = array('id' => $id);
        $data = $this->m_data->get_data_by_id($table, $where)->row();
        echo json_encode($data);
    }

    function delete_data($id)
    {
        $table = 'tbl_pemasukan';
        $where = array('id' => $id);
        $this->m_data->hapus_data($table, $where);
        redirect('PemasukanLain');
    }
}
