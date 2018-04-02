<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Lesson_Access_Log extends Eloquent
{
    protected $table = 'lesson_access_log';
    const CREATED_AT = NULL;
    const UPDATED_AT = NULL;
    protected $primaryKey = 'lal_id';

}

?>