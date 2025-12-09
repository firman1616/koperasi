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
        $this->load->model('M_JBBT', 'jbbt');
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
            'title' => 'Tambah Data Transaksi',
            'subtitle' => 'Form Tambah Data',
            'conten' => 'jbbt/tambah-data',
            'kode' => $this->jbbt->generate_kode_jbbt(),
            'barang' => $this->jbbt->get_data_barang(),
            'tenor' => $this->m_data->get_data('tbl_master_tempo'),
            'footer_js' => array('assets/js/jbbt.js')
        ];
        $this->load->view('template/conten', $data);
    }

    public function get_prosentase_tempo()
    {
        $tempo = $this->input->post('tempo');
        $data = $this->db->get_where('tbl_master_tempo', ['tempo' => $tempo])->row();
        $prosentase = $data ? $data->prosentase : 0;

        echo json_encode([
            'prosentase' => $prosentase
        ]);
    }


    public function simpan()
    {
        $this->load->model('M_jbbt');

        $data = [
            'tgl_trans'         => $this->input->post('tgl_trans'),
            'kd_trans'          => $this->input->post('kd_trans'),
            'nama_pembeli'      => $this->input->post('nama_pembeli'),
            'barang_id'         => $this->input->post('barang_id'),
            'harga_modal'       => intval($this->input->post('harga_modal')),
            'harga_jual'        => intval($this->input->post('harga_jual')),
            'tempo'             => intval($this->input->post('tempo')),
            'prosentase'        => intval($this->input->post('prosentase')),
            'total_bayar'       => intval($this->input->post('total_bayar')),
            'uang_muka'         => intval($this->input->post('uang_muka')),
            'cicilan_per_bulan' => intval($this->input->post('cicilan_per_bulan')),
            'sisa_bayar'        => intval($this->input->post('sisa_bayar')),
        ];

        // insert ke tbl_jbbt
        $jbbt_id = $this->M_jbbt->insert_jbbt($data);

        // gagal insert
        if (!$jbbt_id) {
            echo json_encode(["status" => "error", "message" => "Gagal menyimpan JBBT"]);
            return;
        }

        // INSERT DETAIL CICILAN
        $tempo = $data['tempo'];
        $cicilan = $data['cicilan_per_bulan'];
        $sisa = $data['sisa_bayar'];
        $tgl_trans = $data['tgl_trans'];

        $detail = [];
        $total_terkumpul = 0;

        for ($i = 1; $i <= $tempo; $i++) {

            // hitung tanggal pembayaran
            $tgl_japo = date('Y-m-d', strtotime("+$i month", strtotime($tgl_trans)));

            // untuk pembayaran terakhir → samakan totalnya
            if ($i == $tempo) {
                $nominal = $sisa - $total_terkumpul;
            } else {
                $nominal = $cicilan;
                $total_terkumpul += $cicilan;
            }

            $detail[] = [
                "jbbt_id"       => $jbbt_id,
                "tgl_japo"      => $tgl_japo,
                "nominal_bayar" => $nominal,
                "status"        => 1
            ];
        }

        // insert batch detail cicilan
        $this->M_jbbt->insert_detail($detail);

        echo json_encode(["status" => "success"]);
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
