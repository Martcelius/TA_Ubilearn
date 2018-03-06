<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Content extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        $this->load->model('M_Course_Content');
        $this->load->library('usertracking');
        $this->usertracking->track_this();




    }

    public function index($lsn_id)
    {
        $data['course'] = DB::table('course_lesson')
            ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
            ->leftJoin('users','users.usr_id','=','course.usr_id')
            ->where('course_lesson.lsn_id',$lsn_id)
            ->first();
        $data['contents'] = M_Course_Content::where('lsn_id',$lsn_id)->get();
//        dd($data['content']);


        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/course_materi';
        $this->load->view('layout/master',$data);

    }

    public function contents($cnt_id)
    {
        $data['kontent'] = DB::table('course_content')
            ->leftJoin('course_lesson','course_lesson.lsn_id','=','course_content.lsn_id')
            ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
            ->leftJoin('users','users.usr_id','=','course.usr_id')
            ->where('course_content.cnt_id',$cnt_id)
            ->first();
        $data['LO'] = M_Course_Learning_Outcomes::where('loc_id',$data['kontent']->loc_id)->first();
//        dd($data['kontent']);

        if ($data['kontent']->cnt_type == "Text"){

            $data['content'] = 'siswa/course_content';
        }
        else{

            $data['content'] = 'siswa/course_video';
        }

        $data['sidebar'] = 'layout/sidebar';
        $this->load->view('layout/master',$data);
    }




}