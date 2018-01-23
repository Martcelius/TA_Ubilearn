<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_siswa extends CI_Controller {


    public function __construct()
    {
        parent::__construct();

    }

    public function index()
    {

    }

    public function dashboard_siswa()
    {
        $data['content'] = 'siswa/dashboard_siswa';
        $this->load->view('layout/master', $data);

    }

    public function manage_akun()
    {
        $data['content'] = 'siswa/akun_siswa';
        $this->load->view('layout/master', $data);
    }
    public function course_siswa()
    {
        $data['content'] = 'siswa/course_siswa';
        $this->load->view('layout/master', $data);
    }
    public function hapus()
    {
        $data['content'] = 'siswa/course_siswa';
        $this->load->view('layout/master', $data);
    }


}
