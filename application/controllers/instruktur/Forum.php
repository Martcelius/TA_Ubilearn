<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Forum extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
    }
    
    public function index()
    {
        $data['content'] = 'instruktur/MyCourse';
        $data['courses'] = DB::table('course')
                            ->join('users', 'users.usr_id', '=', 'course.usr_id')
                            ->where('course.usr_id', '=', 3)
                            ->get();
        $data['nama_instruktur'] = DB::table('course')
                                                ->join('users', 'users.usr_id', '=', 'course.usr_id')
                                                ->where('course.usr_id', '=', 3)
                                                ->select('usr_firstname', 'usr_lastname')
                                                ->first();
        $this->load->view('layout/master', $data);
    }

    /* CRUD Course */
    public function add()
    {
        $this->load->view('instruktur/add_course');
    }

    public function insert()
    {
        
        $course = new M_Course();

        $course->crs_code = $_POST['m-kode-course'];
        $course->crs_name = $_POST['m-nama-course'];
        $course->crs_summary = $_POST['m-deskripsi-course'];
        $course->crs_univ = $_POST['m-univ-course'];
        $course->cat_id = 1;
        $course->usr_id = 3;

        try {
            if ($course->save()) {
                echo "Injeksi";
            } else {
                echo "Gagal";
            }
        } catch(Illuminate\Database\QueryException $e) {
            echo $e->getMessage();
        }
    }

    public function edit($id = NULL)
    {
        $this->load->view('instruktur/add_course');

        $course->crs_code = $_POST['m-kode-course'];
        $course->crs_name = $_POST['m-nama-course'];
        $course->crs_summary = $_POST['m-deskripsi-course'];
        $course->crs_univ = $_POST['m-univ-course'];
        $course->cat_id = 1;

        $course_update = M_Course::find(1);
        $course_update->crs_code = $course->crs_code;
        $course_update->crs_name = $course->crs_name;
        $course_update->crs_summary = $course->crs_summary;
        $course_update->crs_univ = $course->crs_univ;
        $course_update->cat_id = $course->cat_id;

    }

    public function update($id = NULL)
    {
        $course_update->save();
    }

    public function delete($id = NULL)
    {
        $course = M_Course::find($id);
        $course->delete();
    }
}
