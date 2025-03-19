<?php
defined('BASEPATH') or exit('No direct script access allowed');

class PengeluaranLain extends CI_Controller
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
            'title' => 'Pengeluaran Keuangan',
            'subtitle' => 'List',
            'conten' => 'pengeluaranlain/index',
            'keluar' => $this->lain->kategori_keluar(),
            'sumber' => $this->lain->sumber_dana(),
            'footer_js' => array('assets/js/pengeluaranlain.js')
        ];
        $this->load->view('template/conten', $data);
    }

    function tablePengeluaranLain()
    {
        $data['pengeluaran'] = $this->lain->get_data_pengeluaran()->result();
        // $data['kateg'] = $this->lain->get_kateg_pemasukan();
        echo json_encode($this->load->view('pengeluaranlain/pengeluaran-lain-table',$data, false));
    }

    function store()
    {
        $id = $this->input->post('id');
        if ($id != null) {
            $table = 'tbl_pengeluaran';
            $dataupdate = [
                'kategori_id' => $this->input->post('kategori'),
                'sumber_dana_id' => $this->input->post('sumberdana'),
                'nominal' => $this->input->post('nominal'),
                'keterangan' => $this->input->post('keterangan')
            ];
            $where = array('id' => $id);
            $this->m_data->update_data($table, $dataupdate, $where);
        } else {
            $table = 'tbl_pengeluaran';
            $data = [
                'kategori_id' => $this->input->post('kategori'),
                'sumber_dana_id' => $this->input->post('sumberdana'),
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
        $table = 'tbl_pengeluaran';
        $where = array('id' => $id);
        $data = $this->m_data->get_data_by_id($table, $where)->row();
        echo json_encode($data);
    }

    function delete_data($id)
    {
        $table = 'tbl_pengeluaran';
        $where = array('id' => $id);
        $this->m_data->hapus_data($table, $where);
        redirect('PemasukanLain');
    }
}
