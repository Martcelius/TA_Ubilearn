<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Forum extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_Course');
        $this->load->model('M_Course_Forum');
        $this->load->model('M_Course_Forum_Thread');
        $this->load->model('M_Course_Lesson');
    }


    public function index()
    {
        $data['dataCourse'] = M_Course::where('usr_id',$this->session->userdata('id'))->get();
//        dd($dataCourse);
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/forum_instruktur';
        $this->load->view('layout/master',$data);
    }

    public function dashboard_forum_instruktur($crs_id)
    {
        $data['dataForum']= DB::table('course_forum')
                            ->leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
                            ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')/*
                            ->leftJoin('course_forum_thread','course_forum_thread.crs_id','=','course.crs_id')*/
                            ->where('course.crs_id',$crs_id)
                            ->get();
//        $data['data'] = DB::table('course_forum')
//            ->join('course_forum_thread','course_forum_thread.cfr_id','=','course_forum.cfr_id')
//            ->where('course_forum.cfr_id','4')
//            ->get();

//        dd($data['data']);
//        $jumlahThread = DB::table('course_forum_thread')
//                            ->leftJoin('course_forum','course_forum.cfr_id','=','course_forum_thread.cfr_id')
//                            ->leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
//                            ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
//                            ->where('course.crs_id',$crs_id)
//                            ->get();
//        $data['jumlahThread']= count($jumlahThread);
//        dd($data['jumlahThread']);
        $num=1;
        foreach ($data['dataForum'] as $thread){
            $jumlahThread = M_Course_Forum_Thread::where('cfr_id',$thread->cfr_id)->get();
            $jumlah[$num] = $jumlahThread->count('cfr_id');
            $num++;

        }
        $data['jumlah'] =$jumlah;
        $data['dataCourse']= M_Course::where('crs_id',$crs_id)->first();
//        $data['crs_name'] = $data['dataForum']->
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/dashboard_forum_instruktur';
        $this->load->view('layout/master',$data);
    }

    public function add_forum($crs_id)
    {
        $data['dataLesson'] = M_Course_Lesson::where('crs_id',$crs_id)->get();
        $data['crs_id'] = $crs_id;
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/add_forum';
        $this->load->view('layout/master',$data);
    }

    public function insert_forum()
    {
//
        $data['cfr_title'] = $this->input->post('judul_forum');
        $data['cfr_desc'] = $this->input->post('deskripsiforum');
        $data['lsn_id'] = $this->input->post('lsn_id');
        $data['usr_id'] = $this->session->userdata('id');
        $crs_id = $this->input->post('crs_id');
//        dd($data['usr_id']);
        $insert = $this->M_Course_Forum->insert_forum($data);

        if($insert)
        {
            $this->session->set_flashdata('insert_forum', 'Data Forum Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('data_insert_forum', 'Data Forum Tidak Berhasil Tersimpan');
        }

        redirect('instruktur/add_forum/'.$crs_id);
    }

    public function edit_forum($cfr_id,$crs_id)
    {
        $data['dataLesson'] = DB::table('course_forum')
                        ->leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
                        ->where('course_forum.cfr_id',$cfr_id)
                        ->first();
        $data['pilihanLesson'] = M_Course_Lesson::where('crs_id',$crs_id)->get();
//        dd($data['pilihanLesson']);
        $data['crs_id'] = $crs_id;
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/edit_forum';
        $this->load->view('layout/master',$data);
    }

    public function update_forum()
    {
        $data['cfr_id'] = $this->input->post('cfr_id');
        $data['cfr_title'] = $this->input->post('judul_forum');
        $data['cfr_desc'] = $this->input->post('deskripsiforum');
        $data['lsn_id'] = $this->input->post('lsn_id');
//        $data['usr_id'] = $this->session->userdata('id');
        $crs_id = $this->input->post('crs_id');

        $update = $this->M_Course_Forum->update_forum($data);

        if($update){
            $this->session->set_flashdata('data_forum', 'Data Forum Berhasil Terupdate');
        }else{
            $this->session->set_flashdata('data_gagal_forum', 'Data Forum Tidak Berhasil Terupdate');
        }

        redirect('instruktur/dashboard_forum_instruktur/'.$crs_id);

    }

    public function delete_forum($cfr_id,$crs_id)
    {
        $deleteForum = DB::table('course_forum')->where('cfr_id',$cfr_id)->delete();
        $deleteThread= DB::table('course_forum_thread')->where('cfr_id',$cfr_id)->delete();

        if($deleteForum)
        {
            $this->session->set_flashdata('data_forum', 'Data Forum Berhasil Terhapus');
        }else{
            $this->session->set_flashdata('data_gagal_forum', 'Data Forum Tidak Berhasil Terhapus');
        }
        redirect('instruktur/dashboard_forum_instruktur/'.$crs_id);
    }



}
