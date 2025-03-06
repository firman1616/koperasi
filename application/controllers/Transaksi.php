<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Transaksi extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 3) {
            redirect(base_url("Login"));
        }
        // $this->load->library('Pdf');
        $this->load->model('M_transaksi', 'trans');
    }

    public function index()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'id_user' => $this->session->userdata('id'),
            'title' => 'Data Transaksi',
            'subtitle' => 'List',
            'conten' => 'transaksi/index',
            'footer_js' => array('assets/js/transaksi.js'),
            'kd_trans' => $this->trans->kd_trans(),
            'id_akhir' => $this->trans->id_akhir(),
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

    public function get_anggota()
    {
        $anggota = $this->trans->get_all_anggota();
        echo json_encode($anggota);
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
        $diskon = $this->input->post('diskon');
        $total_bayar = $this->input->post('total_setelah_diskon');
        $uang_dibayarkan = $this->input->post('uang_dibayarkan');
        $uang_kembali = $uang_dibayarkan - $total_bayar;
        $anggota_id = $this->input->post('anggota_id');
        $extra_value = $this->input->post('extra_value');
        $metode_bayar = $this->input->post('metode_bayar');
        $kasir = $this->input->post('id_user');

        // Data transaksi utama
        $data_transaksi = [
            'no_transaksi' => $this->input->post('kd_trans'), // Sementara NULL, nanti diperbarui dengan ID
            'diskon' => $diskon,
            'grand_total' => $total_bayar,
            'uang_bayar' => $uang_dibayarkan,
            'uang_kembali' => $uang_kembali,
            'tgl_transaksi' => $tanggal,
            'pelanggan_id' => $anggota_id,
            'lainnya' => ($anggota_id == 117) ? $extra_value : null,
            'metode_bayar' => $metode_bayar,
            'kasir_id' => $kasir,
        ];

        // Ambil data barang dari frontend
        $barang = $this->input->post('barang'); // Array barang yang dikirim dari frontend
        $data_detail = [];

        foreach ($barang as $item) {
            $data_detail[] = [
                'kode_barang' => $item['barcode'],
                'qty' => $item['jumlah'],
                'total_harga' => $item['harga']
            ];
        }

        // Simpan transaksi dan detailnya
        $result = $this->trans->insert_transaksi($data_transaksi, $data_detail);

        // Kurangi stok barang
        foreach ($barang as $item) {
            $this->trans->kurangi_stok($item['barcode'], $item['jumlah']);
        }

        if ($result) {
            echo json_encode(['status' => 'success']);
        } else {
            echo json_encode(['status' => 'error']);
        }
    }

    function list_trans()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Daftar Transaksi',
            'subtitle' => 'Lits',
            'conten' => 'list-transaksi/index',
            'footer_js' => array('assets/js/list-trans.js'),
        ];
        $this->load->view('template/conten', $data);
    }

    function tableListTrans()
    {
        $data['list'] = $this->trans->list_trans()->result();
        echo json_encode($this->load->view('list-transaksi/list-trans-table', $data, false));
    }

    function cetak_struk($id)
    {
        $data = [
            'header' => $this->trans->head_trans($id)->result(),
            'detail' => $this->trans->detail_trans($id)->result()
        ];
        $this->load->view('transaksi/cetak_trans', $data);
    }

    // section tempo
    function trans_tempo()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Data Transaksi Tempo',
            'subtitle' => 'List',
            'conten' => 'tempo/index',
            'footer_js' => array('assets/js/transaksi.js'),
        ];
        $this->load->view('template/conten', $data);
    }

    function tableTempo()
    {
        $data['tempo'] = $this->trans->get_tempo()->result();
        echo json_encode($this->load->view('tempo/tempo-table', $data, false));
    }

    public function updatePembayaran()
    {
        date_default_timezone_set('Asia/Jakarta');

        $id_transaksi = $this->input->post('id_transaksi'); // Ambil ID transaksi dari form
        if (!$id_transaksi) {
            echo json_encode(['status' => 'error', 'message' => 'ID Transaksi tidak ditemukan!']);
            return;
        }

        $data = [
            'uang_bayar'     => $this->input->post('uang_bayar'),
            'uang_kembali'   => $this->input->post('uang_kembali'),
            'tgl_transaksi'  => date('Y-m-d H:i:s'), // Format waktu saat ini
            'metode_bayar'   => 1 // Set metode bayar ke 1
        ];

        $update = $this->trans->updateTransaksi($id_transaksi, $data); // Pastikan model dipanggil dengan benar

        if ($update) {
            echo json_encode(['status' => 'success', 'message' => 'Pembayaran Tempo Lunas!']);
        } else {
            echo json_encode(['status' => 'error', 'message' => 'Gagal melakukan pembayaran Tempo!']);
        }
    }
}
