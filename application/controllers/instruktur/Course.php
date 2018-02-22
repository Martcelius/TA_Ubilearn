<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Course extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        
        $this->load->model('M_Course');
        
    }
    
    public function index()
    {
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/MyCourse';
        // $test= M_course::where('course.usr_id', '=', 2)
        //                 ->join('users', 'users.usr_id', '=', 'course.usr_id')
        //                 ->get();
        $data['courses']= DB::table('course')
                            ->join('users', 'users.usr_id', '=', 'course.usr_id')
                            ->where('course.usr_id', '=', 13)
                            ->get();
        $data['nama_instruktur'] = DB::table('course')
                                    ->join('users', 'users.usr_id', '=', 'course.usr_id')
                                    ->where('course.usr_id', '=', 13)
                                    ->select('usr_firstname', 'usr_lastname')
                                    ->first();
        // print_r($data['nama_instruktur']);
        // die();
        $this->load->view('layout/master', $data);
    }

    /* CRUD Course */
  
    public function add()
    {
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = "instruktur/add_course";
        $this->load->view('layout/master',$data);
    }

    public function insert()
    {
        
        $course = new M_Course();

        $course->crs_code = $_POST['m-kode-course'];
        $course->crs_name = $_POST['m-nama-course'];
        $course->crs_summary = $_POST['m-deskripsi-course'];
        $course->crs_univ = $_POST['m-univ-course'];
        $course->cat_id = 1;
        $course->usr_id = 4;

        try {
            if ($course->save()) {
                redirect('instruktur/MyCourse','refresh');
            } else {
                echo "Gagal";
            }
        } catch(Illuminate\Database\QueryException $e) {
            echo $e->getMessage();
        }
    }

    public function edit($id)
    {

        $data['course'] = M_Course::where('crs_id',$id)
                                    ->first();
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/edit_course';
        $this->load->view('layout/master',$data);

    }

    public function update($id = NULL)
    {
        
        $course->crs_code = $_POST['m-kode-course'];
        $course->crs_name = $_POST['m-nama-course'];
        $course->crs_summary = $_POST['m-deskripsi-course'];
        $course->crs_univ = $_POST['m-univ-course'];

        $course_update = M_Course::find($id);
        $course_update->crs_code = $course->crs_code;
        $course_update->crs_name = $course->crs_name;
        $course_update->crs_summary = $course->crs_summary;
        $course_update->crs_univ = $course->crs_univ;
        $course_update->save();

    }

    public function delete($id = NULL)
    {
        $course = M_Course::find($id);
        $course->delete();
    }
    
}
