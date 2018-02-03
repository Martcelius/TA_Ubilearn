<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_admin extends CI_Controller {


    public function __construct()
    {
        parent::__construct();

    }

    public function index()
    {

    }

    public function dashboard_admin()
    {
        $data['content'] = 'admin/dashboard_admin';
        $this->load->view('layout_admin/master', $data);

    }

    public function akun_admin()
    {
        $data['content'] = 'admin/akun_admin';
        $this->load->view('layout_admin/master', $data);
    }

    public function user()
    {
        $data['content'] = 'admin/user';
        $this->load->view('layout_admin/master', $data); 
    }

    public function add_user()
    {
        $data['content'] = 'admin/add_user';
        $this->load->view('layout_admin/master', $data);
    }

    public function edit_user()
    {
        $data['content'] = 'admin/edit_user';
        $this->load->view('layout/master', $data);
        
    }

    public function universitas()
    {
        $data['content'] = 'admin/universitas';
        $this->load->view('layout_admin/master', $data); 
    }

    public function add_universitas()
    {
        $data['content'] = 'admin/add_universitas';
        $this->load->view('layout_admin/master', $data);
    }

    public function edit_universitas()
    {
        $data['content'] = 'admin/edit_universitas';
        $this->load->view('layout/master', $data);
        
    }



}
