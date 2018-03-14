<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Rating_Reply_Reply extends Eloquent
{
    protected $table = 'rating_reply_reply';
    protected $primaryKey = 'rrp_id';
    const CREATED_AT = 'rrp_timecreated';
    const UPDATED_AT = NULL;

    public function insert_rating_reply_reply($data)
    {
        $rating = new M_Rating_Reply_Reply;
        $rating->trr_id = $data['trr_id'];
        $rating->usr_id = $data['usr_id'];
        $rating->rrp_rated = $data['rrp_rated'];
        return $rating->save();
    }
    
}

?>