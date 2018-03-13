<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Rating_Reply_Reply_Reply extends Eloquent
{
    protected $table = 'rating_reply_reply_reply';
    protected $primaryKey = 'rrl_id';
    const CREATED_AT = 'rrl_timecreated';
    const UPDATED_AT = NULL;

    public function insert_rating_reply_reply_reply($data)
    {
        $rating = new M_Rating_Reply_Reply_Reply;
        $rating->rrr_id = $data['rrr_id'];
        $rating->usr_id = $data['usr_id'];
        $rating->rrl_rated = $data['rrl_rated'];
        return $rating->save();
    }
    
}

?>