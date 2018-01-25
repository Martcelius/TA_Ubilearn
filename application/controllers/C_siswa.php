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

    public function course_close()
    {
        $data['content'] = 'siswa/course_close';
        $this->load->view('layout/master', $data);
    }


    public function course_info()
    {
        $data['content'] = 'siswa/course_info';
        $this->load->view('layout/master',$data);
    }


    public function course_siswa()
    {
        $data['content'] = 'siswa/course_siswa';
        $this->load->view('layout/master',$data);
    }

    public function assignment_opening()
    {
        $data['content'] = 'siswa/assignment_opening';
        $this->load->view('layout/master', $data);
        
    }

    public function assesment_doing()
    {
        $data['content'] = 'siswa/assesment_doing';
        $this->load->view('layout/master', $data);
        
    }

    public function exercise_doing()
    {
        $data['content'] = 'siswa/exercise_doing';
        $this->load->view('layout/master', $data);
        
    }

    public function result()
    {
        $data['content'] = 'siswa/result';
        $this->load->view('layout/master', $data);
        
    }
}
