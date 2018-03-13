<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Thread extends CI_Controller {


    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_Course_Forum_Thread');
        $this->load->model('M_Course_Forum');
        $this->load->model('M_Course_Forum_Thread_Reply');
        $this->load->model('M_Course_Forum_Thread_Reply_Reply');
        $this->load->model('M_Course_Forum_Thread_Reply_Reply_Reply');
    }


    public function index()
    {

    }

    public function list_thread_siswa($cfr_id)
    {
        $data['datathreadsiswa'] = DB::table('course_forum_thread')
            ->leftJoin('users','users.usr_id','=','course_forum_thread.usr_id')
            ->where('course_forum_thread.cfr_id',$cfr_id)
            ->get(['course_forum_thread.*','users.usr_username']);
        $data['forumid'] = M_Course_Forum::where('cfr_id',$cfr_id)->first();
        $data['judul_forum'] = M_Course_Forum::where('cfr_id',$cfr_id)->first(['cfr_title']);
        $data['judul_lesson'] = DB::table('course_forum')
            ->leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
            ->where('course_forum.cfr_id',$cfr_id)
            ->first(['course_lesson.lsn_name']);
//        dd($data['judul_lesson']);
        $countreply = M_Course_Forum_Thread_Reply::where('usr_id',$this->session->userdata('id'))->get();
        $jumlahreply = $countreply->count('usr_id');
        $countreplyreply = M_Course_Forum_Thread_Reply_Reply::where('usr_id',$this->session->userdata('id'))->get();
        $jumlahreplyreply = $countreplyreply->count('usr_id');
        $countreplyreplyreply = M_Course_Forum_Thread_Reply_Reply_Reply::where('usr_id',$this->session->userdata('id'))->get();
        $jumlahreplyreplyreply = $countreplyreplyreply->count('usr_id');
        $sumreply = $jumlahreply+$jumlahreplyreply+$jumlahreplyreplyreply;
        $data['sumreply'] = $sumreply;
        //dd($data['sumreply']);
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/list_thread_siswa';
        $this->load->view('layout/master',$data);
    }

    public function add_thread_siswa($cfr_id)
    {
        $data['datathreadforumsiswa'] = M_Course_Forum::where('cfr_id',$cfr_id)->first();
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/add_thread_siswa';
        $this->load->view('layout/master',$data);
    }

    public function insert_thread_siswa($cfr_id)
    {
//
        $data['cft_title'] = $this->input->post('judul_thread');
        $data['cft_content'] = $this->input->post('isithreadforum');
        $data['usr_id'] = $this->session->userdata('id');
        $data['cfr_id'] = $cfr_id;
        $insert = $this->M_Course_Forum_Thread->insert_thread_siswa($data);

        if($insert)
        {
            $this->session->set_flashdata('data_thread', 'Data Thread Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('data_gagal_thread', 'Data Thread Tidak Berhasil Tersimpan');
        }

        redirect('siswa/list_thread_siswa/'.$cfr_id);
    }

    public function edit_thread_siswa($cft_id,$cfr_id)
    {
        $data['datathread'] = DB::table('course_forum_thread')
                        ->leftJoin('course_forum','course_forum.cfr_id','=','course_forum.cfr_id')
                        ->where('course_forum_thread.cft_id',$cft_id)
                        ->first();
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/edit_thread_siswa';
        $this->load->view('layout/master',$data);
    }

    public function update_thread_siswa($cft_id,$cfr_id)
    {
        $data['cft_id'] = $cft_id;
        $data['cft_title'] = $this->input->post('judul_thread');
        $data['cft_content'] = $this->input->post('isithreadforum');
        $data['cfr_id'] = $cfr_id;
        $update = $this->M_Course_Forum_Thread->update_thread_siswa($data);

        if($update){
            $this->session->set_flashdata('data_thread', 'Data Thread Berhasil Terupdate');
        }else{
            $this->session->set_flashdata('data_gagal_thread', 'Data Thread Tidak Berhasil Terupdate');
        }

        redirect('siswa/list_thread_siswa/'.$cfr_id);

    }

    public function delete_thread_siswa($cft_id,$cfr_id)
    {
        $deleteThread= DB::table('course_forum_thread')->where('cft_id',$cft_id)->delete();

        if($deleteForum)
        {
            $this->session->set_flashdata('data_thread', 'Data Thread Berhasil Terhapus');
        }else{
            $this->session->set_flashdata('data_gagal_thread', 'Data Thread Tidak Berhasil Terhapus');
        }
        redirect('siswa/list_thread_siswa/'.$cfr_id);
    }

    public function detail_thread_siswa($cft_id)
    {
        $data['dataforumthread'] = DB::table('course_forum')
                                ->leftJoin('course_forum_thread','course_forum_thread.cfr_id','=','course_forum.cfr_id')
                                ->leftJoin('users','users.usr_id','=','course_forum_thread.usr_id')
                                ->where('course_forum_thread.cft_id',$cft_id)
                                ->first();
                                //dd($data['dataawalthread']);

        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/detail_thread_siswa';
        $this->load->view('layout/master',$data);
    }

    public function insert_komentar_reply($cft_id)
    {
        $data['ftr_content'] = $this->input->post('forum_komentarr');
        $data['usr_id'] = $this->session->userdata('id');
        $data['cft_id'] = $cft_id;
        $insert = $this->M_Course_Forum_Thread_Reply->insert_thread_reply($data);

        redirect('siswa/detail_thread_siswa/'.$cft_id);
    }

    public function insert_komentar_reply_reply($ftr_id,$cft_id)
    {
        $data['trr_content'] = $this->input->post('forum_komentar1');
        $data['ftr_id'] = $ftr_id;
        $data['usr_id'] = $this->session->userdata('id');
        $insert = $this->M_Course_Forum_Thread_Reply_Reply->insert_thread_reply_reply($data);

        redirect('siswa/detail_thread_siswa/'.$cft_id);
    }

    public function insert_komentar_reply_reply_reply($trr_id,$cft_id)
    {
        $data['rrr_content'] = $this->input->post('forum_komentar2');
        $data['usr_id'] = $this->session->userdata('id');
        $data['trr_id'] = $trr_id;
        $insert = $this->M_Course_Forum_Thread_Reply_Reply_Reply->insert_thread_reply_reply_reply($data);

        redirect('siswa/detail_thread_siswa/'.$cft_id);
    }

    public function delete_komentar_reply($ftr_id,$cft_id)
    {
        $deleteThread= DB::table('Course_Forum_Thread_Reply')->where('ftr_id',$ftr_id)->delete();

        if($deleteForum)
        {
            $this->session->set_flashdata('data_komentar_reply', 'Data Thread Berhasil Terhapus');
        }else{
            $this->session->set_flashdata('data_gagal_komentar_reply', 'Data Thread Tidak Berhasil Terhapus');
        }
        redirect('siswa/detail_thread_siswa/'.$cft_id);
    }

    public function delete_komentar_reply_reply($trr_id,$cft_id)
    {
        $deleteThread= DB::table('Course_Forum_Thread_Reply_Reply')->where('trr_id',$trr_id)->delete();

        if($deleteForum)
        {
            $this->session->set_flashdata('data_komentar_reply_reply', 'Data Thread Berhasil Terhapus');
        }else{
            $this->session->set_flashdata('data_gagal_komentar_reply_reply', 'Data Thread Tidak Berhasil Terhapus');
        }
        redirect('siswa/detail_thread_siswa/'.$cft_id);
    }

    public function delete_komentar_reply_reply_reply($rrr_id,$cft_id)
    {
        $deleteThread= DB::table('Course_Forum_Thread_Reply_Reply_Reply')->where('rrr_id',$rrr_id)->delete();

        if($deleteForum)
        {
            $this->session->set_flashdata('data_komentar_reply_reply', 'Data Thread Berhasil Terhapus');
        }else{
            $this->session->set_flashdata('data_gagal_komentar_reply_reply', 'Data Thread Tidak Berhasil Terhapus');
        }
        redirect('siswa/detail_thread_siswa/'.$cft_id);
    }

}
