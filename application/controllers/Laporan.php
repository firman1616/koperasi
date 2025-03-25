<?php
defined('BASEPATH') or exit('No direct script access allowed');

require_once FCPATH . 'vendor/autoload.php';


use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Laporan extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2 && $this->session->userdata('level') != 3) {
            redirect(base_url("Login"));
        }
        // $this->load->library('Excel');
        $this->load->model('M_laporan', 'lap');
    }

    public function index()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Laporan Penjualan',
            'subtitle' => 'Report',
            'conten' => 'laporan/penjualan/index',
            'footer_js' => array('assets/js/lap_jual.js')
        ];
        $this->load->view('template/conten', $data);
    }

    function tableLapTrans()
    {
        $date_start = $this->input->post('date_start');
        $date_end = $this->input->post('date_end');

        $data['lap_trans'] = $this->lap->lap_trans($date_start, $date_end)->result();

        echo json_encode($this->load->view('laporan/penjualan/lap-trans-table', $data, false));
    }

    public function export_excel()
    {
        // Ambil tanggal dari input form
        $date_start = $this->input->get('date_start');
        $date_end = $this->input->get('date_end');

        // Gunakan default jika kosong
        if (!$date_start) $date_start = date('Y-m-d', strtotime('-7 days'));
        if (!$date_end) $date_end = date('Y-m-d');

        // Ambil data dari model
        $headerData = $this->lap->export_excel_penjualan($date_start, $date_end)->result();
        $detailData = $this->lap->export_detail_penjualan($date_start, $date_end)->result();

        // Buat spreadsheet
        $spreadsheet = new PhpOffice\PhpSpreadsheet\Spreadsheet();

        // ============================
        // SHEET 1: HEADER TRANSAKSI
        // ============================
        $spreadsheet->setActiveSheetIndex(0);
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Header');

        // Header kolom
        $sheet->setCellValue('A1', 'No');
        $sheet->setCellValue('B1', 'Kode Transaksi');
        $sheet->setCellValue('C1', 'Pembeli');
        $sheet->setCellValue('D1', 'Nominal');
        $sheet->setCellValue('E1', 'Tanggal Transaksi');

        // Isi data
        $row = 2;
        $x = 1;
        foreach ($headerData as $d) {
            $customer = ($d->pelanggan_id == '117') ? $d->lainnya : $d->cust;
            $date = date('d-m-Y', strtotime($d->tgl_transaksi));

            $sheet->setCellValue('A' . $row, $x++);
            $sheet->setCellValue('B' . $row, $d->no_transaksi);
            $sheet->setCellValue('C' . $row, $customer);
            $sheet->setCellValueExplicit('D' . $row, $d->grand_total, \PhpOffice\PhpSpreadsheet\Cell\DataType::TYPE_NUMERIC);
            $sheet->setCellValue('E' . $row, $date);

            $row++;
        }

        // Format kolom D sebagai Rupiah
        $sheet->getStyle('D2:D' . ($row - 1))
            ->getNumberFormat()
            ->setFormatCode('"Rp" #,##0');

        // Auto size kolom
        foreach (range('A', 'E') as $col) {
            $sheet->getColumnDimension($col)->setAutoSize(true);
        }

        // ============================
        // SHEET 2: DETAIL TRANSAKSI
        // ============================
        $detailSheet = $spreadsheet->createSheet();
        $spreadsheet->setActiveSheetIndex(1);
        $detailSheet = $spreadsheet->getActiveSheet();
        $detailSheet->setTitle('Detail');

        // Header kolom
        $detailSheet->setCellValue('A1', 'No');
        $detailSheet->setCellValue('B1', 'Kode Transaksi');
        $detailSheet->setCellValue('C1', 'Tanggal Transaksi');
        $detailSheet->setCellValue('D1', 'Kode Barang');
        $detailSheet->setCellValue('E1', 'Nama Barang');
        $detailSheet->setCellValue('F1', 'Qty');
        $detailSheet->setCellValue('G1', 'Harga Barang');

        // Isi data
        $row = 2;
        $x = 1;
        foreach ($detailData as $d) {
            $date = date('d-m-Y', strtotime($d->tgl_transaksi));

            $detailSheet->setCellValue('A' . $row, $x++);
            $detailSheet->setCellValue('B' . $row, $d->no_transaksi);
            $detailSheet->setCellValue('C' . $row, $date);
            $detailSheet->setCellValue('D' . $row, $d->kode_barang);
            $detailSheet->setCellValue('E' . $row, $d->nama_barang);
            $detailSheet->setCellValue('F' . $row, $d->qty);
            $detailSheet->setCellValueExplicit('G' . $row, $d->harga_barang, \PhpOffice\PhpSpreadsheet\Cell\DataType::TYPE_NUMERIC);

            $row++;
        }

        // Format kolom G sebagai Rupiah
        $detailSheet->getStyle('G2:G' . ($row - 1))
            ->getNumberFormat()
            ->setFormatCode('"Rp" #,##0');

        // Auto size kolom
        foreach (range('A', 'G') as $col) {
            $detailSheet->getColumnDimension($col)->setAutoSize(true);
        }

        // Kembalikan ke sheet pertama sebagai default tampilan
        $spreadsheet->setActiveSheetIndex(0);

        // Set nama file
        $filename = 'Laporan_Penjualan_' . date('Ymd') . '.xlsx';

        // Set header untuk download
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="' . $filename . '"');
        header('Cache-Control: max-age=0');

        ob_end_clean();
        $writer = new PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
        $writer->save('php://output');
        exit;
    }




    public function getDetailTransaksi()
    {
        $id = $this->input->post('id');
        if (!$id) {
            echo json_encode(["error" => "ID tidak ditemukan"]);
            return;
        }
        $data = $this->lap->lap_det_trans($id)->result();
        // Debugging: Pastikan data dari query benar
        if (!$data) {
            echo json_encode(["error" => "Data tidak ditemukan"]);
            return;
        }
        // Pastikan output JSON valid
        header('Content-Type: application/json');
        echo json_encode($data);
    }

    // iuran
    function lap_iuran()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Laporan Iuran Anggota',
            'subtitle' => 'Report',
            'conten' => 'laporan/iuran/index',
            'footer_js' => array('assets/js/lap_iuran.js'),
            'total' => $this->lap->total_iuran(),
        ];
        $this->load->view('template/conten', $data);
    }

    function tableLapIuran()
    {
        $bulan = $this->input->post('bulan');
        $tahun = $this->input->post('tahun');

        $data['lap_iuran'] = $this->lap->lap_iuran($bulan, $tahun)->result();

        echo json_encode($this->load->view('laporan/iuran/lap-iuran-table', $data, false));
    }

    public function export_excel_iuran()
    {
        // Ambil tanggal dari input form
        $bulan = $this->input->get('bulan'); // Bisa pakai $this->input->post() jika pakai method POST
        $tahun = $this->input->get('tahun');

        // Gunakan default jika kosong
        if (!$bulan) $bulan = date('m');
        if (!$tahun) $tahun = date('y');

        // Ambil data dari model berdasarkan tanggal input
        $data = $this->lap->lap_iuran($bulan, $tahun)->result();

        $spreadsheet = new PhpOffice\PhpSpreadsheet\Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();

        // Header kolom
        $sheet->setCellValue('A1', 'No');
        $sheet->setCellValue('B1', 'Nama Anggota');
        $sheet->setCellValue('C1', 'Periode Bulan');
        $sheet->setCellValue('D1', 'Status');

        // Isi data
        $row = 2;
        $x = 1;
        foreach ($data as $d) {
            if ($d->status != '1') {
                $sts = 'Belum bayar';
            } else {
                $sts = 'Lunas';
            }

            $sheet->setCellValue('A' . $row, $x++);
            $sheet->setCellValue('B' . $row, $d->nama_anggota);
            $sheet->setCellValue('C' . $row, $bulan);
            $sheet->setCellValue('D' . $row, $sts);
            $row++;
        }

        // Set nama file
        $filename = 'Laporan_Iuran_Periode' . $bulan . '-' . $tahun . '.xlsx';

        // Set header untuk download
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="' . $filename . '"');
        header('Cache-Control: max-age=0');

        ob_end_clean();
        $writer = new PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
        $writer->save('php://output');
        exit;
    }

    function lap_barang()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Laporan barang',
            'subtitle' => 'Report',
            'conten' => 'laporan/barang/index',
            'footer_js' => array('assets/js/lap_barang.js')
        ];
        $this->load->view('template/conten', $data);
    }

    function tableLapBarang()
    {
        // $bulan = $this->input->post('bulan');
        // $tahun = $this->input->post('tahun');

        $data['barang'] = $this->lap->lap_barang()->result();

        echo json_encode($this->load->view('laporan/barang/lap-barang-table', $data, false));
    }

    public function getHistoryBarang()
    {
        $id = $this->input->post('id');
        $date_start = $this->input->post('date_start');
        $date_end = $this->input->post('date_end');

        // Pastikan tanggal tidak kosong, jika kosong ambil 30 hari ke belakang
        if (empty($date_start)) {
            $date_start = date('Y-m-d', strtotime('-30 days'));
        }
        if (empty($date_end)) {
            $date_end = date('Y-m-d');
        }

        $history = $this->lap->history_barang($id, $date_start, $date_end)->result();

        // Ambil nama_barang jika ada data
        $nama_barang = !empty($history) ? $history[0]->nama_barang : "Unknown";

        foreach ($history as $row) {
            $row->history_date = !empty($row->history_date) ? date('Y-m-d', strtotime($row->history_date)) : null;
        }

        echo json_encode([
            "nama_barang" => $nama_barang,
            "history" => $history
        ]);
    }

    public function export_barang()
    {
        // Ambil tanggal dari input form
        $date_start = $this->input->get('date_start'); // Bisa pakai $this->input->post() jika pakai method POST
        $date_end = $this->input->get('date_end');

        // Gunakan default jika kosong
        if (!$date_start) $date_start = date('Y-m-d', strtotime('-7 days'));
        if (!$date_end) $date_end = date('Y-m-d');

        // Ambil data dari model berdasarkan tanggal input
        $data = $this->lap->export_barang($date_start, $date_end)->result();

        $spreadsheet = new PhpOffice\PhpSpreadsheet\Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();

        // Header kolom
        $sheet->setCellValue('A1', 'No');
        $sheet->setCellValue('B1', 'Kode Barang');
        $sheet->setCellValue('C1', 'Nama Barang');
        $sheet->setCellValue('D1', 'QTY History');
        $sheet->setCellValue('E1', 'Date History');

        // Isi data
        $row = 2;
        $x = 1;
        foreach ($data as $d) {
            $date = date('d-m-Y', strtotime($d->history_date));

            $sheet->setCellValue('A' . $row, $x++);
            $sheet->setCellValue('B' . $row, $d->kode_barang);
            $sheet->setCellValue('C' . $row, $d->nama_barang);
            $sheet->setCellValue('D' . $row, $d->qty_history);
            $sheet->setCellValue('E' . $row, $date);
            $row++;
        }

        // Set nama file
        $filename = 'Laporan_barang_' . date('Ymd') . '.xlsx';

        // Set header untuk download
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="' . $filename . '"');
        header('Cache-Control: max-age=0');

        ob_end_clean();
        $writer = new PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
        $writer->save('php://output');
        exit;
    }

    function lap_keuangan()
    {
        $data = [
            'akses' => $this->session->userdata('level'),
            'name' => $this->session->userdata('nama'),
            'title' => 'Laporan Keuangan',
            'subtitle' => 'Report',
            'conten' => 'laporan/keuangan/index',
            'footer_js' => array('assets/js/lap_keuangan.js'),
            'kategori' => $this->m_data->get_data('tbl_kateg_trans'),
        ];
        $this->load->view('template/conten', $data);
    }

    function tableLapKeuangan()
    {
        $bulan = $this->input->post('bulan');
        $tahun = $this->input->post('tahun');
        $data['keuangan'] = $this->lap->lap_keuangan($bulan, $tahun)->result();
        $data['sum_nominal'] = $this->lap->sum_nominal($bulan, $tahun)->result();

        echo json_encode($this->load->view('laporan/keuangan/lap-keuangan-table', $data, false));
    }

    public function export_excel_keuangan()
    {
        $bulan = $this->input->get('bulan') ?: date('m');
        $tahun = $this->input->get('tahun') ?: date('y'); // Sesuai format yang digunakan di query (2 digit)

        // Ambil data dari model berdasarkan kategori
        $pemasukan = $this->lap->in_keuangan($bulan, $tahun)->result();
        $pengeluaran = $this->lap->out_keuangan($bulan, $tahun)->result();

        // Buat Spreadsheet
        $spreadsheet = new PhpOffice\PhpSpreadsheet\Spreadsheet();

        // Buat Sheet Pemasukan
        $sheet1 = $spreadsheet->setActiveSheetIndex(0);
        $sheet1->setTitle('Pemasukan');
        $this->isiSheetKeuangan($sheet1, $pemasukan);

        // Buat Sheet Pengeluaran
        $sheet2 = $spreadsheet->createSheet();
        $sheet2->setTitle('Pengeluaran');
        $this->isiSheetKeuangan($sheet2, $pengeluaran);

        // Set nama file
        $filename = 'Laporan_Keuangan_' . $bulan . '-' . $tahun . '.xlsx';

        // Set header untuk download
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="' . $filename . '"');
        header('Cache-Control: max-age=0');

        ob_end_clean();
        $writer = new PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
        $writer->save('php://output');
        exit;
    }

    private function isiSheetKeuangan($sheet, $data)
    {
        // Header kolom
        $headers = ['A1' => 'No', 'B1' => 'Nama Kategori', 'C1' => 'Periode', 'D1' => 'Kategori', 'E1' => 'Nominal'];

        foreach ($headers as $cell => $text) {
            $sheet->setCellValue($cell, $text);
            $sheet->getStyle($cell)->getFont()->setBold(true); // Buat Bold
        }

        // Isi data
        $row = 2;
        $x = 1;
        $total = 0;

        foreach ($data as $d) {
            $formatter = new IntlDateFormatter('id_ID', IntlDateFormatter::LONG, IntlDateFormatter::NONE);
            $formatter->setPattern('MMMM yyyy'); // Format Indonesia

            $sheet->setCellValue('A' . $row, $x++);
            $sheet->setCellValue('B' . $row, $d->kateg_trans);
            $sheet->setCellValue('C' . $row, $formatter->format(new DateTime($d->periode)));
            $sheet->setCellValue('D' . $row, $d->kode);
            $sheet->setCellValue('E' . $row, $d->nominal);

            // Format Nominal menjadi angka dengan style keuangan & rata kanan
            $sheet->getStyle('E' . $row)
                ->getNumberFormat()
                ->setFormatCode('#,##0.00');
            $sheet->getStyle('E' . $row)
                ->getAlignment()
                ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);

            $total += $d->nominal;
            $row++;
        }

        // Baris Total
        $sheet->mergeCells("A{$row}:D{$row}");
        $sheet->setCellValue("A{$row}", "TOTAL");
        $sheet->setCellValue("E{$row}", $total);

        // Styling untuk total
        $sheet->getStyle("A{$row}:E{$row}")->getFont()->setBold(true);
        $sheet->getStyle("E{$row}")
            ->getNumberFormat()
            ->setFormatCode('#,##0.00');
        $sheet->getStyle("E{$row}")
            ->getAlignment()
            ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);

        // Auto-size columns
        foreach (range('A', 'E') as $col) {
            $sheet->getColumnDimension($col)->setAutoSize(true);
        }
    }
}
