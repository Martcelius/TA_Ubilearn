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
        $data['courses']= M_course::where('course.usr_id', '=', $this->session->userdata('id'))->get();
//        dd($data['courses']);
//        $data['courses']= DB   ->join('users', 'users.usr_id', '=', 'course.usr_id')
//                            ->where('course.usr_id', '=', 4)
//                            ->get();
//        $data['nama_instruktur'] = DB::table('course')
//                                    ->join('users', 'users.usr_id', '=', 'course.usr_id')
//                                    ->where('course.usr_id', '=', 4)
//                                    ->select('usr_firstname', 'usr_lastname')
//                                    ->first();

        // print_r($data['nama_instruktur']);
        // die();::table('course')
//
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
        $course->usr_id = $_POST['usr_id'];
        $insert = $course->save();
//        dd($insert);

        if($insert)
        {
            $this->session->set_flashdata('insert_course', 'Data Course Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('insert_course', 'Data Course Tidak Berhasil Tersimpan');
        }

        redirect('instruktur/add_course');
    }

    public function edit($id)
    {

        $data['course'] = M_Course::where('crs_id',$id)
                                    ->first();
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/edit_course';
        $this->load->view('layout/master',$data);

    }

    public function update($id)
    {
        $course_update = M_Course::find($id);
        $course_update->crs_code = $_POST['m-kode-course'];
        $course_update->crs_name = $_POST['m-nama-course'];
        $course_update->crs_summary = $_POST['m-deskripsi-course'];
        $course_update->crs_univ = $_POST['m-univ-course'];
        $update = $course_update->save();
        if($update)
        {
            $this->session->set_flashdata('data_course', 'Data Course Berhasil Terupdate');
        }else{
            $this->session->set_flashdata('data_course', 'Data Course Tidak Berhasil Terupdate');
        }

        redirect('instruktur/MyCourse');
    }

    public function delete($id)
    {
        $course = M_Course::find($id);
        $course->delete();
    }
    
}
