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
        echo json_encode($this->load->view('pengeluaranlain/pengeluaran-lain-table', $data, false));
    }

    // function store()
    // {
    //     $id = $this->input->post('id');
    //     if ($id != null) {
    //         $table = 'tbl_pengeluaran';
    //         $dataupdate = [
    //             'kategori_id' => $this->input->post('kategori'),
    //             'sumber_dana_id' => $this->input->post('sumberdana'),
    //             'nominal' => $this->input->post('nominal'),
    //             'keterangan' => $this->input->post('keterangan')
    //         ];
    //         $where = array('id' => $id);
    //         $this->m_data->update_data($table, $dataupdate, $where);
    //     } else {
    //         $table = 'tbl_pengeluaran';
    //         $data = [
    //             'kategori_id' => $this->input->post('kategori'),
    //             'sumber_dana_id' => $this->input->post('sumberdana'),
    //             'nominal' => $this->input->post('nominal'),
    //             'date' => date('Y-m-d'),
    //             'keterangan' => $this->input->post('keterangan')
    //         ];
    //         // $die(var_dump($data));
    //         $this->m_data->simpan_data($table, $data);
    //     }
    // }

    public function store()
    {
        $id = $this->input->post('id');
        $sumberdana = $this->input->post('sumberdana');
        $nominal = $this->input->post('nominal');

        if (!$sumberdana || !$nominal || $nominal <= 0) {
            echo json_encode(['status' => 'error', 'message' => 'Data tidak valid']);
            return;
        }

        // Jika update data (ID tidak null)
        if ($id != null) {
            // Ambil data lama sebelum diupdate
            $dataLama = $this->db->select('sumber_dana_id, nominal')
                ->from('tbl_pengeluaran')
                ->where('id', $id)
                ->get()
                ->row();

            if ($dataLama) {
                // Kembalikan saldo lama sebelum update
                $this->db->set('nominal', 'nominal + ' . $dataLama->nominal, FALSE)
                    ->where('kategori_keuangan', $dataLama->sumber_dana_id)
                    ->update('tbl_keuangan');
            }

            // Kurangi saldo dengan nominal baru
            $this->db->set('nominal', 'nominal - ' . $nominal, FALSE)
                ->where('kategori_keuangan', $sumberdana)
                ->update('tbl_keuangan');

            // Update data pengeluaran
            $table = 'tbl_pengeluaran';
            $dataupdate = [
                'kategori_id' => $this->input->post('kategori'),
                'sumber_dana_id' => $sumberdana,
                'nominal' => $nominal,
                'keterangan' => $this->input->post('keterangan')
            ];
            $where = array('id' => $id);
            $this->m_data->update_data($table, $dataupdate, $where);
        } else {
            // Insert data baru ke tbl_pengeluaran
            $table = 'tbl_pengeluaran';
            $data = [
                'kategori_id' => $this->input->post('kategori'),
                'sumber_dana_id' => $sumberdana,
                'nominal' => $nominal,
                'date' => date('Y-m-d'),
                'keterangan' => $this->input->post('keterangan')
            ];
            $this->m_data->simpan_data($table, $data);

            // Kurangi saldo di tbl_keuangan
            $this->db->set('nominal', 'nominal - ' . $nominal, FALSE)
                ->where('kategori_keuangan', $sumberdana)
                ->update('tbl_keuangan');
        }

        echo json_encode(['status' => 'success', 'message' => 'Data berhasil disimpan']);
    }

    function vedit($id)
    {
        $table = 'tbl_pengeluaran';
        $where = array('id' => $id);
        $data = $this->m_data->get_data_by_id($table, $where)->row();
        echo json_encode($data);
    }

    // function delete_data($id)
    // {
    //     $table = 'tbl_pengeluaran';
    //     $where = array('id' => $id);
    //     $this->m_data->hapus_data($table, $where);
    //     redirect('PengeluaranLain');
    // }

    public function delete_data($id)
{
    $this->load->database();

    // Ambil data pengeluaran sebelum dihapus
    $pengeluaran = $this->db->select('sumber_dana_id, nominal')
                            ->from('tbl_pengeluaran')
                            ->where('id', $id)
                            ->get()
                            ->row();

    if ($pengeluaran) {
        // Tambahkan kembali saldo di tbl_keuangan
        $this->db->set('nominal', 'nominal + ' . $pengeluaran->nominal, FALSE)
                 ->where('kategori_keuangan', $pengeluaran->sumber_dana_id)
                 ->update('tbl_keuangan');

        // Hapus data dari tbl_pengeluaran
        $table = 'tbl_pengeluaran';
        $where = array('id' => $id);
        $this->m_data->hapus_data($table, $where);
    }

    redirect('PengeluaranLain');
}


    public function getSaldo()
    {
        $sumberdana = $this->input->post('sumberdana');
        $saldo = $this->db->select('nominal')->from('tbl_keuangan')->where('kategori_keuangan', $sumberdana)->get()->row();

        if ($saldo) {
            echo json_encode(['saldo' => $saldo->nominal]);
        } else {
            echo json_encode(['saldo' => 0]);
        }
    }
}
