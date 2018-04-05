<?php

defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Notif extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('level') == NULL) {
            redirect('');
        }      
    }
    
    public function index()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'notifikasi';

        //Outline Stay
        if (strpos($this->agent->referrer(), 'siswa/course_detail') !== FALSE) {

            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View All Notif:" . " " . $this->session->userdata('username'),
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View All Notif",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View All Notif"
            );
            $this->lib_event_log->add_user_event($event);

            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Course")
                    ->orderBy('log_time', 'DESC')->first()->log_time;

            $lama_stay = strtotime($waktu_sekarang) - strtotime($waktu_sebelum);
            $hari    = floor($lama_stay/(60*60*24));   
            $jam   = floor(($lama_stay-($hari*60*60*24))/(60*60));   
            $menit = floor(($lama_stay-($hari*60*60*24)-($jam*60*60))/60);

            //cek udah ada usernya atau belum di learning_style
            $cek_user_ada = M_Learning_Style::where('usr_id', $this->session->userdata('id'))->first();
            if (!$cek_user_ada) {
            $ls_data['usr_id'] = $this->session->userdata('id');
            $this->M_Learning_Style->insert($ls_data);
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_outline_stay', $lama_stay);
            } else {
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_outline_stay', $lama_stay);
            }
        }

        //Quiz Result Stay
        if ((strpos($this->agent->referrer(), 'siswa/result') !== FALSE)
            || (strpos($this->agent->referrer(), 'assesment/result') !== FALSE)) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View All Notif:" . " " . $this->session->userdata('username'),
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View All Notif",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View All Notif"
            );
            $this->lib_event_log->add_user_event($event);
            
            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Assessment Result")
                    ->orderBy('log_time', 'DESC')->first()->log_time;

            $lama_stay = strtotime($waktu_sekarang) - strtotime($waktu_sebelum);
            $hari    = floor($lama_stay/(60*60*24));   
            $jam   = floor(($lama_stay-($hari*60*60*24))/(60*60));   
            $menit = floor(($lama_stay-($hari*60*60*24)-($jam*60*60))/60);

            //cek udah ada usernya atau belum di learning_style
            $cek_user_ada = M_Learning_Style::where('usr_id', $this->session->userdata('id'))->first();
            if (!$cek_user_ada) {
            $ls_data['usr_id'] = $this->session->userdata('id');
            $this->M_Learning_Style->insert($ls_data);
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_quiz_stay_result', $lama_stay);
            } else {
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_quiz_stay_result', $lama_stay);
            }
        }

        //Forum Stay
        if (strpos($this->agent->referrer(), 'siswa/detail_thread_siswa') !== FALSE) {
            
                $event = array(
                        'usr_id'            => $this->session->userdata('id'),
                        'log_event_context' => "View All Notif:" . " " . $this->session->userdata('username'),
                        'log_referrer'      => $this->input->server('REQUEST_URI'),
                        'log_name'          => "View All Notif",
                        'log_origin'        => $this->agent->agent_string(),
                        'log_ip'            => $this->input->server('REMOTE_ADDR'),
                        'log_desc'          => $this->session->userdata('username'). " "
                        ."melakukan aksi View All Notif"
                );
                $this->lib_event_log->add_user_event($event);
    
                $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                        ->orderBy('log_time', 'DESC')->first()->log_time;
                
                $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                        ->where('log_name', "View Thread")
                        ->orderBy('log_time', 'DESC')->first()->log_time;
    
                $lama_stay = strtotime($waktu_sekarang) - strtotime($waktu_sebelum);
                $hari    = floor($lama_stay/(60*60*24));   
                $jam   = floor(($lama_stay-($hari*60*60*24))/(60*60));   
                $menit = floor(($lama_stay-($hari*60*60*24)-($jam*60*60))/60);
    
                //cek udah ada usernya atau belum di learning_style
                $cek_user_ada = M_Learning_Style::where('usr_id', $this->session->userdata('id'))->first();
                if (!$cek_user_ada) {
                $ls_data['usr_id'] = $this->session->userdata('id');
                $this->M_Learning_Style->insert($ls_data);
                $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_forum_stay', $lama_stay);
                } else {
                $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_forum_stay', $lama_stay);
                }
            }
        
        //Content Video, Text, Example Stay
        if (strpos($this->agent->referrer(), 'content/contents') !== FALSE) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View All Notif:" . " " . $this->session->userdata('username'),
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View All Notif",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View All Notif"
            );
            $this->lib_event_log->add_user_event($event);

            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            if ($this->session->userdata('tipekonten') == "Example") {
                $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Content Example")
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            } else if ($this->session->userdata('tipekonten') == "Video") {
                $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Content Video")
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            } else if ($this->session->userdata('tipekonten') == "Text") {
                $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Content Text")
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            } 
            
            $lama_stay = strtotime($waktu_sekarang) - strtotime($waktu_sebelum);
            $hari    = floor($lama_stay/(60*60*24));   
            $jam   = floor(($lama_stay-($hari*60*60*24))/(60*60));   
            $menit = floor(($lama_stay-($hari*60*60*24)-($jam*60*60))/60);

            //cek udah ada usernya atau belum di learning_style
            $cek_user_ada = M_Learning_Style::where('usr_id', $this->session->userdata('id'))->first();
            if (!$cek_user_ada) {
                $ls_data['usr_id'] = $this->session->userdata('id');
                $this->M_Learning_Style->insert($ls_data);
                
                if ($this->session->userdata('tipekonten') == "Example") {
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_example_stay', $lama_stay);
                } else if ($this->session->userdata('tipekonten') == "Video") {
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_content_stay', $lama_stay);
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_content_stay_video', $lama_stay);
                } else if ($this->session->userdata('tipekonten') == "Text") {
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_content_stay', $lama_stay);
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_content_stay_text', $lama_stay);
                }                
            } else {
                if ($this->session->userdata('tipekonten') == "Example") {
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_example_stay', $lama_stay);
                } else if ($this->session->userdata('tipekonten') == "Video") {
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_content_stay', $lama_stay);
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_content_stay_video', $lama_stay);
                } else if ($this->session->userdata('tipekonten') == "Text") {
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_content_stay', $lama_stay);
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_content_stay_text', $lama_stay);
                }
            }
        }

        $this->load->view('layout/master',$data);
    }

    public function read_notif($tipe, $id_tipe, $ntf_id) 
    {
        $notif_update = M_Notification::where('ntf_id', '=', $ntf_id)->first();
        $notif_update->ntf_read = "Y";
        $notif_update->save();

        //Outline Stay
        if (strpos($this->agent->referrer(), 'siswa/course_detail') !== FALSE) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View Notif:" . " " . $notif_update->ntf_type,
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View Notif",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View Notif"." ". $notif_update->ntf_type
            );
            $this->lib_event_log->add_user_event($event);

            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Course")
                    ->orderBy('log_time', 'DESC')->first()->log_time;

            $lama_stay = strtotime($waktu_sekarang) - strtotime($waktu_sebelum);
            $hari    = floor($lama_stay/(60*60*24));   
            $jam   = floor(($lama_stay-($hari*60*60*24))/(60*60));   
            $menit = floor(($lama_stay-($hari*60*60*24)-($jam*60*60))/60);

            //cek udah ada usernya atau belum di learning_style
            $cek_user_ada = M_Learning_Style::where('usr_id', $this->session->userdata('id'))->first();
            if (!$cek_user_ada) {
            $ls_data['usr_id'] = $this->session->userdata('id');
            $this->M_Learning_Style->insert($ls_data);
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_outline_stay', $lama_stay);
            } else {
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_outline_stay', $lama_stay);
            }
        }

        //Quiz Result Stay
        if ((strpos($this->agent->referrer(), 'siswa/result') !== FALSE)
            || (strpos($this->agent->referrer(), 'assesment/result') !== FALSE)) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View Notif:" . " " . $notif_update->ntf_type,
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View Notif",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View Notif"." ". $notif_update->ntf_type
            );
            $this->lib_event_log->add_user_event($event);

            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Assessment Result")
                    ->orderBy('log_time', 'DESC')->first()->log_time;

            $lama_stay = strtotime($waktu_sekarang) - strtotime($waktu_sebelum);
            $hari    = floor($lama_stay/(60*60*24));   
            $jam   = floor(($lama_stay-($hari*60*60*24))/(60*60));   
            $menit = floor(($lama_stay-($hari*60*60*24)-($jam*60*60))/60);

            //cek udah ada usernya atau belum di learning_style
            $cek_user_ada = M_Learning_Style::where('usr_id', $this->session->userdata('id'))->first();
            if (!$cek_user_ada) {
            $ls_data['usr_id'] = $this->session->userdata('id');
            $this->M_Learning_Style->insert($ls_data);
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_quiz_stay_result', $lama_stay);
            } else {
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_quiz_stay_result', $lama_stay);
            }
        }

        //Forum Stay
        if (strpos($this->agent->referrer(), 'siswa/detail_thread_siswa') !== FALSE) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View Notif:" . " " . $notif_update->ntf_type,
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View Notif",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View Notif"." ". $notif_update->ntf_type
            );
            $this->lib_event_log->add_user_event($event);
    
                $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                        ->orderBy('log_time', 'DESC')->first()->log_time;
                
                $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                        ->where('log_name', "View Thread")
                        ->orderBy('log_time', 'DESC')->first()->log_time;

                $lama_stay = strtotime($waktu_sekarang) - strtotime($waktu_sebelum);
                $hari    = floor($lama_stay/(60*60*24));   
                $jam   = floor(($lama_stay-($hari*60*60*24))/(60*60));   
                $menit = floor(($lama_stay-($hari*60*60*24)-($jam*60*60))/60);

                //cek udah ada usernya atau belum di learning_style
                $cek_user_ada = M_Learning_Style::where('usr_id', $this->session->userdata('id'))->first();
                if (!$cek_user_ada) {
                        $ls_data['usr_id'] = $this->session->userdata('id');
                        $this->M_Learning_Style->insert($ls_data);
                        $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                                ->increment('ls_forum_stay', $lama_stay);
                } else {
                        $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                                ->increment('ls_forum_stay', $lama_stay);
                }
            }
        
        //Content Video, Text, Example Stay
        if (strpos($this->agent->referrer(), 'content/contents') !== FALSE) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View Notif:" . " " . $notif_update->ntf_type,
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View Notif",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View Notif"." ". $notif_update->ntf_type
            );
            $this->lib_event_log->add_user_event($event);

            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            if ($this->session->userdata('tipekonten') == "Example") {
                $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Content Example")
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            } else if ($this->session->userdata('tipekonten') == "Video") {
                $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Content Video")
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            } else if ($this->session->userdata('tipekonten') == "Text") {
                $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Content Text")
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            } 
            
            $lama_stay = strtotime($waktu_sekarang) - strtotime($waktu_sebelum);
            $hari    = floor($lama_stay/(60*60*24));   
            $jam   = floor(($lama_stay-($hari*60*60*24))/(60*60));   
            $menit = floor(($lama_stay-($hari*60*60*24)-($jam*60*60))/60);

            //cek udah ada usernya atau belum di learning_style
            $cek_user_ada = M_Learning_Style::where('usr_id', $this->session->userdata('id'))->first();
            if (!$cek_user_ada) {
                $ls_data['usr_id'] = $this->session->userdata('id');
                $this->M_Learning_Style->insert($ls_data);
                
                if ($this->session->userdata('tipekonten') == "Example") {
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_example_stay', $lama_stay);
                } else if ($this->session->userdata('tipekonten') == "Video") {
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_content_stay', $lama_stay);
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_content_stay_video', $lama_stay);
                } else if ($this->session->userdata('tipekonten') == "Text") {
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_content_stay', $lama_stay);
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_content_stay_text', $lama_stay);
                }                
            } else {
                if ($this->session->userdata('tipekonten') == "Example") {
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_example_stay', $lama_stay);
                } else if ($this->session->userdata('tipekonten') == "Video") {
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_content_stay', $lama_stay);
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_content_stay_video', $lama_stay);
                } else if ($this->session->userdata('tipekonten') == "Text") {
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_content_stay', $lama_stay);
                    $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                        ->increment('ls_content_stay_text', $lama_stay);
                }
            }
        }

        redirect(site_url('siswa/'.$tipe.'/'.$id_tipe));
    }

}
