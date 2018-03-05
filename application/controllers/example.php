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
                'event_log_name'    => $this->session->userdata('session_id'),
                'event_log_des'     => $this->input->server('REQUEST_URI'),
                'user_event_type'   => $this->agent->agent_string(),
                'event_log_time'    => $this->session->userdata('username')
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