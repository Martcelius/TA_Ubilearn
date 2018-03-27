<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Log extends Eloquent
{
    protected $table = 'user_logs';
    const CREATED_AT = NULL;
    const UPDATED_AT = NULL;
    protected $primaryKey = 'log_id';

    public function hitung_log ($usr_id){
        return M_Log::where('usr_id','=',$usr_id)->count();
    }
}

?>