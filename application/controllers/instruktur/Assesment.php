<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Assesment extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_Course_Assesment');
        $this->load->model('M_Course_Assesment_Question');
        $this->load->model('M_Course_Assesment_Question_Answer');
        
    }

     public function add_assesment($crs_id)
    {
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/tambah_assesment';
        $data['crs_id'] = $crs_id;
        $this->load->view('layout/master', $data);
        
    }

    public function edit_assesment($ass_id)
    {
    	$data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/edit_assesment';
        $data['ass_obj'] = $this->M_Course_Assesment->select($ass_id);
        $data['qst'] = $this->M_Course_Assesment_Question->select($ass_id);
        $i = 0;
        foreach($data['qst'] as $c){
        	$data['qst_ans'][$i] = $this->M_Course_Assesment_Question_Answer->select($c->qst_id);
        	$i++;	
        }
        $data['jumSoal'] = $i;
        $this->load->view('layout/master', $data);
    }

    public function update_assesment(){

    	$mca = new M_Course_Assesment;
        $mca->ass_name = $this->input->post('nama');
		$mca->ass_desc = $this->input->post('desc');
		$mca->ass_timeopen = $this->input->post('wmulai');
		$mca->ass_timeclose = $this->input->post('wselesai');
		$mca->crs_id = $this->input->post('crs_id');
		$mca->ass_tipe = $this->input->post('tipe');
		$ass_id = $this->input->post('ass_id');
		
        $this->M_Course_Assesment->updates($mca,$ass_id);

        $jumSoal =$this->input->post('currNum');/*
        $jumSoalOld = $this->input->post('jumSoalOld');*/
/*        $i = 1;
        if($jumSoalOld > $jumSoalNew){
        	$jumSoal = $jumSoalOld;
        }
        else{
        	$jumSoal = $jumSoalNew;
        }*/
        //loop per soal
        $i = 1;
        while($i <= $jumSoal){
            //Update Soal ke DB
        	$mcaq = new M_Course_Assesment_Question;
            $soal = $this->input->post('soal'.$i);

            $mcaq->qst_text = $soal;
            $mcaq->ass_id = $ass_id;
            $qst_id = $this->input->post('qst_id'.$i);
            $qst_id = $this->M_Course_Assesment_Question->updates($mcaq,$qst_id);
            //end insert soal

            //Insert Option ABCDE ke DB
            $jwbBenar = $this->input->post('opt'.$i);
            $point = $this->input->post('poin'.$i);
            $opt[0] = $this->input->post('A'.$i);
            $opt[1] = $this->input->post('B'.$i);
            $opt[2] = $this->input->post('C'.$i);
            $opt[3] = $this->input->post('D'.$i);
            $opt[4] = $this->input->post('E'.$i);
            $j = 0;

            while($j < 5){
                if($j == $jwbBenar){
                    $poin = $point;
                }else{
                    $poin = 0;
                }
                $mcaqa = new M_Course_Assesment_Question_Answer;
                $mcaqa->ans_text = $opt[$j];
                $mcaqa->ans_point = $poin;
                $mcaqa->qst_id = $qst_id;
                $ins = $this->M_Course_Assesment_Question_Answer->updates($mcaqa,$this->input->post('ans_id'.$i.'-'.$j));
                $j++;
            }
            //End insert option
            $i++;
        }

        if($ins)
        {
            $this->session->set_flashdata('ass_update_success', 'Data Assesment Berhasil Diubah');
        }else{
            $this->session->set_flashdata('ass_update_fail', 'Data Assesment Tidak Berhasil Diubah');
        }
        redirect('instruktur/edit_assesment/'.$ass_id);
    }

    public function delete_qst($qst_id){
    	$cek = $this->M_Course_Assesment_Question->deletes($qst_id);
/*    	$mcaqa = $this->M_Course_Assesment_Question_Answer->select($qst_id);
    	$j = 0;
    	while ($j < 5) {
    		$cek = $this->M_Course_Assesment_Question_Answer->deletes($mcaqa[$j]->ans_id);
    		echo $cek;
    		$j++;
    	}*/
    	if($cek != 0)
        {
            $this->session->set_flashdata('ass_delete_success', 'Soal Assesment Berhasil Dihapus');
        }else{
            $this->session->set_flashdata('ass_delete_fail', 'Soal Assesment Tidak Berhasil Dihapus');
        }
        echo '<script>window.history.go(-1);</script>';
    }	

    public function insert_assesment($crs_id)
    {
       
        $mca = new M_Course_Assesment;
        $mca->ass_name = $this->input->post('nama');
		$mca->ass_desc = $this->input->post('desc');
		$mca->ass_timeopen = $this->input->post('wmulai');
		$mca->ass_timeclose = $this->input->post('wselesai');
		$mca->crs_id = $crs_id;
		$mca->ass_tipe = $this->input->post('tipe');
        $ass_id = $this->M_Course_Assesment->insert($mca);
        $jumSoal = $this->input->post('currNum');
        $i = 1;
        //loop per soal
        while($i <= $jumSoal){
            //Insert Soal ke DB
        	$mcaq = new M_Course_Assesment_Question;
            $soal = $this->input->post('soal'.$i);

            $mcaq->qst_text = $soal;
            $mcaq->ass_id = $ass_id;

            $qst_id = $this->M_Course_Assesment_Question->insert($mcaq);
            //end insert soal

            //Insert Option ABCDE ke DB
            $jwbBenar = $this->input->post('opt'.$i);
            $point = $this->input->post('poin'.$i);
            $opt[0] = $this->input->post('A'.$i);
            $opt[1] = $this->input->post('B'.$i);
            $opt[2] = $this->input->post('C'.$i);
            $opt[3] = $this->input->post('D'.$i);
            $opt[4] = $this->input->post('E'.$i);
            $j = 0;

            while($j < 5){
                if($j == $jwbBenar){
                    $poin = $point;
                }else{
                    $poin = 0;
                }
                $mcaqa = new M_Course_Assesment_Question_Answer;
                $mcaqa->ans_text = $opt[$j];
                $mcaqa->ans_point = $poin;
                $mcaqa->qst_id = $qst_id;
                $ins = $this->M_Course_Assesment_Question_Answer->insert($mcaqa);
                $j++;
            }
            //End insert option

            $i++;
        }

        if($ins)
        {
            $this->session->set_flashdata('ass_simpan', 'Data Assesment Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('ass_gagal', 'Data Assesment Tidak Berhasil Tersimpan');
        }
        redirect('instruktur/add_assesment/'.$crs_id);

    }


    public function add_pretest()
    {
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/tambah_pretest';
        $this->load->view('layout/master', $data);
        
    } 

    public function add_remedial()
    {
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/tambah_remedial';
        $this->load->view('layout/master', $data);
        
    }  

    public function add_exercise()
    {
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/tambah_latihan';
        $this->load->view('layout/master', $data);
        
    }

}