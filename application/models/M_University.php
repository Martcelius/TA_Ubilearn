<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_University extends Eloquent
{
    protected $table = 'university';
    const CREATED_AT = 'unv_timecreated';
    const UPDATED_AT = 'unv_timemodified';
    protected $primaryKey = 'unv_id';

    public function insert_universitas($data)
    {
        $unv = new M_University;
        $unv->unv_name = $data['unv_name'];
        $unv->unv_address = $data['unv_alamat'];
        $unv->unv_contact = $data['unv_kontak'];
        $unv->unv_email = $data['unv_email'];
        $unv->unv_website = $data['unv_website'];
        $unv->unv_stats = $data['unv_status'];

        return $unv->save();
    }

    public function update_universitas($data,$unv_id)
    {
        $updateUnv = M_University::where('unv_id',$unv_id)->first();
        $updateUnv->unv_name = $data['unv_name'];
        $updateUnv->unv_address = $data['unv_alamat'];
        $updateUnv->unv_contact = $data['unv_kontak'];
        $updateUnv->unv_email = $data['unv_email'];
        $updateUnv->unv_website = $data['unv_website'];
        $updateUnv->unv_stats = $data['unv_status'];

        return $updateUnv->save();
    }
}

?>
