<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Assignment extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_Course_Assignment');
        
    }

    public function add_assignment($crs_id)
    {
        $data['sidebar']    = 'layout/sidebar_instruktur';
        $data['content']    = 'instruktur/add_assignment';
        $data['crs_id']  = $crs_id;
        // dd($data['crs_id']);
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
        // dd($result['file_name']);

        $data['m-nama-asg'] = $_POST['m-nama-asg'];
        $data['m-deskripsi-asg'] = $_POST['m-deskripsi-asg'];
        $data['asg_date'] = $_POST['asg_date'];
        $data['crs_id'] = $_POST['crs_id'];
        $data['asg_attachment'] = $result['file_name'];
        $insert = $this->M_Course_Assignment->insert($data);
    //    dd($insert);

        if($insert)
        {
            $this->session->set_flashdata('data_lesson', 'Data Course Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('data_lesson_gagal', 'Data Course Tidak Berhasil Tersimpan');
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
        $asing['asg_name'] = $this->input->post('asg_name');
        $asing['asg_waktu'] = $this->input->post('asg_waktu');
        $asing['asg_text'] = empty($this->input->post('asg_text')) ? NULL : $this->input->post('asg_text');
        $asing['asg_id'] = $this->input->post('asg_id');
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
}