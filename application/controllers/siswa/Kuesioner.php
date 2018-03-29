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
        }
    }

    public function kuesioner_ls(){
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/selfass';
        $this->load->view('layout/master', $data);
    }

    public function kuesioner_tr(){
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/kuesioner_teamrole';
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
        if($hasil[0][0] > $hasil[0][1]){
            $hasil_akhir[0] = 'Active';
        }
        else{
            $hasil_akhir[0] = 'Reflective';
        }

        $hasil[1] = $this->calcLs($Sensing,$Intuitive,$h);
        if($hasil[1][0] > $hasil[0][1]){
            $hasil_akhir[1] = 'Sensing';
        }
        else{
            $hasil_akhir[1] = 'Intuitive';
        }

        $hasil[2] = $this->calcLs($Visual,$Verbal,$h);
        if($hasil[2][0] > $hasil[0][1]){
            $hasil_akhir[2] = 'Visual';
        }
        else{
            $hasil_akhir[2] = 'Verbal';
        }

        $hasil[3] = $this->calcLs($Sequential,$Global,$h);
        if($hasil[3][0] > $hasil[0][1]){
            $hasil_akhir[3] = 'Sequential';
        }
        else{
            $hasil_akhir[3] = 'Global';
        }

        $mhk = new M_Hasil_Kuesioner;
        $mhk->usr_id = $this->session->userdata('id');
        $mhk->AR = $hasil_akhir[0];
        $mhk->SI = $hasil_akhir[1];
        $mhk->VV = $hasil_akhir[2];
        $mhk->SG = $hasil_akhir[3];
        $mhkId = $this->M_Hasil_Kuesioner->insert($mhk);
        echo $mhkId;
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

}

?>