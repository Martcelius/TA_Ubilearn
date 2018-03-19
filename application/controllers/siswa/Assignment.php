<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Assignment extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

    }

    public function index($asg_id)
    {

        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/assignment_detail';
        $data['assignment']=  M_Course_Assignment::leftJoin("course","course.crs_id","=","course_assignment.crs_id")
            ->where("asg_id","=", $asg_id)
            ->first();


        $data['course'] = M_Course::leftJoin('users','users.usr_id', '=','course.usr_id')
            ->where("crs_id", '=',$data['assignment']->crs_id)
            ->first();
//
        $data['data_instruktur'] = M_Course_Assignment::where("asg_id", $asg_id)->first();
//        dd($data['data_instruktur']->asg_attachment);
        $dt= date('Y-m-d h:i:s');
        $cek_user = $this->M_Course_Assignment_Submission->cek_user($asg_id,'usr_id',$this->session->userdata['id']);
        if (empty($cek_user))
        {
            //blm ngumpulin
            if($dt <= $data['assignment']->asg_duedate)
            {
                $this->session->set_flashdata('on_time', 'Anda belum mengumpulkan tugas');
            } elseif ($dt >= $data['assignment']->asg_duedate)
            {
                $this->session->set_flashdata('out_time', 'Anda telat, segara kumpulkan tugas!');
            }
        } else
        {
            //ngumpulin
            $this->session->set_flashdata('done', 'Anda sudah mengumpulkan tugas');


        }
        $this->load->view('layout/master', $data);
    }

    public function upload_assignment($asg_id)
    {
        $file = "file_siswa".time();
        $config['upload_path'] ='./res/assets/File_siswa';
        $config['allowed_types'] = 'doc|csv|pptx|pdf|docx|xlxs|xls|rar|zip';
        $config['file_name'] = $file;
        $this->load->library('upload',$config);
        $this->upload->do_upload('asg_attachment');
        $result = $this->upload->data();
        $data['assignment'] =  M_Course_Assignment::leftJoin("course","course.crs_id","=","course_assignment.crs_id")
            ->where("asg_id","=", $asg_id)
            ->first();
        $dt= date('Y-m-d h:i:s');
        $data_asg = array(
            'file' => $result['file_name'],
            'usr_id' => $this->session->userdata['id'],
            'time_created' => $dt,
            'due_date' => $data['assignment']->asg_duedate
        );
//        dd($data_asg['file']);

        $cek_user = $this->M_Course_Assignment_Submission->cek_user($asg_id,'usr_id',$this->session->userdata['id']);
        if($result['is_image'])
        {

        }
        elseif (empty($cek_user)){
//            dd($data_asg);
            $insert = $this->M_Course_Assignment_Submission->insert($data_asg,$asg_id);
        }
        else {
            $this->session->set_flashdata('submit', 'Berkas tidak terupload! Anda sudah mengumpulkan tugas ini.');
        }
        redirect('siswa/assignment_detail/'.$asg_id);

    }
}