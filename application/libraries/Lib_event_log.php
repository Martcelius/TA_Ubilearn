
<?php
/**
 * CodeIgniter Event log library
 *
 * @author     Single Seeker <fusiweb@gmail.com>
 * @license    BSD License
 * @link       http://letcodefly.com
 * @since      Version 1.0
 */
defined('BASEPATH') OR exit('No direct script access allowed');
class Lib_event_log
{
    /**
     * ci
     *
     * @param instance object
     */
    private $_ci;
    /**
     * log table name
     *
     * @param string
     */
    private $_log_table_name;
    /**
     * constructor
     *
     */
    public function __construct()
    {
        $this->_ci =& get_instance();
       
        $this->_ci->load->database();
        // Load config file
        $this->_ci->load->config('log');
        $this->_log_table_name = ($this->_ci->config->item('log_table_name')) ? $this->_ci->config->item('log_table_name') : 'user_event_log';
    }
    public function add_user_event($event,$user_id)
    {
        $event['event_log_user_id'] = (int) $user_id;
        $this->_ci->db->insert($this->_log_table_name, $event);
    }
    public function del_user_event($id)
    {
        $this->_ci->db->delete($this->_log_table_name, array('id'=>$id));
        return $this->_ci->db->insert_id();
    }
}
/* End of file Lib_event_log.php */
/* Location: ./application/libraries/Lib_event_log.php */