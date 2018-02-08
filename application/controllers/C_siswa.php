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
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/dashboard_siswa';
        $this->load->view('layout/master', $data);

    }

    public function manage_akun()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/akun_siswa';
        $this->load->view('layout/master', $data);
    }

    public function course_close()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/course_close';
        $this->load->view('layout/master', $data);
    }

    public function course_info()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/course_info';
        $this->load->view('layout/master',$data);
    }


    public function course_siswa()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/course_siswa';
        $this->load->view('layout/master',$data);
    }


    public function forum_siswa()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/forum_siswa';
        $this->load->view('layout/master',$data);
    }

    public function assignment_opening()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/assignment_opening';
        $this->load->view('layout/master', $data);

    }

    public function assesment_doing()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/assesment_doing';
        $this->load->view('layout/master', $data);

    }


    public function exercise_doing()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/exercise_doing';
        $this->load->view('layout/master', $data);

    }

    public function result()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/result';
        $this->load->view('layout/master', $data);
    }

    public function assignment_detail()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/assignment_detail';
        $this->load->view('layout/master', $data);

    }

    public function course_detail()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/course_detail';
        $this->load->view('layout/master', $data);
    }
    public function remedial()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/remedial';
        $this->load->view('layout/master', $data);
    }
    public function pretest()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/pretest';
        $this->load->view('layout/master', $data);
    }
    public function course_content()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/course_content';
        $this->load->view('layout/master', $data);
    }

    public function list_thread_siswa()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/list_thread_siswa';
        $this->load->view('layout/master', $data);
    }

    public function detail_thread_siswa()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/detail_thread_siswa';
        $this->load->view('layout/master', $data);
    }

    public function add_thread_siswa()
    {
        $data['content'] = 'siswa/add_thread_siswa';
        $this->load->view('layout/master', $data);
    }

    public function edit_thread_siswa()
    {
        $data['content'] = 'siswa/edit_thread_siswa';
        $this->load->view('layout/master', $data);
    }
}
