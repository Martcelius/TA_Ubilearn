<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Hasil_Kuesioner2 extends Eloquent
{
    protected $table = 'hasil_kuesioner2';
    const CREATED_AT = 'hk2_timecreated';
    const UPDATED_AT = NULL;
    protected $primaryKey = 'hk2_id';

    public function insert($data)
    {
		
		try{
			$data->save();
			$a = $data->hk2_id;
		}
		catch(Exception $e){
			$a = 0;
		}
		/*1 = Berhasil*/
		/*0 = Error*/
		return $a;
    }

    public function selectByUser($usr_id){
        $hasil_kuesioner = M_Hasil_Kuesioner2::where('usr_id',$usr_id)->first();
   		return $hasil_kuesioner;
    }
}

?>