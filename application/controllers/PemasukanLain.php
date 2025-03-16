<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PemasukanLain extends CI_Controller {

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
		$this->load->view('template/conten',$data);
	}

    function tablePemasukanLain()
    {
        $data['pemasukan'] = $this->lain->get_data_pemasukan()->result();
        $data['kateg'] = $this->lain->get_kateg_pemasukan();
        echo json_encode($this->load->view('pemasukanlain/pemasukan-lain-table',$data,false));
    }

    public function simpan() {
        // Tangkap data dari AJAX
        $data = [
            'kategori_id' => $this->input->post('kategori_id'),
            'nominal'     => $this->input->post('nominal'),
            'keterangan'  => $this->input->post('keterangan'),
            'date'        => date('Y-m-d') // Tanggal otomatis
        ];

        // Simpan ke database
        $insert = $this->lain->insert_pemasukan($data);

        if ($insert) {
            echo json_encode(["status" => "success"]);
        } else {
            echo json_encode(["status" => "error"]);
        }
    }

    public function update()
{ 
    $id = $this->input->post('edit_id');
    $data = [
        'kategori_id' => $this->input->post('edit_kategori'),
        'nominal' => $this->input->post('edit_nominal'),
        'keterangan' => $this->input->post('edit_keterangan'),
        'date' => date('Y-m-d') // Update tanggal ke hari ini
    ];

    $update = $this->lain->update_pemasukan()($id, $data);

    if ($update) {
        echo json_encode(['status' => 'success']);
    } else {
        echo json_encode(['status' => 'error']);
    }
}


    
}
