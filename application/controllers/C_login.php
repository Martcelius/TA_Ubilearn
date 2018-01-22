<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_login extends CI_Controller {

    
    function __construct()
    {
        parent::__construct();

        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->model('M_login');
        $this->load->library('session');
    }
    
    public function index(){
        $this->load->view('login/signin');
    }

    function masuk(){
        $username = $this->input->post('username');
        $password = $this->input->post('password');

        $cek = $this->M_login->cek($username, $password);

        if ($cek)
        {
            foreach($cek as $row);

            $this->session->set_userdata('username', $row->username);
            $this->session->set_userdata('level', $row->level);
           
            if ($this->session->userdata('level')=="admin")
            {
                redirect('C_admin/dashboard_admin');
            }
            elseif ($this->session->userdata('level')=="siswa")
            {
                redirect('C_siswa/dashboard_siswa');
            }
        }
        else
        {
            $data['pesan'] = "Username atau Password tidak sesuai";
            $this->load->view('login/signin',$data);
        }
    }



}
