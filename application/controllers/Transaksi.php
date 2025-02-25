<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Transaksi extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        // if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2 && $this->session->userdata('level') != 3 && $this->session->userdata('level') != 4 && $this->session->userdata('level') != 5 && $this->session->userdata('level') != 7) {
        //     redirect(base_url("Login"));
        // }
        // $this->load->library('Pdf');
        $this->load->model('M_transaksi', 'trans');
    }

    public function index()
    {
        $data = [
            'title' => 'Data Transaksi',
            'subtitle' => 'List',
            'conten' => 'transaksi/index',
            'footer_js' => array('assets/js/transaksi.js'),
            'kd_trans' => $this->trans->kd_trans(),
            'barang' => $this->m_data->get_data('tbl_barang')->result()
        ];
        $this->load->view('template/conten', $data);
    }

    function tableTransaksi()
    {
        // $data['uom'] = $this->m_data->get_data('tbl_uom')->result();

        echo json_encode($this->load->view('transaksi/transaksi-table', false));
    }

    public function cari()
    {
        $kode = $_GET['kode'];
        $cari = $this->trans->cari($kode)->row_array();
        echo json_encode($cari);
    }

    public function get_barang()
    {
        $barcode = $this->input->get('barcode'); // Ambil barcode dari request
        $this->db->where('kode_barang', $barcode);
        $barang = $this->db->get('tbl_barang')->row_array();

        if ($barang) {
            echo json_encode([
                'kode_barang' => $barang['kode_barang'],
                'nama_barang' => $barang['nama_barang'],
                'harga_jual' => $barang['harga_jual'], // Pastikan harga ikut diambil
                'qty' => $barang['qty']
            ]);
        } else {
            echo json_encode([]);
        }
    }

    public function get_all_barang()
    {
        $this->db->select('id, kode_barang, nama_barang, qty');
        $this->db->from('tbl_barang');
        $this->db->where('status', 1); // Filter hanya barang dengan status = 1
        $barang = $this->db->get()->result();

        echo json_encode($barang);
    }

    public function proses_pembayaran()
    {
        $tanggal = $this->input->post('tanggal');
        $nama_pelanggan = $this->input->post('nama_pelanggan');
        $uang_dibayarkan = $this->input->post('uang_dibayarkan');
        $diskon = $this->input->post('diskon');
        $total_setelah_diskon = $this->input->post('total_setelah_diskon');

        // Simpan transaksi ke database
        $data_transaksi = [
            'tanggal' => $tanggal,
            'nama_pelanggan' => $nama_pelanggan,
            'total' => $total_setelah_diskon,
            'diskon' => $diskon,
            'uang_dibayarkan' => $uang_dibayarkan,
            'created_at' => date('Y-m-d H:i:s')
        ];

        $this->db->insert('transaksi', $data_transaksi);

        if ($this->db->affected_rows() > 0) {
            echo json_encode(['status' => 'success']);
        } else {
            echo json_encode(['status' => 'error']);
        }
    }
}
