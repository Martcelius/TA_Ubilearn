<?php use Illuminate\Database\Capsule\Manager as DB;?>
<!-- MAIN -->

<main class="mdl-layout__content">
<div class="mdl-grid cover-main">
    <div class="mdl-cell mdl-cell--12-col">
        <div class="mdl-grid">
            <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
                <h2 style="color:white">Forum</h2>
            </div>
        </div>
    </div>
</div>

<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">    
        <div class="mdl-card mdl-shadow--2dp">
            <div class="mdl-card__title">
                <i class="material-icons" style="font-size: 30px">forum</i>
                <h3 class="mdl-card__title-text" style="margin-left: 20px"> Daftar Lesson </h3>   
            </div>
        </div>
    </div>
</div>

<?php $i=0; ?>
<?php foreach ($datalessonforum as $dataforum): ?>
    <?php $i++; ?>
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">    
            <div class="mdl-card mdl-shadow--2dp">
                <div class="mdl-card__title" style="display: block">
                    <button class="btn-dd" style="float: right" type="button" data-toggle="collapse" data-target="#demo<?php echo $i?>">
                        <i class="fa fa-bars" style="display : inline-block" id = "forum_em"></i>
                    </button>
                    <div class="mdl-cell mdl-cell--12-col">
                            <h2 class="mdl-card__title-text"><?php echo $dataforum->lsn_name ?></h2>
                    </div>
                </div>
            
                <div id="demo<?php echo $i?>" class="collapse" style="background-color:rgba(0, 0, 0, 0.3)">
                    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone" style="margin-top:0px; margin-left:35px;">
                        <a href="<?php echo site_url('instruktur/add_forum/'.$dataforum->crs_id.'/'.$dataforum->lsn_id)?>">
                            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">
                            <i class="material-icons">create</i>
                                Buat Forum
                            </button>
                        </a>
                    </div>
                    
                    <table class="table table-bordered" style="width:96%;margin-left:35px;">
                        <thead>
                            <tr>
                                <th style="text-align: center; width:5%; color : rgba(255, 255, 255, 0.8);  background-color:black;">No.</th>
                                <th style="text-align: center; width:20%; color : rgba(255, 255, 255, 0.8);  background-color:black;">Nama Forum</th>
                                <th style="text-align: center; width:40%; color : rgba(255, 255, 255, 0.8);  background-color:black;">Deskripsi</th>
                                <th style="text-align: center; width:10%; color : rgba(255, 255, 255, 0.8);  background-color:black;">Jumlah Thread</th>
                                <th style="text-align: center; width:15%; color : rgba(255, 255, 255, 0.8);  background-color:black;">Aksi</th>
                            </tr>
                        </thead>
                        
                        <?php $datalistforum = DB::table('course_forum')
                                            ->leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
                                            ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
                                            ->where('course_lesson.lsn_id',$dataforum->lsn_id)
                                            ->get();
                                if ($datalistforum != NULL)
                                {
                                    $no=1;
                                    foreach ($datalistforum as $thread)
                                    {
                                        $jumlahThread = M_Course_Forum_Thread::where('cfr_id',$thread->cfr_id)->get();
                                        $jumlah[$no] = $jumlahThread->count('cfr_id');
                                        $no++;

                                    }
                                    
                                    $jumlahthread = $jumlah;
                                    $num=1; 
                                    foreach($datalistforum as $dataforum): ?>
                                        <tbody>
                                            <tr id="forum_tabel_lesson1">
                                                <td style="color : rgba(255, 255, 255, 0.8);">
                                                    <?php echo $num; ?>
                                                </td>
                                                <td style="color : rgba(255, 255, 255, 0.8);">
                                                    <?php echo $dataforum->cfr_title ?>
                                                </td>
                                                <td style="color : rgba(255, 255, 255, 0.8);">
                                                    <?php echo $dataforum->cfr_desc ?>
                                                </td>
                                                <td style="color : rgba(255, 255, 255, 0.8);text-align:center;">
                                                    <?php echo $jumlahthread[$num] ?>
                                                </td>
                                                <td style="color : rgba(255, 255, 255, 0.8);text-align:center;">
                                                <a href="<?php echo site_url('instruktur/list_thread_instruktur/'.$dataforum->cfr_id)?>">
                                                    <button style="margin-bottom: 5px; margin-right: 5px; background-color: #067eb7;" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab" title="Lihat">
                                                        <i class="material-icons">remove_red_eye</i>
                                                    </button>
                                                </a>
                                                <a href="<?php echo site_url('instruktur/edit_forum/'.$dataforum->cfr_id.'/'.$dataforum->crs_id)?>">
                                                    <button style="margin-bottom: 5px; margin-right: 5px;background-color: green;" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab" title="Ubah">
                                                        <i class="material-icons">edit</i>
                                                    </button>
                                                </a>
                                                <a href="<?php echo site_url('instruktur/forum/delete_forum/'.$dataforum->cfr_id.'/'.$dataforum->crs_id)?>">
                                                    <button style="margin-bottom: 5px;background-color: red;" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab " title="Hapus" onclick="return confirm('Anda yakin untuk menghapus?');">
                                                        <i class="material-icons">delete</i>
                                                    </button>
                                                </a>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <?php $num++; ?>
                                    <?php endforeach; ?>
                        <?php   }
                                else
                                {
                                    $jumlahthread = 0;
                                    $num=1; 
                                    foreach($datalistforum as $dataforum): ?>
                                        <tbody>
                                            <tr id="forum_tabel_lesson1">
                                                <td style="color : rgba(255, 255, 255, 0.8);">
                                                    <?php echo $num; ?>
                                                </td>
                                                <td style="color : rgba(255, 255, 255, 0.8);">
                                                    <?php echo $dataforum->cfr_title ?>
                                                </td>
                                                <td style="color : rgba(255, 255, 255, 0.8);">
                                                    <?php echo $dataforum->cfr_desc ?>
                                                </td>
                                                <td style="color : rgba(255, 255, 255, 0.8);text-align:center;">
                                                    <?php echo $jumlahthread[$num] ?>
                                                </td>
                                                <td style="color : rgba(255, 255, 255, 0.8);text-align:center;">
                                                <a href="<?php echo site_url('instruktur/list_thread_instruktur/'.$dataforum->cfr_id)?>">
                                                    <button style="margin-bottom: 5px; margin-right: 5px; background-color: #067eb7;" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab" title="Lihat">
                                                        <i class="material-icons">remove_red_eye</i>
                                                    </button>
                                                </a>
                                                <a href="<?php echo site_url('instruktur/edit_forum/'.$dataforum->cfr_id.'/'.$dataforum->lsn_id)?>">
                                                    <button style="margin-bottom: 5px; margin-right: 5px;background-color: green;" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab" title="Ubah">
                                                        <i class="material-icons">edit</i>
                                                    </button>
                                                </a>
                                                <a href="<?php echo site_url('instruktur/forum/delete_forum/'.$dataforum->cfr_id.'/'.$dataforum->lsn_id)?>">
                                                    <button style="margin-bottom: 5px;background-color: red;" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab " title="Hapus" onclick="return confirm('Anda yakin untuk menghapus?');">
                                                        <i class="material-icons">delete</i>
                                                    </button>
                                                </a>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <?php $num++; ?>
                                    <?php endforeach; ?>    
                        <?php   } ?>
                    </table>
                </div>      
            </div>
        </div>
    </div>
<?php endforeach; ?>         
</main>