<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Rating_Reply_Reply_Reply extends Eloquent
{
    protected $table = 'rating_reply_reply_reply';
    protected $primaryKey = 'rrl_id';
    const CREATED_AT = 'rrl_timecreated';
    const UPDATED_AT = 'rrl_timemodified';

    public function update_rating_reply_reply_reply($data, $rrrratingsum)
    {
        $rating = M_Rating_Reply_Reply_Reply::where('rrr_id','=',$data['rrr_id'])->first();;
        $rating->usr_id = $data['usr_id'];
        $rating->rrl_rated = $rrrratingsum;
        return $rating->save();
    }

    public function insert_id_rating($idrrre)
    {
        $idrrr = new M_Rating_Reply_Reply_Reply;
        $idrrr->rrr_id = $idrrre;

        return $idrrr->save();
    }
}

?>