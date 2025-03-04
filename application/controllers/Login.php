<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{

    public function index()
    {
        $data = [
            'title' => 'Login Page'
        ];
        $this->load->view('login', $data);
    }

    public function login_form()
    {
        $username = $this->input->post('username');
        $password = md5($this->input->post('password'));
        // admin
        $where1 = array(
            'username' => $username,
            'password' => $password,
            'level' => 1
        );
        $cek1 = $this->M_data->get_data_by_id("tbl_user", $where1);
        //user
        $where2 = array(
            'username' => $username,
            'password' => $password,
            'level' => 2
        );
        $cek2 = $this->M_data->get_data_by_id("tbl_user", $where2);

        // Manager
        $where3 = array(
            'username' => $username,
            'password' => $password,
            'level' => 3
        );
        $cek3 = $this->M_data->get_data_by_id("tbl_user", $where3);

        if ($cek1->num_rows() > 0) {
            foreach ($cek1->result() as $row) {
                $id = $row->id;
                $nama = $row->nama_user;
                // $lengkap = $row->nama_lengkap;
            }
            $data_session = array(
                'status'     => true,
                'level'     => 1,
                'id'        => $id,
                'nama'        => $nama

            );
            $this->session->set_userdata($data_session);
            redirect(base_url("Dashboard"));
        } elseif ($cek2->num_rows() > 0) {
            foreach ($cek2->result() as $row) {
                $id = $row->id;
                $nama = $row->nama_user;
            }
            $data_session = array(
                'status'     => true,
                'level'     => 2,
                'id'        => $id,
                'nama'        => $nama

            );
            $this->session->set_userdata($data_session);
            redirect(base_url("Dashboard"));
        } elseif ($cek3->num_rows() > 0) {
            foreach ($cek3->result() as $row) {
                $id = $row->id;
                $nama = $row->nama_user;
            }
            $data_session = array(
                'status'     => true,
                'level'     => 3,
                'id'        => $id,
                'nama'        => $nama
            );

            $this->session->set_userdata($data_session);
            redirect(base_url("Dashboard"));
        } else {
            $this->session->set_flashdata('flash', 'Wrong');

            redirect(base_url('Login'));
        }
    }

    public function logout()
    {
        $this->session->sess_destroy();
        redirect(base_url('Login'));
    }
}
