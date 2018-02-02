<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Lesson extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        
       
        
    }
    
    public function index()
    {
        
    }

    /* CRUD Course */
   

    public function add()
    {
        $this->load->view('');
    }

    public function insert()
    {
        
        
    }

    public function edit_lesson()
    {
        $data['content'] = "instruktur/edit_lesson";
        $this->load->view('layout/master', $data);
        
    }

    public function edit()
    {
        

    }

    public function update($id = NULL)
    {
       
    }

    public function delete($id = NULL)
    {
        
    }
}
