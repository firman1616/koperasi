<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Master_tempo extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2) {
            redirect(base_url("Login"));
        }
        // $this->load->library('Pdf');
        // $this->load->model('M_dashboard', 'dash');
    }

    public function index()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Master Tempo',
            'subtitle' => 'List',
            'conten' => 'master_tempo/index',
            'footer_js' => array('assets/js/master_tempo.js')
        ];
        $this->load->view('template/conten', $data);
    }

    function tableMasterTempo()
    {
        $data['mster_tempo'] = $this->m_data->get_data('tbl_master_tempo')->result();

        echo json_encode($this->load->view('master_tempo/master-tempo-table', $data, false));
    }

    function store()
    {
        $id = $this->input->post('id');
        if ($id != null) {
            $table = 'tbl_master_tempo';
            $dataupdate = [
                'tempo' => $this->input->post('bulan'),
                'prosentase' => $this->input->post('prosentase')
            ];
            $where = array('id' => $id);
            $this->m_data->update_data($table, $dataupdate, $where);
        } else {
            $table = 'tbl_master_tempo';
            $data = [
                'tempo' => $this->input->post('bulan'),
                'prosentase' => $this->input->post('prosentase')
            ];
            // $die(var_dump($data));
            $this->m_data->simpan_data($table, $data);
        }
    }

    function vedit($id)
    {
        $table = 'tbl_master_tempo';
        $where = array('id' => $id);
        $data = $this->m_data->get_data_by_id($table, $where)->row();

        if (!$data) {
            exit(json_encode(['error' => 'Data tidak ditemukan']));
        }

        exit(json_encode($data));
    }
}
