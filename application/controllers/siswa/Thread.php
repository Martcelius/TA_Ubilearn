<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Thread extends CI_Controller {


    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('level')=="1") {
            redirect('admin/dashboard');
        } else if ($this->session->userdata('level')=="3") {
            redirect('instruktur/dashboard');
        } else if ($this->session->userdata('level') == NULL) {
            redirect('');
        } else {
            if($this->session->userdata('ls') == 0){
                redirect('siswa/kuesioner_ls');
            }
            else if($this->session->userdata('tr') == 0){
                redirect('siswa/kuesioner_tr');
            }
        }
    }


    public function index()
    {

    }

    public function list_thread_siswa($cfr_id)
    {
        $data['datathreadsiswa'] = M_Course_Forum_Thread::leftJoin('users','users.usr_id','=','course_forum_thread.usr_id')
                                ->where('course_forum_thread.cfr_id',$cfr_id)
                                ->get(['course_forum_thread.*','users.usr_firstname','users.usr_lastname']);
        $data['forumid'] = M_Course_Forum::where('cfr_id',$cfr_id)->first();
        $data['judul_lesson'] = M_Course_Forum::leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
                            ->where('course_forum.cfr_id',$cfr_id)
                            ->first(['course_lesson.lsn_name']);
 
        $sumpost[] = 0;
        if($data['datathreadsiswa'] != NULL)
        {
            $index = 1;
            foreach($data['datathreadsiswa'] as $datathread)
            {
                $datathreadforum[$index] = $datathread->cft_id;

                $countreply = M_Course_Forum_Thread_Reply::leftJoin('course_forum_thread','course_forum_thread.cft_id','=','course_forum_thread_reply.cft_id')
                            ->where('course_forum_thread.cft_id',$datathreadforum[$index])
                            ->where('course_forum_thread_reply.usr_id',$this->session->userdata('id'))
                            ->get();
                $jumlahreply = $countreply->count('usr_id');
                $countreplyreply = M_Course_Forum_Thread_Reply_Reply::leftJoin('course_forum_thread_reply','course_forum_thread_reply.ftr_id','=','course_forum_thread_reply_reply.ftr_id')
                            ->leftJoin('course_forum_thread','course_forum_thread.cft_id','=','course_forum_thread_reply.cft_id')
                            ->where('course_forum_thread.cft_id',$datathreadforum[$index])
                            ->where('course_forum_thread_reply_reply.usr_id',$this->session->userdata('id'))
                            ->get();
                $jumlahreplyreply = $countreplyreply->count('usr_id');
                $countreplyreplyreply = M_Course_Forum_Thread_Reply_Reply_Reply::leftJoin('course_forum_thread_reply_reply','course_forum_thread_reply_reply.trr_id','=','course_forum_thread_reply_reply_reply.trr_id')
                            ->leftJoin('course_forum_thread_reply','course_forum_thread_reply.ftr_id','=','course_forum_thread_reply_reply.ftr_id')
                            ->leftJoin('course_forum_thread','course_forum_thread.cft_id','=','course_forum_thread_reply.cft_id')
                            ->where('course_forum_thread.cft_id',$datathreadforum[$index])
                            ->where('course_forum_thread_reply_reply_reply.usr_id',$this->session->userdata('id'))
                            ->get();
                $jumlahreplyreplyreply = $countreplyreplyreply->count('usr_id');
                $sumreply = $jumlahreply+$jumlahreplyreply+$jumlahreplyreplyreply;

                $sumpost[$index] = $sumreply;
                $index++;
            } 
            $data['jumlahpost'] = $sumpost;
            $data['sidebar'] = 'layout/sidebar';
            $data['content'] = 'siswa/list_thread_siswa';
            $this->load->view('layout/master',$data);  
        }
        else
        {
            $jumlahpost = 0;
            $data['jumlahpost'] = $jumlahpost;
            $data['sidebar'] = 'layout/sidebar';
            $data['content'] = 'siswa/list_thread_siswa';
            $this->load->view('layout/master',$data); 
        }
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
        $data['cft_title'] = $this->input->post('judul_thread');
        $data['cft_content'] = $this->input->post('isithreadforum');
        $data['usr_id'] = $this->session->userdata('id');
        $data['cfr_id'] = $cfr_id;
        $insert = $this->M_Course_Forum_Thread->insert_thread_siswa($data);
        $datauser = M_User::where('usr_id', $this->session->userdata('id'))->first();
        $iduser = $this->session->userdata('id');
        $sumthreaduser = $datauser->usr_thread_count;
        $sumthreaduser++;
        $incthreaduser = $this->M_User->update_thread_count($sumthreaduser,$iduser);

        if($insert)
        {
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "Create Thread:" . " " . $data['cft_title'],
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "Create Thread",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " " 
                ."melakukan aksi Create Thread" . " '" . $data['cft_title'] . "'"
            );
            $this->lib_event_log->add_user_event($event);

            //activity_count
            $data_course = M_Course_Forum::leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
                ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
                ->where('course_forum.cfr_id',$cfr_id)->first(['course.crs_id']);
            $data_user = DB::table('activity_count')
                ->where('usr_id',$this->session->userdata('id'))->first(['usr_id']);

            if ($data_user == NULL){
                DB::table('activity_count')->insert(['usr_id' => $this->session->userdata('id'),'crs_id' => $data_course->crs_id,'create_thread' => 1]);
            }else{
                $cek_course = DB::table('activity_count')->where('crs_id',$data_course->crs_id)->first(['crs_id']);
                if ($cek_course == NULL){
                    DB::table('activity_count')->insert(['usr_id' => $this->session->userdata('id'),'crs_id' => $data_course->crs_id,'create_thread' => 1]);
                }else{
                    DB::table('activity_count')
                        ->where('usr_id','=', $this->session->userdata('id'))
                        ->where('crs_id','=', $cek_course->crs_id)
                        ->increment('create_thread');
                }
            }
            //end activity_count

            $this->session->set_flashdata('data_thread', 'Data Thread Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('data_gagal_thread', 'Data Thread Tidak Berhasil Tersimpan');
        }

        redirect('siswa/list_thread_siswa/'.$cfr_id);
    }

    public function edit_thread_siswa($cft_id,$cfr_id)
    {
        $data['datathread'] = M_Course_Forum_Thread::leftJoin('course_forum','course_forum.cfr_id','=','course_forum_thread.cfr_id')
                        ->where('course_forum_thread.cft_id',$cft_id)
                        ->first();

        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/edit_thread_siswa';
        $this->load->view('layout/master',$data);
    }

    public function update_thread_siswa($cft_id,$cfr_id)
    {
        //dd($cfr_id);
        $data['cft_id'] = $cft_id;
        $data['cft_title'] = $this->input->post('judul_thread');
        $data['cft_content'] = $this->input->post('isithreadforum');
        $data['cfr_id'] = $cfr_id;
        $update = $this->M_Course_Forum_Thread->update_thread_siswa($data);

        if($update){
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "Edit Thread:" . " " . $data['cft_title'],
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "Edit Thread",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " " 
                ."melakukan aksi Edit Thread" . " '" . $data['cft_title'] . "'"
            );
            $this->lib_event_log->add_user_event($event);

            $this->session->set_flashdata('data_thread', 'Data Thread Berhasil Terupdate');
        }else{
            $this->session->set_flashdata('data_gagal_thread', 'Data Thread Tidak Berhasil Terupdate');
        }

        redirect('siswa/list_thread_siswa/'.$cfr_id);

    }

    public function delete_thread_siswa($cft_id,$cfr_id)
    {
        $data['dataforumthread'] = M_Course_Forum_Thread::where('cft_id',$cft_id)->first();
        $deleteThread= M_Course_Forum_Thread::where('cft_id',$cft_id)->delete();
        $datauser = M_User::where('usr_id', $this->session->userdata('id'))->first();
        $iduser = $this->session->userdata('id');
        $jumlahthreaduser = $datauser->usr_thread_count;
        $jumlahthreaduser--;
        $decthreaduser = $this->M_User->update_thread_count($jumlahthreaduser,$iduser);

        if($deleteThread)
        {
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "Delete Thread:" . " " . $data['dataforumthread']->cft_title,
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "Delete Thread",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " " 
                ."melakukan aksi Delete Thread" . " '" . $data['dataforumthread']->cft_title . "'"
            );
            $this->lib_event_log->add_user_event($event);

            $this->session->set_flashdata('data_thread', 'Data Thread Berhasil Terhapus');
        }else{
            $this->session->set_flashdata('data_gagal_thread', 'Data Thread Tidak Berhasil Terhapus');
        }
        redirect('siswa/list_thread_siswa/'.$cfr_id);
    }

    public function detail_thread_siswa($cft_id)
    {
        $data['dataforumthread'] = M_Course_Forum::leftJoin('course_forum_thread','course_forum_thread.cfr_id','=','course_forum.cfr_id')
                                ->leftJoin('users','users.usr_id','=','course_forum_thread.usr_id')
                                ->where('course_forum_thread.cft_id',$cft_id)
                                ->first();

        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/detail_thread_siswa';
        $this->load->view('layout/master',$data);
    }

    public function insert_komentar_reply($cft_id,$cfr_id)
    {
        $data['ftr_content'] = $this->input->post('forum_komentarr');
        $cfu_sumword = str_replace('</p><p>','',$data['ftr_content']);
        $cfu_sumword = strip_tags($cfu_sumword);
        $cfu_sumword = str_replace("&nbsp;", '', $cfu_sumword);
        $cfu_sumword = str_word_count($cfu_sumword);
        
        $data['usr_id'] = $this->session->userdata('id');
        $data['cft_id'] = $cft_id;
        $idftr = $this->M_Course_Forum_Thread_Reply->insert_thread_reply($data);
        $insert = $this->M_Rating_Reply->insert_id_rating($idftr);

        $datauser = M_User::where('usr_id', $this->session->userdata('id'))->first();
        $iduser = $this->session->userdata('id');
        $jumlahpostuser = $datauser->usr_post_count;
        $jumlahpostuser++;
        $incpostuser = $this->M_User->update_post_count($jumlahpostuser,$iduser);

        $datauserupdate = M_Course_Forum_User::where('usr_id','=',$iduser)
                                        ->where('cfr_id','=', $cfr_id)
                                        ->first();

        $cfu_id = $datauserupdate->cfu_id;

        $datainputsumword = $this->M_Course_Forum_User->updatesumword_forum_user($cfu_id,$cfu_sumword);

        $cekuser = M_Course_Forum_Thread::leftJoin('users','users.usr_id','=','course_forum_thread.usr_id')
                                        ->where('cft_id','=',$cft_id)->first();

        if($cekuser->usr_id == $iduser)
        {
            //Update Total Messages
            $updatesummsg =$this->M_Course_Forum_User->updatesummsg_forum_user($cfu_id);
        }
        else
        {
            //Update Total Messages
            $updatesummsg =$this->M_Course_Forum_User->updatesummsg_forum_user($cfu_id);

            //Update Message out
            $updatemsgout = $this->M_Course_Forum_User->updatemsgout_forum_user($cfu_id);

            if($cekuser->usr_level == 2)
            {
                //update Message in
                $datausermsgin = M_Course_Forum_User::where('usr_id','=',$cekuser->usr_id)
                ->where('cfr_id','=',$cfr_id)
                ->first();
                $cfuser_id = $datausermsgin->cfu_id;

                $updatemsgin = $this->M_Course_Forum_User->updatemsgin_forum_user($cfuser_id);
                
                //Update Centrality
                $datausercentrality = M_Course_Forum_User::where('usr_id','=',$iduser)
                            ->where('cfr_id','=',$cfr_id)
                            ->first();

                $cfu_centralitymsgout = $datausercentrality->cfu_msgout;
                $jumlahsiswa = M_Course_Forum_User::where('cfr_id','=',$cfr_id)->count();
                $jumlahsiswa = $jumlahsiswa-1;

                if ($cfu_centralitymsgout >= $jumlahsiswa)
                {
                    $cfu_centralitymsgout = $jumlahsiswa;

                    $cfu_centrality = $cfu_centralitymsgout/$jumlahsiswa;

                    $cfu_centrality = number_format((float)$cfu_centrality,3,'.','');

                    $updatecentrality = $this->M_Course_Forum_User->updatecentrality_forum_user($cfu_id,$cfu_centrality);
                }
                else
                {
                    $cfu_centrality = $cfu_centralitymsgout/$jumlahsiswa;

                    $cfu_centrality = number_format((float)$cfu_centrality,3,'.','');

                    $updatecentrality = $this->M_Course_Forum_User->updatecentrality_forum_user($cfu_id,$cfu_centrality);
                }
            }
        }

        //Update Prestige
        $datauserprestige = M_Course_Forum_User::where('usr_id','=',$cekuser->usr_id)
                                            ->where('cfr_id','=',$cfr_id)
                                            ->first();

        $cfu_idprestige = $datauserprestige->cfu_id;
        $cfu_prestigemsgin = $datauserprestige->cfu_msgin;
        
        $jumlahsiswa = M_Course_Forum_User::where('cfr_id','=',$cfr_id)->count();
        $jumlahsiswa = $jumlahsiswa-1;

        if ($cfu_prestigemsgin >= $jumlahsiswa)
        {
            $cfu_prestigemsgin = $jumlahsiswa;
            
            $cfu_prestige = $cfu_prestigemsgin/$jumlahsiswa;

            $cfu_prestige = number_format((float)$cfu_prestige,3,'.','');

            $updateprestige = $this->M_Course_Forum_User->updateprestige_forum_user($cfu_idprestige,$cfu_prestige);
        }
        else
        {
            $cfu_prestige = $cfu_prestigemsgin/$jumlahsiswa;

            $cfu_prestige = number_format((float)$cfu_prestige,3,'.','');

            $updateprestige = $this->M_Course_Forum_User->updateprestige_forum_user($cfu_idprestige,$cfu_prestige);
        }
        
        
        $data['datathread'] = M_Course_Forum_Thread::where("cft_id", "=", $cft_id)->first();
        $event = array(
            'usr_id'            => $this->session->userdata('id'),
            'log_event_context' => "Create Reply:" . " " . $data['datathread']->cft_title,
            'log_referrer'      => $this->input->server('REQUEST_URI'),
            'log_name'          => "Create Reply",
            'log_origin'        => $this->agent->agent_string(),
            'log_ip'            => $this->input->server('REMOTE_ADDR'),
            'log_desc'          => $this->session->userdata('username'). " " 
            ."melakukan aksi Create Reply pada thread" . " '" . $data['datathread']->cft_title . "'"
        );
        $this->lib_event_log->add_user_event($event);

        //activity_count
        $data_course = DB::table('course_forum')
            ->leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
            ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
            ->where('course_forum.cfr_id',$cfr_id)->first(['course.crs_id']);
        $data_user = DB::table('activity_count')
            ->where('usr_id',$this->session->userdata('id'))->first(['usr_id']);

        if ($data_user == NULL){
            DB::table('activity_count')->insert(['usr_id' => $this->session->userdata('id'),'crs_id' => $data_course->crs_id,'create_reply' => 1]);
        }else{
            $cek_course = DB::table('activity_count')->where('crs_id',$data_course->crs_id)->first(['crs_id']);
            if ($cek_course == NULL){
                DB::table('activity_count')->insert(['usr_id' => $this->session->userdata('id'),'crs_id' => $data_course->crs_id,'create_reply' => 1]);
            }else{
                DB::table('activity_count')
                    ->where('usr_id','=', $this->session->userdata('id'))
                    ->where('crs_id','=', $cek_course->crs_id)
                    ->increment('create_reply');
            }
        }
        //end activity_count

        // $user = M_User::where('usr_id', '=', $this->session->userdata('id'));
        // $reply_count = $user->usr_reply_count + 1;
        // M_User::where('usr_id', '=', $this->session->userdata('id'))->update(['usr_reply_count' => $reply_count]);

        redirect('siswa/detail_thread_siswa/'.$cft_id);
    }

    public function insert_komentar_reply_reply($ftr_id,$cft_id,$cfr_id)
    {
        $data['trr_content'] = $this->input->post('forum_komentar1');
        $cfu_sumword = str_replace('</p><p>',' ',$data['trr_content']);
        $cfu_sumword = strip_tags($cfu_sumword);
        $cfu_sumword = str_replace("&nbsp;", '', $cfu_sumword);
        $cfu_sumword = str_word_count($cfu_sumword);

        $data['ftr_id'] = $ftr_id;
        $data['usr_id'] = $this->session->userdata('id');
        $idtrr = $this->M_Course_Forum_Thread_Reply_Reply->insert_thread_reply_reply($data);
        $insert = $this->M_Rating_Reply_Reply->insert_id_rating($idtrr);

        $iduser = $this->session->userdata('id');

        $datauserupdate = M_Course_Forum_User::where('usr_id','=',$iduser)
                                        ->where('cfr_id','=', $cfr_id)
                                        ->first();
        
        if($datauserupdate != NULL)
        {
            $datauser = M_User::where('usr_id', $this->session->userdata('id'))->first();
            $iduser = $this->session->userdata('id');
            $jumlahpostuser = $datauser->usr_post_count;
            $jumlahpostuser++;
            $incpostuser = $this->M_User->update_post_count($jumlahpostuser,$iduser);
            
            $cfu_id = $datauserupdate->cfu_id;

            //Update Sum Word
            $datainputsumword = $this->M_Course_Forum_User->updatesumword_forum_user($cfu_id,$cfu_sumword);

            $cekuser = M_Course_Forum_Thread_Reply::leftJoin('users','users.usr_id','=','course_forum_thread_reply.usr_id')
                                                ->where('ftr_id','=',$ftr_id)->first();

            if($cekuser->usr_id == $iduser)
            {
                //Update Total Messages
                $updatesummsg =$this->M_Course_Forum_User->updatesummsg_forum_user($cfu_id);
            }
            else
            {
                //Update Total Messages
                $updatesummsg =$this->M_Course_Forum_User->updatesummsg_forum_user($cfu_id);

                //Update Message out
                $updatemsgout = $this->M_Course_Forum_User->updatemsgout_forum_user($cfu_id);

                if ($cekuser->usr_level == 2)
                {
                    //update Message in
                    $datausermsgin = M_Course_Forum_User::where('usr_id','=',$cekuser->usr_id)
                    ->where('cfr_id','=',$cfr_id)
                    ->first();
                    $cfuser_id = $datausermsgin->cfu_id;

                    $updatemsgin = $this->M_Course_Forum_User->updatemsgin_forum_user($cfuser_id);

                    //Update Centrality
                    $datausercentrality = M_Course_Forum_User::where('usr_id','=',$iduser)
                                        ->where('cfr_id','=',$cfr_id)
                                        ->first();

                    $cfu_centralitymsgout = $datausercentrality->cfu_msgout;
                    $jumlahsiswa = M_Course_Forum_User::where('cfr_id','=',$cfr_id)->count();
                    $jumlahsiswa = $jumlahsiswa-1;

                    if ($cfu_centralitymsgout >= $jumlahsiswa)
                    {
                        $cfu_centralitymsgout = $jumlahsiswa;

                        $cfu_centrality = $cfu_centralitymsgout/$jumlahsiswa;

                        $cfu_centrality = number_format((float)$cfu_centrality,3,'.','');

                        $updatecentrality = $this->M_Course_Forum_User->updatecentrality_forum_user($cfu_id,$cfu_centrality);

                    }
                    else
                    {
                        $cfu_centrality = $cfu_centralitymsgout/$jumlahsiswa;

                        $cfu_centrality = number_format((float)$cfu_centrality,3,'.','');

                        $updatecentrality = $this->M_Course_Forum_User->updatecentrality_forum_user($cfu_id,$cfu_centrality);
                    }
                    
                }
            }

            //Update Prestige
            $datauserprestige = M_Course_Forum_User::where('usr_id','=',$cekuser->usr_id)
                                                ->where('cfr_id','=',$cfr_id)
                                                ->first();

            $cfu_idprestige = $datauserprestige->cfu_id;
            $cfu_prestigemsgin = $datauserprestige->cfu_msgin;

            $jumlahsiswa = M_Course_Forum_User::where('cfr_id','=',$cfr_id)->count();
            $jumlahsiswa = $jumlahsiswa-1;

            if ($cfu_prestigemsgin >= $jumlahsiswa)
            {
                $cfu_prestigemsgin = $jumlahsiswa;

                $cfu_prestige = $cfu_prestigemsgin/$jumlahsiswa;

                $cfu_prestige = number_format((float)$cfu_prestige,3,'.','');

                $updateprestige = $this->M_Course_Forum_User->updateprestige_forum_user($cfu_idprestige,$cfu_prestige);
            }
            else
            {
                $cfu_prestige = $cfu_prestigemsgin/$jumlahsiswa;

                $cfu_prestige = number_format((float)$cfu_prestige,3,'.','');

                $updateprestige = $this->M_Course_Forum_User->updateprestige_forum_user($cfu_idprestige,$cfu_prestige);
            }
            
        }
        else
        {
            $datauser = M_User::where('usr_id', $this->session->userdata('id'))->first();
            $iduser = $this->session->userdata('id');
            $jumlahpostuser = $datauser->usr_post_count;
            $jumlahpostuser++;
            $incpostuser = $this->M_User->update_post_count($jumlahpostuser,$iduser);
        }
            

        $data['datathread'] = M_Course_Forum_Thread::where("cft_id", "=", $cft_id)->first();
        $event = array(
            'usr_id'            => $this->session->userdata('id'),
            'log_event_context' => "Create Reply:" . " " . $data['datathread']->cft_title,
            'log_referrer'      => $this->input->server('REQUEST_URI'),
            'log_name'          => "Create Reply",
            'log_origin'        => $this->agent->agent_string(),
            'log_ip'            => $this->input->server('REMOTE_ADDR'),
            'log_desc'          => $this->session->userdata('username'). " " 
            ."melakukan aksi Create Reply pada thread" . " '" . $data['datathread']->cft_title . "'"
        );
        $this->lib_event_log->add_user_event($event);

        //activity_count
        $data_course = M_Course_Forum::leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
            ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
            ->where('course_forum.cfr_id',$cfr_id)->first(['course.crs_id']);
        $data_user = DB::table('activity_count')
            ->where('usr_id',$this->session->userdata('id'))->first(['usr_id']);

        if ($data_user == NULL){
            DB::table('activity_count')->insert(['usr_id' => $this->session->userdata('id'),'crs_id' => $data_course->crs_id,'create_reply' => 1]);
        }else{
            $cek_course = DB::table('activity_count')->where('crs_id',$data_course->crs_id)->first(['crs_id']);
            if ($cek_course == NULL){
                DB::table('activity_count')->insert(['usr_id' => $this->session->userdata('id'),'crs_id' => $data_course->crs_id,'create_reply' => 1]);
            }else{
                DB::table('activity_count')
                    ->where('usr_id','=', $this->session->userdata('id'))
                    ->where('crs_id','=', $cek_course->crs_id)
                    ->increment('create_reply');
            }
        }
        //end activity_count

        redirect('siswa/detail_thread_siswa/'.$cft_id);
    }

    public function insert_komentar_reply_reply_reply($trr_id,$cft_id,$cfr_id)
    {
        $data['rrr_content'] = $this->input->post('forum_komentar2');
        $cfu_sumword = str_replace('</p><p>',' ',$data['rrr_content']);
        $cfu_sumword = strip_tags($cfu_sumword);
        $cfu_sumword = str_replace("&nbsp;", '', $cfu_sumword);
        $cfu_sumword = str_word_count($cfu_sumword);
        
        $data['usr_id'] = $this->session->userdata('id');
        $data['trr_id'] = $trr_id;
        $idrrr = $this->M_Course_Forum_Thread_Reply_Reply_Reply->insert_thread_reply_reply_reply($data);
        $insert = $this->M_Rating_Reply_Reply_Reply->insert_id_rating($idrrr);

        $iduser = $this->session->userdata('id');
        
        $datauserupdate = M_Course_Forum_User::where('usr_id','=',$iduser)
                                            ->where('cfr_id','=', $cfr_id)
                                            ->first();

         if($datauserupdate != NULL)
         {
            $datauser = M_User::where('usr_id', $this->session->userdata('id'))->first();
            $iduser = $this->session->userdata('id');
            $jumlahpostuser = $datauser->usr_post_count;
            $jumlahpostuser++;
            $incpostuser = $this->M_User->update_post_count($jumlahpostuser,$iduser);
            
            $cfu_id = $datauserupdate->cfu_id;

            //Update Sum Word
            $datainputsumword = $this->M_Course_Forum_User->updatesumword_forum_user($cfu_id,$cfu_sumword);

            $cekuser = M_Course_Forum_Thread_Reply_Reply::leftJoin('users','users.usr_id','=','course_forum_thread_reply_reply.usr_id')
                                                        ->where('trr_id','=',$trr_id)->first();

            if($cekuser->usr_id == $iduser)
            {
                //Update Total Messages
                $updatesummsg =$this->M_Course_Forum_User->updatesummsg_forum_user($cfu_id);
            }
            else
            {
                //Update Total Messages
                $updatesummsg =$this->M_Course_Forum_User->updatesummsg_forum_user($cfu_id);

                //Update Message out
                $updatemsgout = $this->M_Course_Forum_User->updatemsgout_forum_user($cfu_id);

                if($cekuser->usr_level == 2)
                {
                    //update Message in
                    $datausermsgin = M_Course_Forum_User::where('usr_id','=',$cekuser->usr_id)
                    ->where('cfr_id','=',$cfr_id)
                    ->first();

                    $cfuser_id = $datausermsgin->cfu_id;

                    $updatemsgin = $this->M_Course_Forum_User->updatemsgin_forum_user($cfuser_id);

                    //Update Centrality
                    $datausercentrality = M_Course_Forum_User::where('usr_id','=',$iduser)
                    ->where('cfr_id','=',$cfr_id)
                    ->first();

                    $cfu_centralitymsgout = $datausercentrality->cfu_msgout;
                    $jumlahsiswa = M_Course_Forum_User::where('cfr_id','=',$cfr_id)->count();
                    $jumlahsiswa = $jumlahsiswa-1;

                    if($cfu_centralitymsgout >= $jumlahsiswa)
                    {
                        $cfu_centralitymsgout = $jumlahsiswa;

                        $cfu_centrality = $cfu_centralitymsgout/$jumlahsiswa;

                        $cfu_centrality = number_format((float)$cfu_centrality,3,'.','');

                        $updatecentrality = $this->M_Course_Forum_User->updatecentrality_forum_user($cfu_id,$cfu_centrality);
                    }
                    else
                    {
                        $cfu_centrality = $cfu_centralitymsgout/$jumlahsiswa;

                        $cfu_centrality = number_format((float)$cfu_centrality,3,'.','');

                        $updatecentrality = $this->M_Course_Forum_User->updatecentrality_forum_user($cfu_id,$cfu_centrality);
                    }
                }
            }

            //Update Prestige
            $datauserprestige = M_Course_Forum_User::where('usr_id','=',$cekuser->usr_id)
                                                ->where('cfr_id','=',$cfr_id)
                                                ->first();

            $cfu_idprestige = $datauserprestige->cfu_id;
            $cfu_prestigemsgin = $datauserprestige->cfu_msgin;

            $jumlahsiswa = M_Course_Forum_User::where('cfr_id','=',$cfr_id)->count();
            $jumlahsiswa = $jumlahsiswa-1;

            if($cfu_prestigemsgin >= $jumlahsiswa)
            {
                $cfu_prestigemsgin = $jumlahsiswa;

                $cfu_prestige = $cfu_prestigemsgin/$jumlahsiswa;

                $cfu_prestige = number_format((float)$cfu_prestige,3,'.','');

                $updateprestige = $this->M_Course_Forum_User->updateprestige_forum_user($cfu_idprestige,$cfu_prestige);
            }
            else
            {
                $cfu_prestige = $cfu_prestigemsgin/$jumlahsiswa;

                $cfu_prestige = number_format((float)$cfu_prestige,3,'.','');

                $updateprestige = $this->M_Course_Forum_User->updateprestige_forum_user($cfu_idprestige,$cfu_prestige);
            }
            
         }
         else
         {
            $datauser = M_User::where('usr_id', $this->session->userdata('id'))->first();
            $iduser = $this->session->userdata('id');
            $jumlahpostuser = $datauser->usr_post_count;
            $jumlahpostuser++;
            $incpostuser = $this->M_User->update_post_count($jumlahpostuser,$iduser);
         }
            

        $data['datathread'] = M_Course_Forum_Thread::where("cft_id", "=", $cft_id)->first();
        $event = array(
            'usr_id'            => $this->session->userdata('id'),
            'log_event_context' => "Create Reply:" . " " . $data['datathread']->cft_title,
            'log_referrer'      => $this->input->server('REQUEST_URI'),
            'log_name'          => "Create Reply",
            'log_origin'        => $this->agent->agent_string(),
            'log_ip'            => $this->input->server('REMOTE_ADDR'),
            'log_desc'          => $this->session->userdata('username'). " " 
            ."melakukan aksi Create Reply pada thread" . " '" . $data['datathread']->cft_title . "'"
        );
        $this->lib_event_log->add_user_event($event);

        //activity_count
        $data_course = M_Course_Forum::leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
            ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
            ->where('course_forum.cfr_id',$cfr_id)->first(['course.crs_id']);
        $data_user = DB::table('activity_count')
            ->where('usr_id',$this->session->userdata('id'))->first(['usr_id']);

        if ($data_user == NULL){
            DB::table('activity_count')->insert(['usr_id' => $this->session->userdata('id'),'crs_id' => $data_course->crs_id,'create_reply' => 1]);
        }else{
            $cek_course = DB::table('activity_count')->where('crs_id',$data_course->crs_id)->first(['crs_id']);
            if ($cek_course == NULL){
                DB::table('activity_count')->insert(['usr_id' => $this->session->userdata('id'),'crs_id' => $data_course->crs_id,'create_reply' => 1]);
            }else{
                DB::table('activity_count')
                    ->where('usr_id','=', $this->session->userdata('id'))
                    ->where('crs_id','=', $cek_course->crs_id)
                    ->increment('create_reply');
            }
        }
        //end activity_count

        redirect('siswa/detail_thread_siswa/'.$cft_id);
    }

    public function insert_rating_reply($ftr_id,$cft_id,$k,$cfr_id)
    {
        $data['ftr_id'] = $ftr_id;
        $data['usr_id'] = $this->session->userdata('id');
        
        $getrating = M_Course_Forum_Thread_Reply::where('course_forum_thread_reply.ftr_id','=',$ftr_id)->first(['ftr_ratingsum','ftr_ratingcount']);
        $ftrratingsum = $getrating->ftr_ratingsum;
        $ftrratingcount = $getrating->ftr_ratingcount;

        $ftrratingsum = $ftrratingsum + $k;
        $ftrratingcount++;

        $datarating['ftr_id'] = $ftr_id;
        $datarating['ftr_ratingsum'] = $ftrratingsum;
        $datarating['ftr_ratingcount'] = $ftrratingcount;
        
        $insert = $this->M_Rating_Reply->update_rating_reply($data, $ftrratingsum);
        $update = $this->M_Course_Forum_Thread_Reply->update_rating_reply($datarating);

        $getidftr = M_Course_Forum_Thread_Reply::where('course_forum_thread_reply.ftr_id','=',$ftr_id)->first();

        $datauserrating = M_Course_Forum_User::where('usr_id','=',$getidftr->usr_id)
                                            ->where('cfr_id','=', $cfr_id)
                                            ->first();

        
        $cfu_id = $datauserrating->cfu_id;

        //Update Rating Count
        $updateratingcount = $this->M_Course_Forum_User->updateratingcount_forum_user($cfu_id);

        //Update Rating Sum
        $updateratingsum = $this->M_Course_Forum_User->updateratingsum_forum_user($cfu_id,$k);

        $datauseravgrating = M_Course_Forum_User::where('usr_id','=',$getidftr->usr_id)
                                            ->where('cfr_id','=', $cfr_id)
                                            ->first();
        
        $cfu_ratingsum = $datauseravgrating->cfu_ratingsum;
        $cfu_ratingcount = $datauseravgrating->cfu_ratingcount;
        
        if($cfu_ratingcount == 0)
        {
            $cfu_ratingcount = 1;
            $cfu_avgscoremsg = $cfu_ratingsum/$cfu_ratingcount;
        }
        else
        {
            $cfu_avgscoremsg = $cfu_ratingsum/$cfu_ratingcount;
        }
        
        $cfu_avgscoremsg = number_format((float)$cfu_avgscoremsg,2,'.','');

        //Update Average Rating
        $updateavgscoremsg = $this->M_Course_Forum_User->updateavgscoremsg_forum_user($cfu_id,$cfu_avgscoremsg);
        

        $data['datathread'] = M_Course_Forum_Thread::where("cft_id", "=", $cft_id)->first();
        $event = array(
            'usr_id'            => $this->session->userdata('id'),
            'log_event_context' => "Rate Post:" . " " . $data['datathread']->cft_title,
            'log_referrer'      => $this->input->server('REQUEST_URI'),
            'log_name'          => "Rate Post",
            'log_origin'        => $this->agent->agent_string(),
            'log_ip'            => $this->input->server('REMOTE_ADDR'),
            'log_desc'          => $this->session->userdata('username'). " " 
            ."melakukan aksi Rate Post pada thread" . " '" . $data['datathread']->cft_title . "'"
        );
        $this->lib_event_log->add_user_event($event);

        redirect('siswa/detail_thread_siswa/'.$cft_id);
    }

    public function insert_rating_reply_reply($trr_id,$cft_id,$k,$cfr_id)
    {
        $data['trr_id'] = $trr_id;
        $data['usr_id'] = $this->session->userdata('id');
        $data['rrp_rated'] = $k;
        
        $getrating = M_Course_Forum_Thread_Reply_Reply::where('course_forum_thread_reply_reply.trr_id','=',$trr_id)->first(['trr_ratingsum','trr_ratingcount']);
        $trrratingsum = $getrating->trr_ratingsum;
        $trrratingcount = $getrating->trr_ratingcount;

        $trrratingsum = $trrratingsum + $k;
        $trrratingcount++;

        $datarating['trr_id'] = $trr_id;
        $datarating['trr_ratingsum'] = $trrratingsum;
        $datarating['trr_ratingcount'] = $trrratingcount;
        
        $insert = $this->M_Rating_Reply_Reply->update_rating_reply_reply($data, $trrratingsum);
        $update = $this->M_Course_Forum_Thread_Reply_Reply->update_rating_reply_reply($datarating);

        $getidtrr = M_Course_Forum_Thread_Reply_Reply::where('course_forum_thread_reply_reply.trr_id','=',$trr_id)->first();

        $datauserrating = M_Course_Forum_User::where('usr_id','=',$getidtrr->usr_id)
                                            ->where('cfr_id','=', $cfr_id)
                                            ->first();
        
        $cfu_id = $datauserrating->cfu_id;

        //Update Rating Count
        $updateratingcount = $this->M_Course_Forum_User->updateratingcount_forum_user($cfu_id);

        //Update Rating Sum
        $updateratingsum = $this->M_Course_Forum_User->updateratingsum_forum_user($cfu_id,$k);

        $datauseravgrating = M_Course_Forum_User::where('usr_id','=',$getidtrr->usr_id)
                                            ->where('cfr_id','=', $cfr_id)
                                            ->first();
        
        $cfu_ratingsum = $datauseravgrating->cfu_ratingsum;
        $cfu_ratingcount = $datauseravgrating->cfu_ratingcount;
        
        if($cfu_ratingcount == 0)
        {
            $cfu_ratingcount = 1;
            $cfu_avgscoremsg = $cfu_ratingsum/$cfu_ratingcount;
        }
        else
        {
            $cfu_avgscoremsg = $cfu_ratingsum/$cfu_ratingcount;
        }
        
        $cfu_avgscoremsg = number_format((float)$cfu_avgscoremsg,2,'.','');

        //Update Average Rating
        $updateavgscoremsg = $this->M_Course_Forum_User->updateavgscoremsg_forum_user($cfu_id,$cfu_avgscoremsg);
        
        $data['datathread'] = M_Course_Forum_Thread::where("cft_id", "=", $cft_id)->first();
        $event = array(
            'usr_id'            => $this->session->userdata('id'),
            'log_event_context' => "Rate Post:" . " " . $data['datathread']->cft_title,
            'log_referrer'      => $this->input->server('REQUEST_URI'),
            'log_name'          => "Rate Post",
            'log_origin'        => $this->agent->agent_string(),
            'log_ip'            => $this->input->server('REMOTE_ADDR'),
            'log_desc'          => $this->session->userdata('username'). " " 
            ."melakukan aksi Rate Post pada thread" . " '" . $data['datathread']->cft_title . "'"
        );
        $this->lib_event_log->add_user_event($event);

        redirect('siswa/detail_thread_siswa/'.$cft_id);
    }

    public function insert_rating_reply_reply_reply($rrr_id,$cft_id,$k,$cfr_id)
    {
        $data['rrr_id'] = $rrr_id;
        $data['usr_id'] = $this->session->userdata('id');
        $data['rrl_rated'] = $k;
        
        $getrating = M_Course_Forum_Thread_Reply_Reply_Reply::where('course_forum_thread_reply_reply_reply.rrr_id','=',$rrr_id)->first(['rrr_ratingsum','rrr_ratingcount']);
        $rrrratingsum = $getrating->rrr_ratingsum;
        $rrrratingcount = $getrating->rrr_ratingcount;

        $rrrratingsum = $rrrratingsum + $k;
        $rrrratingcount++;

        $datarating['rrr_id'] = $rrr_id;
        $datarating['rrr_ratingsum'] = $rrrratingsum;
        $datarating['rrr_ratingcount'] = $rrrratingcount;
        
        $insert = $this->M_Rating_Reply_Reply_Reply->update_rating_reply_reply_reply($data, $rrrratingsum);
        $update = $this->M_Course_Forum_Thread_Reply_Reply_Reply->update_rating_reply_reply_reply($datarating);

        $getidrrr = M_Course_Forum_Thread_Reply_Reply_Reply::where('course_forum_thread_reply_reply_reply.rrr_id','=',$rrr_id)->first();

        $datauserrating = M_Course_Forum_User::where('usr_id','=',$getidrrr->usr_id)
                                            ->where('cfr_id','=', $cfr_id)
                                            ->first();
        
        $cfu_id = $datauserrating->cfu_id;

        //Update Rating Count
        $updateratingcount = $this->M_Course_Forum_User->updateratingcount_forum_user($cfu_id);

        //Update Rating Sum
        $updateratingsum = $this->M_Course_Forum_User->updateratingsum_forum_user($cfu_id,$k);
        
        $datauseravgrating = M_Course_Forum_User::where('usr_id','=',$getidrrr->usr_id)
                                            ->where('cfr_id','=', $cfr_id)
                                            ->first();
        
        $cfu_ratingsum = $datauseravgrating->cfu_ratingsum;
        $cfu_ratingcount = $datauseravgrating->cfu_ratingcount;
        
        if($cfu_ratingcount == 0)
        {
            $cfu_ratingcount = 1;
            $cfu_avgscoremsg = $cfu_ratingsum/$cfu_ratingcount;
        }
        else
        {
            $cfu_avgscoremsg = $cfu_ratingsum/$cfu_ratingcount;
        }
        
        $cfu_avgscoremsg = number_format((float)$cfu_avgscoremsg,2,'.','');

        //Update Average Rating
        $updateavgscoremsg = $this->M_Course_Forum_User->updateavgscoremsg_forum_user($cfu_id,$cfu_avgscoremsg);
        
        $data['datathread'] = M_Course_Forum_Thread::where("cft_id", "=", $cft_id)->first();
        $event = array(
            'usr_id'            => $this->session->userdata('id'),
            'log_event_context' => "Rate Post:" . " " . $data['datathread']->cft_title,
            'log_referrer'      => $this->input->server('REQUEST_URI'),
            'log_name'          => "Rate Post",
            'log_origin'        => $this->agent->agent_string(),
            'log_ip'            => $this->input->server('REMOTE_ADDR'),
            'log_desc'          => $this->session->userdata('username'). " " 
            ."melakukan aksi Rate Post pada thread" . " '" . $data['datathread']->cft_title . "'"
        );
        $this->lib_event_log->add_user_event($event);

        redirect('siswa/detail_thread_siswa/'.$cft_id);
    }

    public function delete_komentar_reply($ftr_id,$cft_id)
    {
        // $sumreply2 = 0;
        // $sumreply3 = 0;
        
        // $countreply2 = M_Course_Forum_Thread_Reply_Reply::leftJoin('course_forum_thread_reply','course_forum_thread_reply.ftr_id','=','course_forum_thread_reply_reply.ftr_id')
        //                 ->where('course_forum_thread_reply.ftr_id',$ftr_id)
        //                 ->where('course_forum_thread_reply.usr_id',$this->session->userdata('id'))               
        //                 ->get();
        // //$sumreply2 = $countreply2->count('usr_id');

        // $i=1;
        // $j=1;
        // foreach($countreply2 as $datareply2)
        // {
        //     $datareply2thread[$i] = $datareply2->trr_id;

        //     $jumlahreply2 = M_Course_Forum_Thread_Reply_Reply::where('course_forum_thread_reply_reply.trr_id',$datareply2thread[$i])
        //                     ->where('course_forum_thread_reply_reply.usr_id',$this->session->userdata('id'))               
        //                     ->get();
        //     $sumreply2 = $sumreply2 + $jumlahreply2->count('usr_id');

        //     foreach($jumlahreply2 as $jumreply2)
        //     {
        //         $datareply3thread[$j] = $jumreply2->trr_id;

        //         $jumlahreply3 = M_Course_Forum_Thread_Reply_Reply_Reply::where('course_forum_thread_reply_reply_reply.trr_id',$datareply3thread[$j])
        //                     ->where('course_forum_thread_reply_reply_reply.usr_id',$this->session->userdata('id'))
        //                     ->get();
        //         $sumreply3 = $sumreply3 + $jumlahreply3->count('usr_id');
        //     }
        // }

        // $jumlah = $sumreply2 + $sumreply3;
        // $jumlah++;
        // dd($jumlah);

        // $datauser = M_User::where('usr_id', $this->session->userdata('id'))->first();
        // $iduser = $this->session->userdata('id');
        // $jumlahpostuser = $datauser->usr_post_count;
        // $jumlahpostuser = $jumlahpostuser - $jumlah;
        // $decpostuser = $this->M_User->update_post_count($jumlahpostuser,$iduser);

        $deleteThread= M_Course_Forum_Thread_Reply::where('ftr_id',$ftr_id)->delete();

        if($deleteThread)
        {
            $data['datathread'] = M_Course_Forum_Thread::where("cft_id", "=", $cft_id)->first();
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "Delete Reply:" . " " . $data['datathread']->cft_title,
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "Delete Reply",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " " 
                ."melakukan aksi Delete Reply pada thread" . " '" . $data['datathread']->cft_title . "'"
            );
            $this->lib_event_log->add_user_event($event);

            $this->session->set_flashdata('data_komentar_reply', 'Data Thread Berhasil Terhapus');
        }else{
            $this->session->set_flashdata('data_gagal_komentar_reply', 'Data Thread Tidak Berhasil Terhapus');
        }
        redirect('siswa/detail_thread_siswa/'.$cft_id);
    }

    public function delete_komentar_reply_reply($trr_id,$cft_id)
    {
        // $countreply3 = M_Course_Forum_Thread_Reply_Reply_Reply::where('course_forum_thread_reply_reply_reply.trr_id',$trr_id)
        //                 ->where('course_forum_thread_reply_reply_reply.usr_id',$this->session->userdata('id'))
        //                 ->get();
        // $sumreply3 = $countreply3->count('usr_id');
        // $sumreply3++;
        
        // $datauser = M_User::where('usr_id', $this->session->userdata('id'))->first();
        // $iduser = $this->session->userdata('id');
        // $jumlahpostuser = $datauser->usr_post_count;
        // $jumlahpostuser = $jumlahpostuser - $sumreply3;
        // $decpostuser = $this->M_User->update_post_count($jumlahpostuser,$iduser);
        
        $deleteThread= M_Course_Forum_Thread_Reply_Reply::where('trr_id',$trr_id)->delete();

        if($deleteThread)
        {
            $data['datathread'] = M_Course_Forum_Thread::where("cft_id", "=", $cft_id)->first();
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "Delete Reply:" . " " . $data['datathread']->cft_title,
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "Delete Reply",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " " 
                ."melakukan aksi Delete Reply pada thread" . " '" . $data['datathread']->cft_title . "'"
            );
            $this->lib_event_log->add_user_event($event);

            $this->session->set_flashdata('data_komentar_reply_reply', 'Data Thread Berhasil Terhapus');
        }else{
            $this->session->set_flashdata('data_gagal_komentar_reply_reply', 'Data Thread Tidak Berhasil Terhapus');
        }
        redirect('siswa/detail_thread_siswa/'.$cft_id);
    }

    public function delete_komentar_reply_reply_reply($rrr_id,$cft_id)
    {
        // $datauser = M_User::where('usr_id', $this->session->userdata('id'))->first();
        // $iduser = $this->session->userdata('id');
        // $jumlahpostuser = $datauser->usr_post_count;
        // $jumlahpostuser--;
        // $decpostuser = $this->M_User->update_post_count($jumlahpostuser,$iduser);

        $deleteThread= M_Course_Forum_Thread_Reply_Reply_Reply::where('rrr_id',$rrr_id)->delete();

        if($deleteThread)
        {
            $data['datathread'] = M_Course_Forum_Thread::where("cft_id", "=", $cft_id)->first();
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "Delete Reply:" . " " . $data['datathread']->cft_title,
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "Delete Reply",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " " 
                ."melakukan aksi Delete Reply pada thread" . " '" . $data['datathread']->cft_title . "'"
            );
            $this->lib_event_log->add_user_event($event);

            $this->session->set_flashdata('data_komentar_reply_reply', 'Data Thread Berhasil Terhapus');
        }else{
            $this->session->set_flashdata('data_gagal_komentar_reply_reply', 'Data Thread Tidak Berhasil Terhapus');
        }
        redirect('siswa/detail_thread_siswa/'.$cft_id);
    }

    function debug_to_console( $data ) {
        $output = $data;
        if ( is_array( $output ) )
            $output = implode( ',', $output);
    
        echo "<script>console.log( 'Debug Objects: " . $output . "' );</script>";
    }
    public function log_forum($cfr_id)
    {
        $data['judul_lesson'] = M_Course_Forum::leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
            ->where('course_forum.cfr_id',$cfr_id)
            ->first(['course_lesson.lsn_name']);

            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View Forum:" . " " . $data['judul_lesson']->lsn_name,
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View Forum",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View Forum" . " '" . $data['judul_lesson']->lsn_name . "'"
            );
            $this->lib_event_log->add_user_event($event);
            redirect(site_url('siswa/list_thread_siswa/'.$cfr_id));
    }

    public function log_detailThread($cft_id)
    {
        $data['dataforumthread'] = M_Course_Forum::leftJoin('course_forum_thread','course_forum_thread.cfr_id','=','course_forum.cfr_id')
            ->leftJoin('users','users.usr_id','=','course_forum_thread.usr_id')
            ->where('course_forum_thread.cft_id',$cft_id)
            ->first();

        $event = array(
            'usr_id'            => $this->session->userdata('id'),
            'log_event_context' => "View Thread:" . " " . $data['dataforumthread']->cft_title,
            'log_referrer'      => $this->input->server('REQUEST_URI'),
            'log_name'          => "View Thread",
            'log_origin'        => $this->agent->agent_string(),
            'log_ip'            => $this->input->server('REMOTE_ADDR'),
            'log_desc'          => $this->session->userdata('username'). " "
                ."melakukan aksi View Thread" . " '" . $data['dataforumthread']->cft_title . "'"
        );
        $this->lib_event_log->add_user_event($event);

        //activity_count
        $data_course = M_Course_Forum::leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
            ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
            ->where('course_forum.cfr_id',$data['dataforumthread']->cfr_id)->first(['course.crs_id']);
        $data_user = DB::table('activity_count')
            ->where('usr_id',$this->session->userdata('id'))->first(['usr_id']);

        if ($data_user == NULL){
            DB::table('activity_count')->insert(['usr_id' => $this->session->userdata('id'),'crs_id' => $data_course->crs_id,'view_thread' => 1]);
        }else{
            $cek_course = DB::table('activity_count')->where('crs_id',$data_course->crs_id)->first(['crs_id']);
            if ($cek_course == NULL){
                DB::table('activity_count')->insert(['usr_id' => $this->session->userdata('id'),'crs_id' => $data_course->crs_id,'view_thread' => 1]);
            }else{
                DB::table('activity_count')
                    ->where('usr_id','=', $this->session->userdata('id'))
                    ->where('crs_id','=', $cek_course->crs_id)
                    ->increment('view_thread');
            }
        }
        //end activity_count

        //Forum Visit
        //cek udah ada usernya atau belum di learning_style
        $cek_user_ada = M_Learning_Style::where('usr_id', $this->session->userdata('id'))->first();
        if (!$cek_user_ada) {
            $ls_data['usr_id'] = $this->session->userdata('id');
            $this->M_Learning_Style->insert($ls_data);
            $forum_visit = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_forum_visit', 1);
        } else {
            $forum_visit = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_forum_visit', 1);
        }

        redirect(site_url('siswa/detail_thread_siswa/'.$cft_id));
    }
}
