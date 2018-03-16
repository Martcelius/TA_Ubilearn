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
        $data['coursetakesiswa']=  DB::table("course_enrol")
                            ->leftJoin("course","course.crs_id","=","course_enrol.crs_id")
                            ->leftJoin("users","users.usr_id","=","course.usr_id")
                            ->where('course_enrol.usr_id',$this->session->userdata('id'))
                            ->get();
                            // dd($data['coursetake']);
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/forum_siswa';
        $this->load->view('layout/master',$data);
    }

    public function dashboard_forum_siswa($crs_id){
        $data['datalessonforum'] = DB::table('course_lesson')
                            ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
                            ->where('course.crs_id',$crs_id)
                            ->get();
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/dashboard_forum_siswa';
        $this->load->view('layout/master',$data);
    }
    
    public function detail_dashboard_forum_siswa($lsn_id)
    {
        $data['datadashboardforum']= DB::table('course_forum')
                                ->leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
                                ->where('course_lesson.lsn_id',$lsn_id)
                                ->get();

        if ($data['datadashboardforum'] != NULL)
        {
            $num=1;
            foreach ($data['datadashboardforum'] as $thread)
            {
                $jumlahThread = M_Course_Forum_Thread::where('cfr_id',$thread->cfr_id)->get();
                $jumlah[$num] = $jumlahThread->count('cfr_id');
                $num++;

            }
            $data['jumlah'] =$jumlah;
            $data['datalesson']= M_Course_lesson::where('lsn_id',$lsn_id)->first();
            $data['sidebar'] = 'layout/sidebar';
            $data['content'] = 'siswa/detail_dashboard_forum_siswa';
            $this->load->view('layout/master',$data);
        }
        else
        {
            $data['jumlah'] = 0;
            $data['datalesson']= M_Course_lesson::where('lsn_id',$lsn_id)->first();
            $data['sidebar'] = 'layout/sidebar';
            $data['content'] = 'siswa/detail_dashboard_forum_siswa';
            $this->load->view('layout/master',$data);
        }
    }

    public function lesson_dashboard_forum($crs_id)
    {
        $data['datalessonforum'] = DB::table('course_lesson')
                            ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
                            ->where('course.crs_id',$crs_id)
                            ->get();
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/dashboard_forum_siswa';
        $this->load->view('layout/master',$data);
    }
}