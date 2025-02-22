<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Barang extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        // if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2 && $this->session->userdata('level') != 3 && $this->session->userdata('level') != 4 && $this->session->userdata('level') != 5 && $this->session->userdata('level') != 7) {
        //     redirect(base_url("Login"));
        // }
        // $this->load->library('Pdf');
        $this->load->model('M_barang', 'barang');
    }
	
	public function index()
	{
		$data = [
			'title' => 'Data Barang',
            'subtitle' => 'List',
			'conten' => 'barang/index',
            'footer_js' => array('assets/js/barang.js')
		];
		$this->load->view('template/conten',$data);
	}

    function tableBarang()
    {
        $data['barang'] = $this->barang->get_data()->result();

        echo json_encode($this->load->view('barang/barang-table',$data,false));
    }

    function vtambah() {
        $data = [
			'title' => 'Tambah Data Barang',
            'subtitle' => 'Form Tambah Data',
			'conten' => 'barang/tambah-data',
            'uom' => $this->m_data->get_data('tbl_uom')->result(),
            // 'footer_js' => array('assets/js/peserta.js')
		];
		$this->load->view('template/conten',$data);
    }

    function tambah_data() {
        date_default_timezone_set('Asia/Jakarta');
        $table = 'tbl_barang';
        $data = [
            'kode_barang' => $this->input->post('kode_barang'),
            'nama_barang' => $this->input->post('nama_barang'),
            'harga_beli' => $this->input->post('harga_beli'),
            'harga_jual' => $this->input->post('harga_jual'),
            'margin' => $this->input->post('margin'),
            'qty' => $this->input->post('qty'),
            'uom' => $this->input->post('uom'),
            'tgl_update' => date('Y-m-d H:i:s'),
            'jenis' => '1'
        ];
        $this->m_data->simpan_data($table,$data);
        redirect('Barang');
    }

    function vedit($id)  {
        $data = [
			'title' => 'Edit Data',
            'subtitle' => 'List',
			'conten' => 'barang/edit-data',
            'uom' => $this->m_data->get_data('tbl_uom')->result(),
            'edit' => $this->m_data->get_data_by_id('tbl_barang', array('id' => $id))
            // 'footer_js' => array('assets/js/peserta.js')
		];
		$this->load->view('template/conten',$data);
    }

    function update_data($id) {
        date_default_timezone_set('Asia/Jakarta');
        $table = 'tbl_barang';
        $beli = $this->input->post('harga_beli');
        $jual = $this->input->post('harga_jual');
        $margin = $jual - $beli;
        $data = [
           'kode_barang' => $this->input->post('kode_barang'),
            'nama_barang' => $this->input->post('nama_barang'),
            'harga_beli' => $this->input->post('harga_beli'),
            'harga_jual' => $this->input->post('harga_jual'),
            'margin' => $margin,
            'qty' => $this->input->post('qty'),
            'uom' => $this->input->post('uom'),
            'tgl_update' => date('Y-m-d H:i:s'),
            // 'jenis' => '1'
        ];
        $where = array('id' => $id);
        $this->m_data->update_data($table,$data,$where);
        redirect('Barang');
    }

    function update_status($id)  {
        $table = 'tbl_barang';
        $data = array('status' => '0');
        $where = array('id' => $id);
        $this->m_data->update_data($table,$data,$where);
        redirect('Barang');
    }

    function delete_data($id)  {
        $table = 'tbl_anggota';
        $where = array('id' => $id);
        $this->m_data->hapus_data($table,$where);
        redirect('Peserta');
    }
}
