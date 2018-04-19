<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_At_risk extends Eloquent
{
    protected $table = 'at_risk';
    protected $primaryKey = 'ar_id';

    public function select($usr_id){
        $assesment = M_At_risk::where('usr_id',$usr_id)->get();
        return $assesment;
        //cont assesment
    }
    public function insert_ar($data)
    {
        $at_risk = new M_At_risk;
        $at_risk->usr_id = $data['usr_id'];
        $at_risk->crs_id = $data['crs_id'];
        $at_risk->ass_id = $data['ass_id'];
        $at_risk->save();
//        return $data;
    }
    public function posterior($data)
    {
        //likelihood-jk
        if($data['jk'] == 'Pria'){
            $jk_lulus = 23/33;
            $jk_gagal = 6/9;
        } elseif ($data['jk'] == 'Wanita'){
            $jk_lulus = 10/33;
            $jk_gagal = 3/9;
        }
        //likelihood-usia
        if($data['usia'] <=20){
            $usia_lulus = 31/33;
            $usia_gagal = 8/9;
        } elseif ($data['usia'] > 20){
            $usia_lulus = 2/33;
            $usia_gagal = 1/9;
        }
//        dd($data);
        //likelihood-ipk
        $ipk_lulus = $this->gaus($data['ipk'],2.9936,0.4888);
        $ipk_gagal = $this->gaus($data['ipk'],2.6953,0.1987);
        //likelihood-kuis1
        $kuis1_lulus = $this->gaus($data['kuis1'],56.129,24.5839);
        $kuis1_gagal = $this->gaus($data['kuis1'],52.8571,24.908);
        //likelihood-kuis2
        $kuis2_lulus = $this->gaus($data['kuis2'],44.1056,16.3079);
        $kuis2_gagal = $this->gaus($data['kuis2'],33.2468,15.4802);
        //likelihood-kuis3
        $kuis3_lulus = $this->gaus($data['kuis3'],34.6041,11.8597);
        $kuis3_gagal = $this->gaus($data['kuis3'],26.4935,5.3986);
        //likelihood-frekuensi
        $frekuensi_lulus = $this->gaus($data['lc'],373.8249,145.831);
        $frekuensi_gagal = $this->gaus($data['lc'],299.2653,74.2554);

        //testing
        $testing['lulus'] = $jk_lulus * $usia_lulus * $ipk_lulus * $kuis1_lulus * $kuis2_lulus * $kuis3_lulus * $frekuensi_lulus;
        $testing['gagal'] = $jk_gagal * $usia_gagal * $ipk_gagal * $kuis1_gagal * $kuis2_gagal * $kuis3_gagal * $frekuensi_gagal;
        $all = $testing['lulus'] + $testing['gagal'];

        $lulus = number_format($testing['lulus']/$all, $decimals = 4 ,  $dec_point = "." , $thousands_sep = ",") *100;
        $gagal = number_format($testing['gagal']/$all, $decimals = 4 ,  $dec_point = "." , $thousands_sep = ",") *100;
        if($lulus > $gagal){
            return 'Prediksi lulus dengan probability '.$lulus.'%';
        } elseif ($lulus <= $gagal){
            return 'Prediksi gagal dengan probability '.$gagal.'%';
        }

    }
    public function gaus($x,$m,$sd)
    {
//        $m = 163.7;
//        $sd = 6.058;
//        $x = 171;
//        0.032
        $a = 1/(pow((2*M_PI),0.5)*$sd);
        $b = -(pow(($x-$m),2));
        $c = 2*pow($sd,2);
        $gaus = $a * exp($b/$c);
        return $gaus;
    }

}

?>