<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Lesson extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();

        $this->load->model('M_Course_Lesson');
        
    }
    
    public function index($id)
    {
        $data['datalesen'] = M_Course_Lesson::where('crs_id', $id)->get();
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/lesson';
        $this->load->view('layout/master', $data);
    }

    /* CRUD Course */
   

    public function add()
    {
        // $data['addlesen'] = M_Course_Lesson::where('crs_id',$id)
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = "instruktur/add_lesson";
        $this->load->view('layout/master',$data);
    }

    public function insert($id)
    {
        $lesen['lsn_name'] = $this->input->post('lsn_name');
        $lesen['lsn_intro'] = empty($this->input->post('lsn_intro')) ? NULL : $this->input->post('lsn_intro');
        $lesen['crs_id'] = $id;

        $insert = $this->M_Course_Lesson->insert($lesen);
        
        if($insert)
        {
            $this->session->set_flashdata('data_tersimpan', 'Data Lesen Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('data_gagal_tersimpan', 'Data Lesen Tidak Berhasil Tersimpan');
        }
        
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = "instruktur/add_lesson";
        $this->load->view('layout/master', $data);
    }

    public function edit($id)
    {
        $data['sidebar'] = "layout/sidebar_instruktur";
        $data['content'] = "instruktur/edit_lesson";
        $this->load->view('layout/master', $data);

    }

    public function update($id = NULL)
    {
       
    }

    public function delete($id = NULL)
    {
        
    }
}
