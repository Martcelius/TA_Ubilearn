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

            $this->session->set_userdata('username', $row->usr_username);
            $this->session->set_userdata('level', $row->usr_level);
           
            if ($this->session->userdata('level')==1)
            {
                print_r($this->session->userdata());
                // redirect('admin/dashboard');
            }
            elseif ($this->session->userdata('level')==2)
            {
                redirect('siswa/dashboard');
            }
            elseif ($this->session->userdata('level')=="instruktur")
            {
                redirect("instruktur/dashboard");
            }
        }
        else
        {
            $data['pesan'] = "Username atau Password tidak sesuai";
            $this->load->view('login/signin',$data);
        }
    }

    public function landing_page()
    {
        $this->load->view('layout/landing_page');   
    }


}
