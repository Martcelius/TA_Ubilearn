<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Lesson extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();

        $this->load->model('M_Course_Lesson');
        $this->load->model('M_Course');
        $this->load->model('M_Course_Assesment');
        $this->load->model('M_Course_Assesment_Question');
    }
    
    public function index($id)
    {
        $data['datalesen'] = M_Course_Lesson::where('crs_id', $id)->get();
//        dd($data['datalesen']);
        $data['jumlah'] = $data['datalesen']->count();
        $data['dataInstruktur'] = DB::table('course')
            ->leftJoin('users','users.usr_id','=','course.usr_id')
            ->where('course.crs_id',$id)
            ->first(['users.usr_firstname','users.usr_lastname','course.crs_name']);
//        dd($data['dataInstruktur']);
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/lesson';
        // dd($data['datalesen']);
        $data['id'] = $id;
        $listAss = $this->M_Course_Assesment->selectBy('crs_id',$id);
        $i = 0;
        $jumSoal = array();
        foreach($listAss as $c){
            $soal = $this->M_Course_Assesment_Question->select($c->ass_id);
            $jumSoal[$i] = $soal->count();
            $i++;
        }
        $data['listAss'] = $listAss;
        $data['jumSoal'] = $jumSoal;
        $this->load->view('layout/master', $data);
    }

    /* CRUD Course */
   

    public function add($id)
    {
        // $data['addlesen'] = M_Course_Lesson::where('crs_id',$id)
        $data['id'] = $id;
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = "instruktur/add_lesson";
        $this->load->view('layout/master',$data);
    }

    public function insert_lesson()
    {
        $lesen['lsn_name'] = $this->input->post('lsn_name');
        $lesen['lsn_intro'] = empty($this->input->post('lsn_intro')) ? NULL : $this->input->post('lsn_intro');
        $lesen['crs_id'] = $this->input->post('crs_id');

        $insert = $this->M_Course_Lesson->insert($lesen);
        
        if($insert)
        {
            $this->session->set_flashdata('data_tersimpan', 'Data Lesson Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('data_gagal_tersimpan', 'Data Lesson Tidak Berhasil Tersimpan');
        }
        // $data['id'] = $id;
        // $data['sidebar'] = 'layout/sidebar_instruktur';
        // $data['content'] = "instruktur/add_lesson";
        // $this->load->view('layout/master', $data);

        
        redirect('instruktur/lesson/'.$lesen['crs_id'],'refresh');
        
    }

    public function edit($id)
    {
        $data['dataLesson'] = M_Course_Lesson::where('lsn_id',$id)->first();
        $data['sidebar'] = "layout/sidebar_instruktur";
        $data['content'] = "instruktur/edit_lesson";
        $this->load->view('layout/master', $data);

    }

    public function update_lesson()
    {
        $lesen['lsn_name'] = $this->input->post('lsn_name');
        $lesen['lsn_intro'] = $this->input->post('lsn_intro');
//        $lesen['lsn_intro'] = empty($this->input->post('lsn_intro')) ? NULL : $this->input->post('lsn_intro');
        $lesen['lsn_id'] = $this->input->post('lsn_id');
        $crs_id = M_Course_Lesson::where('lsn_id',$lesen['lsn_id'])->first(['crs_id']);
        // dd($crs_id->crs_id);

        $update = $this->M_Course_Lesson->update_lesson($lesen);

        if($update)
        {
            $this->session->set_flashdata('data_lesson', 'Data Lesson Berhasil Terupdate');
        }else{
            $this->session->set_flashdata('data_lesson_gagal', 'Data Lesson Tidak Berhasil Terupdate');
        }
        
        redirect('instruktur/lesson/'.$crs_id->crs_id);
        
    }

    public function delete_lesson($id)
    {
        $deleteLesson = M_Course_Lesson::where('lsn_id',$id)->first();
        $lsnDelete= $deleteLesson->delete();
            
            if($lsnDelete)
            {
                $this->session->set_flashdata('data_lesson', 'Data Lesson Berhasil Terhapus');
            }else{
                $this->session->set_flashdata('data_lesson_gagal', 'Data Lesson Tidak Berhasil Terhapus');
            }
            
        redirect('instruktur/lesson/'.$deleteLesson->crs_id);
    }

    
}
