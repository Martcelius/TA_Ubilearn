<?php
defined('BASEPATH') OR exit('No direct script access allowed');
use Illuminate\Database\Capsule\Manager as DB;
class Assignment extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('level')=="2") {
            redirect('siswa/dashboard');
        } else if ($this->session->userdata('level')=="1") {
            redirect('admin/dashboard');
        } else if ($this->session->userdata('level') == NULL) {
            redirect('');
        }
    }

    public function add_assignment($crs_id)
    {
        $data['sidebar']    = 'layout/sidebar_instruktur';
        $data['content']    = 'instruktur/add_assignment';
        $data['dataLO'] = M_Course_Learning_Outcomes::where('crs_id','=',$crs_id)->get();

        $data['crs_id']  = $crs_id;
//         dd($data['dataLO']);
        $this->load->view('layout/master', $data);
    }

    public function insert()
    { 
        $file = $this->input->post('m-nama-asg').time();
        $config['upload_path'] ='./res/assets/file';
        $config['allowed_types'] = 'doc|csv|pdf|docx|xlsx|xls|rar';
        $config['file_name'] = $file;
        $this->load->library('upload',$config);
        $this->upload->do_upload('asg-name');
        $result= $this->upload->data();

        $data['m-nama-asg'] = $this->input->post('m-nama-asg');
        $data['m-deskripsi-asg'] = $this->input->post('m-deskripsi-asg');
        $data['asg_date'] = empty($this->input->post('asg_date')) ? NULL : $this->input->post('asg_date');
        $data['crs_id'] = $this->input->post('crs_id');
        if ($this->upload->do_upload('asg-name') == TRUE){
            $data['asg_attachment'] = $result['file_name'];
        }else{
            $data['asg_attachment'] = NULL;
        }

        $insert = $this->M_Course_Assignment->insert($data);
        
        $lo = $this->input->post('Loc[]');
        
        $data_lo['lo_asg_id'] = $insert;
        $lo_db = $this->M_Course_Assignment_loc->insert($lo,$data_lo);
//        dd($data_lo['lo_asg_id']);
		if($insert != NULL)        {
            $cruses = M_Course_Enrol::where('crs_id', '=', $this->input->post('crs_id'))->get();

            foreach ($cruses as $crus):
                $notif_content['ntf_type'] = "ASG";
                $notif_content['ntf_instructor'] = $this->session->userdata('firstname')." ".$this->session->userdata('lastname');
                $notif_content['ntf_message'] = "Menambahkan assignment baru.";
                $notif_content['ntf_read'] = "N";
                $notif_content['ass_id'] = NULL;
                $notif_content['lsn_id'] = NULL;
                $notif_content['asg_id'] = $insert;
                $notif_content['usr_id'] = $crus->usr_id;
                $insert_notif = $this->M_Notification->insert($notif_content);
            endforeach;
            $this->session->set_flashdata('data_lesson', 'Data Assignment Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('data_lesson_gagal', 'Data Assignment Tidak Berhasil Tersimpan');
        }

        redirect('instruktur/lesson/'.$data['crs_id']);
    }

    
    public function edit_asing($id)
    {
        $data['dataasing'] = M_Course_Assignment::where('asg_id',$id)->first();
        $data['sidebar'] = "layout/sidebar_instruktur";
        $data['content'] = "instruktur/edit_assignment";
        $this->load->view('layout/master', $data);

    }

    public function update_asing()
    {
        $file = $this->input->post('m-nama-asg').time();
        $config['upload_path'] ='./res/assets/file';
        $config['allowed_types'] = 'doc|csv|pdf|docx|xlsx|xls|rar';
        $config['file_name'] = $file;
        $this->load->library('upload',$config);
        $this->upload->do_upload('asg-name');
        $result= $this->upload->data();

        $asing['m-nama-asg'] = $this->input->post('m-nama-asg');
        $asing['m-deskripsi-asg'] = $this->input->post('m-deskripsi-asg');
        $asing['asg_date'] = empty($this->input->post('asg_date')) ? NULL : $this->input->post('asg_date');
        if ($this->upload->do_upload('asg-name') == TRUE){
            $asing['asg_attachment'] = $result['file_name'];
        }else{
            $asing['asg_attachment'] = NULL;
        }
//        dd( $data['asg_attachment']);
        $asing['asg_id'] = $_POST['asg_id'];
        $crs_id = M_Course_Assignment::where('asg_id',$asing['asg_id'])->first(['crs_id']);
        // dd($crs_id->crs_id);

        $update = $this->M_Course_Assignment->update_asing($asing);

        if($update)
        {
            $this->session->set_flashdata('data_lesson', 'Data Assignment Berhasil Terupdate');
        }else{
            $this->session->set_flashdata('data_lesson_gagal', 'Data Assignment Tidak Berhasil Terupdate');
        }
        
        redirect('instruktur/lesson/'.$crs_id->crs_id);        
    }
    public function delete_asing($id)
    {
        $deleteasing = M_Course_Assignment::where('asg_id',$id)->first();
        $asingDelete= $deleteasing->delete();
            
            if($asingDelete)
            {
                $this->session->set_flashdata('data_lesson', 'Data Assignment Berhasil Terhapus');
            }else{
                $this->session->set_flashdata('data_lesson_gagal', 'Data Assignment Tidak Berhasil Terhapus');
            }
            
        redirect('instruktur/lesson/'.$deleteasing->crs_id);
    }
    public function result_siswa_assignment($asg_id)
    {
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/result_siswa_assignment';
        $data['assignment'] = M_Course_Assignment::leftJoin("course", "course.crs_id","=","course_assignment.crs_id")
            ->leftJoin("users","users.usr_id","=","course.usr_id")
            ->where("course_assignment.asg_id", $asg_id)->first();

        $data['assignment_siswa'] =  M_Course_Assignment_Submission::leftJoin("course_assignment", "course_assignment.asg_id", "=", "course_assignment_submission.asg_id")
            ->leftJoin("users","users.usr_id","=","course_assignment_submission.usr_id")
            ->where("course_assignment_submission.asg_id", $asg_id)->get();
//        dd($data['assignment']);
        $this->load->view('layout/master', $data);
    }
}