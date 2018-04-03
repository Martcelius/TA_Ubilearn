<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Learning_Style extends Eloquent
{
    protected $table = 'learning_style';
    const CREATED_AT = NULL;
    const UPDATED_AT = NULL;
    protected $primaryKey = 'ls_id';

    public function user()
    {
        return $this->belongsTo('M_User', 'usr_id');
    }

    public function insert($data)
    {
        $insert = new M_Learning_Style;
        $insert->usr_id = $data['usr_id'];
        return $insert->save();
    }



}

?>