<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * CodeIgniter Event log example
 *
 * @author     Single Seeker <fusiweb@gmail.com>
 * @license    BSD License
 * @link       http://letcodefly.com
 * @since      Version 1.0
 */
class Example extends CI_Controller
{
    /**
     * constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->library('lib_event_log');
        $this->load->database();
        $this->load->library('user_agent');
        $this->load->library('session');
    }
    /**
     * index method
     *
     * @return void
     */
    public function index()
    {
        $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => $this->input->server('REQUEST_URI'),
                'log_name'          => "Merda",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->agent->referrer()
            );
        $this->lib_event_log->add_user_event($event,1);

    }
    public function del_event($id)
    {
        $this->lib_event_log->del_user_event(1);
    }
}
/* End of file example.php */
/* Location: ./application/controllers/example.php */