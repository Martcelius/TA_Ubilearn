<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Rating_Reply_Reply extends Eloquent
{
    protected $table = 'rating_reply_reply';
    protected $primaryKey = 'rrp_id';
    const CREATED_AT = 'rrp_timecreated';
    const UPDATED_AT = 'rrp_timemodified';

    public function update_rating_reply_reply($data, $trrratingsum)
    {
        $rating = M_Rating_Reply_Reply::where('trr_id','=',$data['trr_id'])->first();
        $rating->usr_id = $data['usr_id'];
        $rating->rrp_rated = $trrratingsum;
        return $rating->save();
    }

    public function insert_id_rating($idtrr)
    {
        $idrr = new M_Rating_Reply_Reply;
        $idrr->trr_id = $idtrr;

        return $idrr->save();
    } 
    
}

?>