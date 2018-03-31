<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Kuesioner extends CI_Controller {

    
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


    public function kuesioner_ls(){
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/selfass';
        if($this->session->userdata('ls') == 1){
            redirect('siswa/hasil_kuesioner_ls');
        }
        $this->load->view('layout/master', $data);
    }

    public function hasil_kuesioner_ls(){
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/hasilselfass';
        $hasil = $this->M_Hasil_Kuesioner->selectByUser($this->session->userdata('id'));
        $data['hasil'] = $hasil;
        if($hasil->Active > $hasil->Reflective){
            $hasilKues['AR'] = 'Active';
        }
        else{
            $hasilKues['AR'] = 'Reflective';
        }

        if($hasil->Sensing > $hasil->Intuitive){
            $hasilKues['SI'] = 'Sensing';
        }
        else{
            $hasilKues['SI'] = 'Intuitive';
        }

        if($hasil->Visual > $hasil->Verbal){
            $hasilKues['VV'] = 'Visual';
        }
        else{
            $hasilKues['VV'] = 'Verbal';
        }

        if($hasil->Sequential > $hasil->Global){
            $hasilKues['SG'] = 'Sequential';
        }
        else{
            $hasilKues['SG'] = 'Global';
        }
        $data['hasilKues'] = $hasilKues;
        $hasil2 = $this->M_Hasil_Kuesioner2->selectByUser($this->session->userdata('id'));
        $data['hasilKues2'] = $hasil2;
        $this->load->view('layout/master', $data);
    }

    public function kuesioner_tr(){
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/kuesioner_teamrole';
        if($this->session->userdata('tr') == 1){
            redirect('siswa/hasil_kuesioner_ls');
        }
        $this->load->view('layout/master', $data);
    }

    public function calc_kuesioner(){
        $i = 1;
        while($i <= 44){
            $h[$i] = $this->input->post('learningstyle'.$i);
            $i++;
        }
        
        $Active = [1,17,25,29,5,9,13,21,33,37,41];
        $Sensing = [2,30,34,6,10,14,18,26,38,22,42];
        $Visual = [3,7,11,15,19,23,27,31,35,39,43];
        $Sequential = [4,28,40,20,24,32,36,44,8,12,16];
        
        $Reflective = [1,5,17,25,29,9,13,21,33,41,37];
        $Intuitive = [2,14,22,26,30,34,6,10,18,38,42];
        $Verbal = [3,7,11,15,19,27,35,23,31,39,43];
        $Global = [4,8,12,16,28,40,24,32,20,36,44];

        $hasil[0] = $this->calcLs($Active,$Reflective,$h);

        $hasil[1] = $this->calcLs($Sensing,$Intuitive,$h);

        $hasil[2] = $this->calcLs($Visual,$Verbal,$h);

        $hasil[3] = $this->calcLs($Sequential,$Global,$h);


        $mhk = new M_Hasil_Kuesioner;
        $mhk->usr_id = $this->session->userdata('id');
        $mhk->Active = $hasil[0][0];
        $mhk->Reflective = $hasil[0][1];
        $mhk->Sensing = $hasil[1][0];
        $mhk->Intuitive = $hasil[1][1];
        $mhk->Visual = $hasil[2][0];
        $mhk->Verbal = $hasil[2][1];
        $mhk->Sequential = $hasil[3][0];
        $mhk->Global = $hasil[3][1];
        $mhkId = $this->M_Hasil_Kuesioner->insert($mhk);
        /*$mhkId if 0 = error, if 1 = success*/
        if($mhkId != 0){
            $this->session->set_userdata('ls',1);
            redirect('siswa/hasil_kuesioner_ls');
        }
        else{
            echo 'Error Encountered !';
        }
    }

    public function calcLs($data1,$data2,$hasil){
        $i = 0;
        $A = 0;
        $B = 0;
        
        while($i < count($data1) ){

            if($hasil[$data1[$i]] == 'a'){
                $A++; 
            }

            if($hasil[$data2[$i]] == 'b'){
                $B++;
            }

            $i++;
        }

        $temp = [$A,$B];
        return $temp;
    }

    public function insert_tr(){
        $mhk2 = new M_Hasil_Kuesioner2;
        $mhk2->usr_id = $this->session->userdata('id');
        $mhk2->hasil = $this->input->post('hasil');
        $mhk2Id = $this->M_Hasil_Kuesioner2->insert($mhk2);

        if($mhk2Id != 0){
            $this->session->set_userdata('tr',1);
            redirect('siswa/hasil_kuesioner_ls');
        }
        else{
            echo 'Error Encountered !';
        }
    }

}

?>