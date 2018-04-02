<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Content extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('level')=="2") {
            redirect('siswa/dashboard');
        } else if ($this->session->userdata('level')=="1") {
            redirect('admin/dashboard');
        } else if ($this->session->userdata('level') == NULL) {
            redirect('');
        }
    }
    
    public function index()
    {
//        $data['content'] =
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
        $data['dataC'] = M_Course_Lesson::leftjoin('course', 'course.crs_id', '=', 'course_lesson.crs_id')
            ->where('lsn_id',$id)->first();
    //         dd($data['dataC']->crs_id);
        $data['dataLO'] = M_Course_Learning_Outcomes::where('crs_id','=',$data['dataC']->crs_id)->get();
        $data['lsn_id'] = $id;
        $data['sidebar'] = "layout/sidebar_instruktur";
        $data['content'] = "instruktur/add_content";
        $this->load->view('layout/master', $data);
    }

    public function insert_content()
    {
        $nmfile = $this->input->post('cnt_name').time();
        $config['upload_path'] ='./res/assets/content';
        $config['allowed_types'] = 'pdf|doc|docx|xls|xlsx|ppt|pptx|zip|rar|text';
        $config['file_name'] = $nmfile;
        $this->load->library('upload',$config);
        $this->upload->do_upload('cnt_source');
        $result= $this->upload->data();


        $cntData['cnt_name'] = $this->input->post('cnt_name');
        $cntData['cnt_desc'] = empty($this->input->post('cnt_desc')) ? NULL : $this->input->post('cnt_desc');
        $cntData['cnt_comment'] = empty($this->input->post('cnt_comment')) ? NULL : $this->input->post('cnt_comment');
        $cntData['cnt_type'] = empty($this->input->post('cnt_type')) ? NULL : $this->input->post('cnt_type');
        if ($cntData['cnt_type'] == "Text" || $cntData['cnt_type'] == "Example" ){
            $cntData['cnt_source'] = $result['file_name'];
        }else{
            $cntData['cnt_source'] = $this->input->post('cnt_source');
        }
        $cntData['lsn_id'] = intval($this->input->post('lsn_id'));
        $cntData['loc_id'] = intval($this->input->post('loc_id'));
        
        $insert  = $this->M_Course_Content->insert_content($cntData);
        if($insert)
        {
            $teudicalana = M_Course_Content::join('course_lesson','course_content.lsn_id', '=' ,'course_lesson.lsn_id')
                                ->where('course_content.lsn_id', '=', $this->input->post('lsn_id'))->first();
            $cruses = M_Course_Enrol::where('crs_id', '=', $teudicalana->crs_id)->get();
            
            foreach ($cruses as $crus):
                $notif_content['ntf_type'] = "LSN";
                $notif_content['ntf_instructor'] = $this->session->userdata('firstname')." ".$this->session->userdata('lastname');
                $notif_content['ntf_message'] = "Menambahkan konten materi baru.";
                $notif_content['ntf_read'] = "N";
                $notif_content['ass_id'] = NULL;
                $notif_content['lsn_id'] = $this->input->post('lsn_id');
                $notif_content['asg_id'] = NULL;
                $notif_content['usr_id'] = $crus->usr_id;
                $insert_notif = $this->M_Notification->insert($notif_content);
            endforeach;

            $this->session->set_flashdata('insert_content', 'Data Content Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('data_insert_content', 'Data Content Tidak Berhasil Tersimpan');
        }

        redirect('instruktur/content/'.$cntData['lsn_id']);
    }

    public function edit_content($id)
    {
        $data['editContent'] = M_Course_Content::leftjoin('course_learning_outcomes','course_learning_outcomes.loc_id','=','course_content.loc_id')
                            ->where('cnt_id',$id)
                            ->first(['course_content.*','course_learning_outcomes.loc_desc']);
        $data['dataLO'] = M_Course_Learning_Outcomes::get();
        $data['sidebar'] = "layout/sidebar_instruktur";
        $data['content'] = "instruktur/edit_content";
        $this->load->view('layout/master', $data);
        
    }

    public function update_content()
    {
//        dd($this->input->post('cnt_type'));
        $nmfile = $this->input->post('cnt_name').time();
        $config['upload_path'] ='./res/assets/content';
        $config['allowed_types'] = 'pdf|doc|docx|xls|xlsx|ppt|pptx|zip|rar|text';
        $config['file_name'] = $nmfile;
        $this->load->library('upload',$config);
        $this->upload->do_upload('cnt_source');
        $result= $this->upload->data();

        $cntData['cnt_id'] = $this->input->post('cnt_id');
        $cntData['cnt_name'] = $this->input->post('cnt_name');
        $cntData['cnt_desc'] = empty($this->input->post('cnt_desc')) ? NULL : $this->input->post('cnt_desc');
        $cntData['cnt_comment'] = empty($this->input->post('cnt_comment')) ? NULL : $this->input->post('cnt_comment');
        $cntData['cnt_type'] = empty($this->input->post('cnt_type')) ? NULL : $this->input->post('cnt_type');
        if ($cntData['cnt_type'] == "Text"){

            $cntData['cnt_source'] = $result['file_name'];
        }elseif($cntData['cnt_type'] == "Video"){
            $cntData['cnt_source'] = $this->input->post('cnt_source');
        };
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
    public function uplGambar(){
        $dir_name = "./res/assets/imgeditor/";
        move_uploaded_file($_FILES['file']['tmp_name'],$dir_name.$_FILES['file']['name']);
        $dir_name = base_url()."res/assets/imgeditor/";
        echo $dir_name.$_FILES['file']['name'];
    }
}

/* End of file Controllername.php */

