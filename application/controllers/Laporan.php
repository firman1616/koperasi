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
            // if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2 && $this->session->userdata('level') != 3 && $this->session->userdata('level') != 4 && $this->session->userdata('level') != 5 && $this->session->userdata('level') != 7) {
            //     redirect(base_url("Login"));
            // }
            // $this->load->library('Excel');
            $this->load->model('M_laporan', 'lap');
        }

        public function index()
        {
            $data = [
                'title' => 'Laporan Penjualan',
                'subtitle' => 'Report',
                'conten' => 'laporan/penjualan/index',
                'footer_js' => array('assets/js/lap_jual.js')
            ];
            $this->load->view('template/conten', $data);
        }

        public function export_excel()
        {
            $data = $this->lap->lap_trans()->result(); // Ambil data dari model

            $spreadsheet = new Spreadsheet();
            $sheet = $spreadsheet->getActiveSheet();

            // Header kolom
            $sheet->setCellValue('A1', 'No');
            $sheet->setCellValue('B1', 'Kode Transaksi');
            $sheet->setCellValue('C1', 'Pembeli');
            $sheet->setCellValue('D1', 'Nominal');
            $sheet->setCellValue('E1', 'Tanggal Transaksi');

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
                $row++;
            }

            // Set nama file
            $filename = 'Laporan_Penjualan_' . date('Ymd') . '.xlsx';

            // Set header untuk download
            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment;filename="' . $filename . '"');
            header('Cache-Control: max-age=0');

            ob_end_clean();
            $writer = new Xlsx($spreadsheet);
            $writer->save('php://output');
        }
    }
