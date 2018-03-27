<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Forum extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('level')=="2") {
            redirect('siswa/dashboard');
        } else if ($this->session->userdata('level')=="1") {
            redirect('admin/dashboard');
        } else if ($this->session->userdata('level') == NULL) {
            redirect('C_login/landing_page');
        }
    }


    public function index()
    {
        $data['datacourse'] = M_Course::where('usr_id',$this->session->userdata('id'))->get();
//        dd($dataCourse);
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/forum_instruktur';
        $this->load->view('layout/master',$data);
    }

    public function add_forum($crs_id)
    {
        $data['dataaddforum'] = M_Course::where('course.crs_id','=',$crs_id)->first();
        
        $data['datalessonaddforum'] = M_Course_Lesson::leftJoin('course','course.crs_id','=','course_lesson.crs_id')
                                ->where('course.crs_id',$crs_id)
                                ->get();
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/add_forum';
        $this->load->view('layout/master',$data);
    }

    public function insert_forum($crs_id)
    {
        $data['cfr_desc'] = $this->input->post('deskripsiforum');
        $data['usr_id'] = $this->session->userdata('id');
        $data['lsn_id'] = $this->input->post('lsn_id');
        $idforum = $this->M_Course_Forum->insert_forum($data);

        $datasiswaforum = M_Course_Enrol::leftJoin('users', 'users.usr_id', '=', 'course_enrol.usr_id')
                        ->where('crs_id', '=', $crs_id)
                        ->get();
        
        foreach($datasiswaforum as $datasiswa)
        {
            $datasiswa['cfr_id'] = $idforum;
            $datasiswa['usr_id'] = $datasiswa->usr_id;
            $savedatacfu = $this->M_Course_Forum_User->insert_forum_user($datasiswa);
        }

        if($savedatacfu)
        {
            $this->session->set_flashdata('data_forum', 'Data Forum Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('data_gagal_forum', 'Data Forum Tidak Berhasil Tersimpan');
        }

        redirect('instruktur/forum_instruktur');
    }

    public function edit_forum($cfr_id,$crs_id)
    {
        $data['dataLesson'] = M_Course_Forum::leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
                        ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
                        ->where('course_forum.cfr_id',$cfr_id)
                        ->first();
        $data['datalessoneditforum'] = M_Course_Lesson::leftJoin('course','course.crs_id','=','course_lesson.crs_id')
                        ->where('course.crs_id',$crs_id)
                        ->get();
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/edit_forum';
        $this->load->view('layout/master',$data);
    }

    public function update_forum($cfr_id,$crs_id)
    {
        $data['cfr_id'] = $cfr_id;
        $data['cfr_desc'] = $this->input->post('deskripsiforum');
        $data['lsn_id'] = $this->input->post('lsn_id');
        $update = $this->M_Course_Forum->update_forum($data);

        if($update){
            $this->session->set_flashdata('data_forum', 'Data Forum Berhasil Terupdate');
        }else{
            $this->session->set_flashdata('data_gagal_forum', 'Data Forum Tidak Berhasil Terupdate');
        }

        redirect('instruktur/forum_instruktur');

    }

    public function delete_forum($cfr_id,$crs_id)
    {
        $deleteForum = M_Course_Forum::where('cfr_id',$cfr_id)->delete();

        if($deleteForum)
        {
            $this->session->set_flashdata('data_forum', 'Data Forum Berhasil Terhapus');
        }else{
            $this->session->set_flashdata('data_gagal_forum', 'Data Forum Tidak Berhasil Terhapus');
        }
        redirect('instruktur/forum_instruktur');
    }



}
