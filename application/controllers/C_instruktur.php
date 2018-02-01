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

    public function dashboard_instruktur()
    {
        $data['content'] = 'instruktur/dashboard_instruktur'; 
        $this->load->view('layout/master', $data);
        
    }

    public function manage_akun()
    {
        $data['content'] = 'instruktur/akun_instruktur';
        $this->load->view('layout/master', $data);
    }

    public function myCourse()
    {
        $data['content'] = 'instruktur/myCourse';
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

    public function add_lesson()
    {
        $data['content'] = 'instruktur/add_lesson';
        $this->load->view('layout/master', $data);
        
    }

}
