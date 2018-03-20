<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Rating_Reply extends Eloquent
{
    protected $table = 'rating_reply';
    protected $primaryKey = 'rry_id';
    const CREATED_AT = 'rry_timecreated';
    const UPDATED_AT = 'rry_timemodified';

    public function update_rating_reply($data)
    {
        $rating = M_Rating_Reply::where('ftr_id','=',$data['ftr_id'])->first();
        $rating->usr_id = $data['usr_id'];
        $rating->rry_rated = $data['rry_rated'];
        return $rating->save();
    }

    public function insert_id_rating($idftr)
    {
        $idr = new M_Rating_Reply;
        $idr->ftr_id = $idftr;

        return $idr->save();
    }
    
    
}

?>