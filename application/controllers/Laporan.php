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
            if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2) {
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
            $date_start = $this->input->get('date_start'); // Bisa pakai $this->input->post() jika pakai method POST
            $date_end = $this->input->get('date_end');

            // Gunakan default jika kosong
            if (!$date_start) $date_start = date('Y-m-d', strtotime('-7 days'));
            if (!$date_end) $date_end = date('Y-m-d');

            // Ambil data dari model berdasarkan tanggal input
            $data = $this->lap->lap_trans($date_start, $date_end)->result();

            $spreadsheet = new PhpOffice\PhpSpreadsheet\Spreadsheet();
            $sheet = $spreadsheet->getActiveSheet();

            // Header kolom
            $sheet->setCellValue('A1', 'No');
            $sheet->setCellValue('B1', 'Kode Transaksi');
            $sheet->setCellValue('C1', 'Pembeli');
            $sheet->setCellValue('D1', 'Nominal');
            $sheet->setCellValue('E1', 'Tanggal Transaksi');
            $sheet->setCellValue('F1', 'Kode Barang');
            $sheet->setCellValue('G1', 'Nama Barang');
            $sheet->setCellValue('H1', 'Qty Beli');

            // Isi data
            $row = 2;
            $x = 1;
            foreach ($data as $d) {
                $customer = ($d->pelanggan_id == '117') ? $d->lainnya : $d->cust;
                $total = number_format($d->grand_total);
                $date = date('d-m-Y', strtotime($d->tgl_transaksi));

                $sheet->setCellValue('A' . $row, $x++);
                $sheet->setCellValue('B' . $row, $d->no_transaksi);
                $sheet->setCellValue('C' . $row, $customer);
                $sheet->setCellValue('D' . $row, $total);
                $sheet->setCellValue('E' . $row, $date);
                $sheet->setCellValue('F' . $row, $d->kode_barang);
                $sheet->setCellValue('G' . $row, $d->nama_barang);
                $sheet->setCellValue('H' . $row, $d->qty);
                $row++;
            }

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
                'footer_js' => array('assets/js/lap_iuran.js')
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
                }else {
                    $sts = 'Lunas';
                }

                $sheet->setCellValue('A' . $row, $x++);
                $sheet->setCellValue('B' . $row, $d->nama_anggota);
                $sheet->setCellValue('C' . $row, $bulan);
                $sheet->setCellValue('D' . $row, $sts);
                $row++;
            }

            // Set nama file
            $filename = 'Laporan_Iuran_Periode' . $bulan.'-'.$tahun . '.xlsx';

            // Set header untuk download
            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment;filename="' . $filename . '"');
            header('Cache-Control: max-age=0');

            ob_end_clean();
            $writer = new PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
            $writer->save('php://output');
            exit;
        }
    }
