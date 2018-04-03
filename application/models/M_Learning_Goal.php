<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Learning_Goal extends Eloquent
{
    protected $table = 'learning_goals';
    const CREATED_AT = NULL;
    const UPDATED_AT = NULL;
    protected $primaryKey = 'lg_id';

    public function user()
    {
        return $this->belongsTo('M_User', 'usr_id');
    }

    public function insert($data)
    {
        if ($data['loc_id'] == "AL") {
            $loc = NULL;
        } else {
            $loc = $data['loc_id'];
        }
        
        $cek_heula = M_Learning_Goal::where('usr_id', $data['usr_id'])->first();
        if (!$cek_heula) {

            $insert = new M_Learning_Goal;
            $insert->usr_id = $data['usr_id'];
            $insert->loc_id = $loc;
            return $insert->save();
        } else {
            $cek_heula->usr_id = $data['usr_id'];
            $cek_heula->loc_id = $loc;
            return $cek_heula->save();
        }

        

    }

}

?>