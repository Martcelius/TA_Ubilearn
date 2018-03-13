<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Forum extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();

        $this->load->model('M_User');
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

    public function dashboard_forum_instruktur($crs_id){
        $data['datalessonforum'] = DB::table('course_lesson')
                            ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
                            ->where('course.crs_id',$crs_id)
                            ->get();
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/dashboard_forum_instruktur';
        $this->load->view('layout/master',$data);
    }

    public function detail_dashboard_forum_instruktur($lsn_id)
    {
        $data['dataForum']= DB::table('course_forum')
                            ->leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
                            ->where('course_lesson.lsn_id',$lsn_id)
                            ->get();
        $data['datalesson']=DB::table('course_lesson')
                            ->where('course_lesson.lsn_id',$lsn_id)
                            ->first();
        if ($data['dataForum'] != NULL)
        {
            $num=1;
            foreach ($data['dataForum'] as $thread)
            {
                $jumlahThread = M_Course_Forum_Thread::where('cfr_id',$thread->cfr_id)->get();
                $jumlah[$num] = $jumlahThread->count('cfr_id');
                $num++;

            }
            $data['jumlah'] =$jumlah;
            $data['sidebar'] = 'layout/sidebar_instruktur';
            $data['content'] = 'instruktur/detail_dashboard_forum_instruktur';
            $this->load->view('layout/master',$data);
        }
        else
        {
            $data['jumlah'] =0;
            $data['sidebar'] = 'layout/sidebar_instruktur';
            $data['content'] = 'instruktur/detail_dashboard_forum_instruktur';
            $this->load->view('layout/master',$data);
        }
//         $num=1;
//         foreach ($data['dataForum'] as $thread){
//             $jumlahThread = M_Course_Forum_Thread::where('cfr_id',$thread->cfr_id)->get();
//             $jumlah[$num] = $jumlahThread->count('cfr_id');
//             $num++;

//         }
//         $data['jumlah'] =$jumlah;
//         $data['dataCourse']= M_Course::where('crs_id',$crs_id)->first();
// //        $data['crs_name'] = $data['dataForum']->
//         $data['sidebar'] = 'layout/sidebar_instruktur';
//         $data['content'] = 'instruktur/dashboard_forum_instruktur';
//         $this->load->view('layout/master',$data);
    }

    public function add_forum($lsn_id)
    {
        $data['datalessonaddforum'] = M_Course_Lesson::where('lsn_id',$lsn_id)->first();
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/add_forum';
        $this->load->view('layout/master',$data);
    }

    public function insert_forum($lsn_id)
    {
//
        $data['cfr_title'] = $this->input->post('judul_forum');
        $data['cfr_desc'] = $this->input->post('deskripsiforum');
        $data['usr_id'] = $this->session->userdata('id');
        $data['lsn_id'] = $lsn_id;
        $insert = $this->M_Course_Forum->insert_forum($data);

        if($insert)
        {
            $this->session->set_flashdata('data_forum', 'Data Forum Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('data_gagal_forum', 'Data Forum Tidak Berhasil Tersimpan');
        }

        redirect('instruktur/detail_dashboard_forum_instruktur/'.$lsn_id);
    }

    public function edit_forum($cfr_id,$lsn_id)
    {
        $data['dataLesson'] = DB::table('course_forum')
                        ->leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
                        ->where('course_forum.cfr_id',$cfr_id)
                        ->first();
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/edit_forum';
        $this->load->view('layout/master',$data);
    }

    public function update_forum($cfr_id,$lsn_id)
    {
        $data['cfr_id'] = $cfr_id;
        $data['cfr_title'] = $this->input->post('judul_forum');
        $data['cfr_desc'] = $this->input->post('deskripsiforum');
        $data['lsn_id'] = $lsn_id;
        $update = $this->M_Course_Forum->update_forum($data);

        if($update){
            $this->session->set_flashdata('data_forum', 'Data Forum Berhasil Terupdate');
        }else{
            $this->session->set_flashdata('data_gagal_forum', 'Data Forum Tidak Berhasil Terupdate');
        }

        redirect('instruktur/detail_dashboard_forum_instruktur/'.$lsn_id);

    }

    public function delete_forum($cfr_id,$lsn_id)
    {
        $deleteForum = DB::table('course_forum')->where('cfr_id',$cfr_id)->delete();
        $deleteThread= DB::table('course_forum_thread')->where('cfr_id',$cfr_id)->delete();

        if($deleteForum)
        {
            $this->session->set_flashdata('data_forum', 'Data Forum Berhasil Terhapus');
        }else{
            $this->session->set_flashdata('data_gagal_forum', 'Data Forum Tidak Berhasil Terhapus');
        }
        redirect('instruktur/detail_dashboard_forum_instruktur/'.$lsn_id);
    }



}
