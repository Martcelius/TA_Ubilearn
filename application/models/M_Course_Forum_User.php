<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Forum_User extends Eloquent
{
    protected $table = 'course_forum_user';
    const CREATED_AT = 'cfu_timecreated';
    const UPDATED_AT = 'cfu_timemodified';
    protected $primaryKey = 'cfr_id';

    public function insert_forum_user($datasiswa)
    {
        $forumuser = new M_Course_Forum_User;
        $forumuser->cfr_id = $datasiswa['cfr_id'];
        $forumuser->usr_id = $datasiswa['usr_id'];

        return $forumuser->save();
    }

    public function updatesummsg_forum_user($cfu_id)
    {
        $update = M_Course_Forum_User::where('cfu_id','=',$cfu_id)
                ->increment('cfu_summsg');
    }

    public function updatemsgout_forum_user($cfu_id)
    {
        $update = M_Course_Forum_User::where('cfu_id','=',$cfu_id)
                ->increment('cfu_msgout');
    }

    public function updatemsgin_forum_user($cfu_id)
    {
        $update = M_Course_Forum_User::where('cfu_id','=',$cfu_id)
                ->increment('cfu_msgin');
    }

    public function updateratingcount_forum_user($cfu_id)
    {
        $update = M_Course_Forum_User::where('cfu_id','=',$cfu_id)
                ->increment('cfu_ratingcount');
    }
    
    public function updateratingsum_forum_user($cfu_id,$k)
    {
        $update = M_Course_Forum_User::where('cfu_id','=',$cfu_id)
                ->increment('cfu_ratingsum',$k);
    }

    public function updateavgscoremsg_forum_user($cfu_id,$cfu_avgscoremsg)
    {
        $update = M_Course_Forum_User::where('cfu_id','=',$cfu_id)
                ->update(['cfu_avgscrmsg' => $cfu_avgscoremsg]);
    }

    public function updatesumword_forum_user($cfu_id,$cfu_sumword)
    {
        $update = M_Course_Forum_User::where('cfu_id','=',$cfu_id)
                ->increment('cfu_sumword',$cfu_sumword);
    }
    
    public function updatecentrality_forum_user($cfu_id,$cfu_centrality)
    {
        $update = M_Course_Forum_User::where('cfu_id','=',$cfu_id)
                ->update(['cfu_centrality' => $cfu_centrality]);
    }
    
    public function updateprestige_forum_user($cfu_id,$cfu_prestige)
    {
        $update = M_Course_Forum_User::where('cfu_id','=',$cfu_id)
                ->update(['cfu_prestige' =>$cfu_prestige]);
    }

}

?>