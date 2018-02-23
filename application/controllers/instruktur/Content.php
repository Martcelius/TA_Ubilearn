<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Content extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_Course_Lesson');
        $this->load->model('M_Course');
        $this->load->model('M_Course_Learning_Outcomes');
        $this->load->model('M_Course_Content');
    }
    
    public function index()
    {
        
    }

    public function content($id)
    {
        $dataLesson = M_Course_Lesson::where('lsn_id',$id)->first();
        $data['dataCourse'] = M_Course::where('crs_id',$dataLesson->crs_id)->first();
        $data['dataContent'] =M_Course_Content::where('lsn_id',$id)->get();
        // dd($data['dataContent']);
        $data['lesson']= $dataLesson;
        // dd($data);
        $data['sidebar'] = "layout/sidebar_instruktur";
        $data['content'] = "instruktur/content";
        $this->load->view('layout/master', $data);
    }

    public function add_content($id)
    {
        $data['dataLO'] = M_Course_Learning_Outcomes::get();
        // dd($data['dataLO']->loc_id);
        $data['lsn_id'] = $id;
        $data['sidebar'] = "layout/sidebar_instruktur";
        $data['content'] = "instruktur/add_content";
        $this->load->view('layout/master', $data);
    }

    public function insert_content()
    {
        $cntData['cnt_name'] = $this->input->post('cnt_name');
        $cntData['cnt_desc'] = empty($this->input->post('cnt_desc')) ? NULL : $this->input->post('cnt_desc');
        $cntData['cnt_comment'] = empty($this->input->post('cnt_comment')) ? NULL : $this->input->post('cnt_comment');
        $cntData['cnt_type'] = empty($this->input->post('cnt_type')) ? NULL : $this->input->post('cnt_type');
        $cntData['cnt_source'] = empty($this->input->post('cnt_source')) ? NULL : $this->input->post('cnt_source');
        $cntData['lsn_id'] = intval($this->input->post('lsn_id'));
        $cntData['loc_id'] = intval($this->input->post('loc_id'));
        
        $insert  = $this->M_Course_Content->insert_content($cntData);
        if($insert)
        {
            $this->session->set_flashdata('insert_content', 'Data Content Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('data_insert_content', 'Data Content Tidak Berhasil Tersimpan');
        }

        redirect('instruktur/add_content/'.$cntData['lsn_id']);
    }

    public function edit_content($id)
    {
        $data['editContent'] = DB::table('course_content')
                            ->leftjoin('course_learning_outcomes','course_learning_outcomes.loc_id','=','course_content.loc_id')
                            ->where('cnt_id',$id)
                            ->first(['course_content.*','course_learning_outcomes.loc_desc']);
        $data['dataLO'] = M_Course_Learning_Outcomes::get();
        $data['sidebar'] = "layout/sidebar_instruktur";
        $data['content'] = "instruktur/edit_content";
        $this->load->view('layout/master', $data);
        
    }

    public function update_content()
    {
        $cntData['cnt_id'] = $this->input->post('cnt_id');
        $cntData['cnt_name'] = $this->input->post('cnt_name');
        $cntData['cnt_desc'] = empty($this->input->post('cnt_desc')) ? NULL : $this->input->post('cnt_desc');
        $cntData['cnt_comment'] = empty($this->input->post('cnt_comment')) ? NULL : $this->input->post('cnt_comment');
        $cntData['cnt_type'] = empty($this->input->post('cnt_type')) ? NULL : $this->input->post('cnt_type');
        $cntData['cnt_source'] = empty($this->input->post('cnt_source')) ? NULL : $this->input->post('cnt_source');
        $cntData['loc_id'] = intval($this->input->post('loc_id'));
        $lsn_id = intval($this->input->post('lsn_id'));

        $update  = $this->M_Course_Content->update_content($cntData);
        // dd($update);
        if($update)
        {
            $this->session->set_flashdata('data_content', 'Data Content Berhasil Terupdate');
        }else{
            $this->session->set_flashdata('data_content', 'Data Content Tidak Berhasil Terupdate');
        }

        redirect('instruktur/content/'.$lsn_id);
    }

    public function delete_content($id)
    {
        $deleteContent = M_Course_Content::where('cnt_id',$id)->first();
        // dd($deleteContent->lsn_id);
       $cntDelete= $deleteContent->delete();
        
        if($cntDelete)
        {
            $this->session->set_flashdata('data_content', 'Data Content Berhasil Terhapus');
        }else{
            $this->session->set_flashdata('data_content', 'Data Content Tidak Berhasil Terhapus');
        }
        redirect('instruktur/content/'.$deleteContent->lsn_id);
    }

}

/* End of file Controllername.php */

