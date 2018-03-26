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
        $data['datacourse'] = M_Course::where('usr_id',$this->session->userdata('id'))->get();
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

    public function add_forum($crs_id)
    {
        $data['dataaddforum'] = DB::table('course')->where('course.crs_id','=',$crs_id)->first();
        
        $data['datalessonaddforum'] = DB::table('course_lesson')
                                ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
                                ->where('course.crs_id',$crs_id)
                                ->get();
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/add_forum';
        $this->load->view('layout/master',$data);
    }

    public function insert_forum($crs_id)
    {
//
        $data['cfr_title'] = $this->input->post('judul_forum');
        $data['cfr_desc'] = $this->input->post('deskripsiforum');
        $data['usr_id'] = $this->session->userdata('id');
        $data['lsn_id'] = $this->input->post('lsn_id');
        $insert = $this->M_Course_Forum->insert_forum($data);

        if($insert)
        {
            $this->session->set_flashdata('data_forum', 'Data Forum Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('data_gagal_forum', 'Data Forum Tidak Berhasil Tersimpan');
        }

        redirect('instruktur/dashboard_forum_instruktur/'.$crs_id);
    }

    public function edit_forum($cfr_id,$crs_id)
    {
        $data['dataLesson'] = M_Course_Forum::leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
                        ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
                        ->where('course_forum.cfr_id',$cfr_id)
                        ->first();
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/edit_forum';
        $this->load->view('layout/master',$data);
    }

    public function update_forum($cfr_id,$crs_id)
    {
        $data['cfr_id'] = $cfr_id;
        $data['cfr_title'] = $this->input->post('judul_forum');
        $data['cfr_desc'] = $this->input->post('deskripsiforum');
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
        $deleteForum = M_Course_Forum::where('cfr_id',$cfr_id)->delete();

        if($deleteForum)
        {
            $this->session->set_flashdata('data_forum', 'Data Forum Berhasil Terhapus');
        }else{
            $this->session->set_flashdata('data_gagal_forum', 'Data Forum Tidak Berhasil Terhapus');
        }
        redirect('instruktur/dashboard_forum_instruktur/'.$crs_id);
    }



}
