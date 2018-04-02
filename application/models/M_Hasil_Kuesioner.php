<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Hasil_Kuesioner extends Eloquent
{
    protected $table = 'hasil_kuesioner';
    const CREATED_AT = 'hk_timecreated';
    const UPDATED_AT = NULL;
    protected $primaryKey = 'hk_id';

    public function insert($data)
    {
		
		try{
			$data->save();
			$a = $data->hk_id;
		}
		catch(Exception $e){
			$a = 0;
		}
		/*1 = Berhasil*/
		/*0 = Error*/
		return $a;
    }

    public function selectByUser($usr_id){
        $hasil_kuesioner = M_Hasil_Kuesioner::where('usr_id',$usr_id)->first();
   		return $hasil_kuesioner;
    }
}

?>