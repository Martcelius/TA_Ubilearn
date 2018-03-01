<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Forum extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();

        $this->load->model('M_User');
        $this->load->model('M_Course');
        $this->load->model('M_Course_Forum');
        $this->load->model('M_Course_Forum_Thread');
        $this->load->model('M_Course_Lesson');
    }

    public function index()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/forum_siswa';
        $data['coursetake']=  DB::table("course_enrol_detail")
                            ->leftJoin("course","course.crs_id","=","course_enrol_detail.crs_id")
                            ->leftJoin("users","users.usr_id","=","course.usr_id")
                            ->where('course_enrol.usr_id',$this->session->userdata('id'))
                            ->get();
                            //dd($data['coursetake']);

        $data['lessondata'] = DB::table("course_enrol_detail")
                            ->leftJoin("course","course.crs_id","=","course_enrol_detail.crs_id")
                            ->leftJoin("course_lesson","course_lesson.crs_id","=","course.crs_id")
                            ->where('course_enrol.usr_id',$this->session->userdata('id'))
                            ->get();
                            //dd($data['lessondata']);

        $data['listforumlesson'] = DB::table("course_enrol_detail")
                            ->leftJoin("course","course.crs_id","=","course_enrol_detail.crs_id")
                            ->leftJoin("course_lesson","course_lesson.crs_id","=","course.crs_id")
                            ->leftJoin("course_forum","course_forum.lsn_id","=","course_lesson.lsn_id")
                            ->where('course_enrol.usr_id',$this->session->userdata('id'))
                            ->get();
                            //dd($data['listforum']);

        $data['dataforum'] = DB::table("course_forum")
                            ->leftJoin("course_lesson","course_lesson.lsn_id","=","course_forum.lsn_id")
                            ->leftJoin("course","course.crs_id","=","course_lesson.crs_id")
                            ->leftJoin("course_enrol","course_enrol.crs_id","=","course.crs_id")
                            ->where('course_enrol.usr_id',$this->session->userdata('id'))
                            ->get();


        if ($data['dataforum'] != NULL)
        {
            $num=1;
            foreach ($data['dataforum'] as $thread)
            {
                $jumlahThread = M_Course_Forum_Thread::where('cfr_id',$thread->cfr_id)->get();
                $jumlah[$num] = $jumlahThread->count('cfr_id');
                $num++;

            }
            $data['jumlah'] =$jumlah;
            $this->load->view('layout/master',$data);
        }
        else
        {
            $data['jumlah'] =0;
            $this->load->view('layout/master',$data);
        }
    }

    public function dashboard_forum_instruktur($crs_id)
    {

        
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
        
    
}