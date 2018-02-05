<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_instruktur extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        
    }
    
    public function index()
    {

    }

    public function dashboard()
    {
        $data['content'] = 'instruktur/dashboard_instruktur'; 
        $this->load->view('layout/master', $data);
        
    }

    public function manage_akun()
    {
        $data['content'] = 'instruktur/akun_instruktur';
        $this->load->view('layout/master', $data);
    }

    public function add_course()
    {
        $data['content'] = 'instruktur/add_course';
        $this->load->view('layout/master', $data);
        
    }

    public function lesson()
    {
        $data['content'] = 'instruktur/lesson';
        $this->load->view('layout/master', $data);
        
    }

    public function detail_lesson()
    {
        $data['content'] = 'instruktur/detail_lesson';
        $this->load->view('layout/master', $data);
        
    }    

    public function add_lesson()
    {
        $data['content'] = 'instruktur/add_lesson';
        $this->load->view('layout/master', $data);
        
    }

    public function learning_outcome()
    {
        $data['content'] = 'instruktur/learning_outcome';
        $this->load->view('layout/master',$data);
    }

    public function add_lo()
    {
        $data['content'] = 'instruktur/add_LO';
        $this->load->view('layout/master', $data);

    }

    public function add_assessment()
    {
        $data['content'] = 'instruktur/tambah_assessment';
        $this->load->view('layout/master', $data);
        
    }

    public function add_pretest()
    {
        $data['content'] = 'instruktur/tambah_pretest';
        $this->load->view('layout/master', $data);
        
    } 

    public function add_remedial()
    {
        $data['content'] = 'instruktur/tambah_remedial';
        $this->load->view('layout/master', $data);
        
    }  

    public function add_exercise()
    {
        $data['content'] = 'instruktur/tambah_latihan';
        $this->load->view('layout/master', $data);
        
    }  

}
