<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        // if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 && $this->session->userdata('level') != 2 && $this->session->userdata('level') != 3 && $this->session->userdata('level') != 4 && $this->session->userdata('level') != 5 && $this->session->userdata('level') != 7) {
        //     redirect(base_url("Login"));
        // }
        // $this->load->library('Pdf');
        $this->load->model('M_dashboard', 'dash');
    }

	public function index()
	{
		$data = [
			'title' => 'Dashboard',
			'conten' => 'conten/dashboard',
			'trans_month' => $this->dash->trans_month(),
			'trans_day' => $this->dash->trans_day(),
			'count_anggota' => $this->dash->count_anggota(),
			'tempo' => $this->dash->count_tempo(),
		];
		$this->load->view('template/conten',$data);
	}
}
