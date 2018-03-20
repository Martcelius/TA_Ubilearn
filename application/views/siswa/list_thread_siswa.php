<main class="mdl-layout__content">
<div class="mdl-grid cover-main">
    <div class="mdl-cell mdl-cell--12-col">
        <div class="mdl-grid">
            <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
                <h2 style="color:white"><?php echo $judul_lesson->lsn_name?></h2>
                <br>
            </div>
        </div>
    </div>
</div>

<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">     
        <div style="text-align : left; margin-top : 5px">
           <a href="<?php echo site_url('siswa/add_thread_siswa/'.$forumid->cfr_id)?>">
                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue" style="background-color:#3c8dbc;">
                    <i class="material-icons">create</i>
                    Buat Thread
                </button>
            </a>
        </div>
    </div>
</div>

<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="col-md-9" style="color: #ffffff; ">  
                <table class="table table-hover" id="dataTables-example" style="">
                    <thead style="background-color:#3c8dbc;">
                        <tr>
                            <td style="color : #ffffff; font-size: 20px">
                            <?php echo $judul_forum->cfr_title?>
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:#ffffff">
                            <td>
                                <ul style="list-style-type: none; padding-left:4px;">
                                    <?php $i=1; foreach ($datathreadsiswa as $threadsiswa):?>   
                                        <li>     
                                            <span style="color:#3c8dbc; font-size:15px; ">
                                                <?php echo $threadsiswa->cft_title?>
                                            </span>
                                            <span style="color : #8a8a8a; float:right">
                                                <?php echo $threadsiswa->cft_timecreated?>
                                            </span>
                                            <br>
                                            <span style="color: #00a65a; font-size : 14px">
                                                Oleh : <?php echo $threadsiswa->usr_firstname?> <?php echo $threadsiswa->usr_lastname?>
                                            </span>
                                            <?php 
                                                if($this->session->userdata('id') == $threadsiswa->usr_id)
                                                { ?>
                                                    <a href="<?php echo site_url('siswa/delete_thread_siswa/'.$threadsiswa->cft_id.'/'.$threadsiswa->cfr_id)?>">
                                                        <button style="margin-bottom: 5px; margin-left:7px; background-color: red; float:right;" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab " title="Hapus" onclick="return confirm('Anda yakin untuk menghapus?');">
                                                        <i class="material-icons">delete</i>
                                                        </button>
                                                    </a>
                                                    <a href="<?php echo site_url('siswa/edit_thread_siswa/'.$threadsiswa->cft_id.'/'.$threadsiswa->cfr_id)?>">
                                                        <button style="margin-bottom: 5px; margin-left:7px; background-color: green; float:right;" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab" title="Ubah">
                                                        <i class="material-icons">edit</i>
                                                        </button>
                                                    </a>
                                                    <a href="<?php echo site_url('siswa/detail_thread_siswa/'.$threadsiswa->cft_id)?>">
                                                        <button style="margin-bottom: 5px; margin-left:7px; background-color: #067eb7; float:right;" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab" title="Lihat">
                                                        <i class="material-icons">remove_red_eye</i>
                                                        </button>
                                                    </a>
                                                <?php
                                                }
                                                
                                                
                                                else
                                                { ?>
                                                    
                                                    <a href="<?php echo site_url('siswa/detail_thread_siswa/'.$threadsiswa->cft_id)?>">
                                                        <button style="margin-bottom: 5px; margin-left:7px; background-color: #067eb7; float:right;" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab" title="Lihat">
                                                        <i class="material-icons">remove_red_eye</i>
                                                        </button>
                                                    </a>
                                                <?php       
                                                }
                                                ?>
                                            <br>
                                            <span class="description" style="color : grey; font-size : 14px">
                                                Post Saya : <?php echo $jumlahpost[$i]; ?>
                                            </span>
                                        </li>
                                        <br>
                                    <?php $i++; ?>
                                    <?php endforeach;?>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="col-md-3">      
                <div class="box box-solid box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Rekomendasi Learner</h3>
                    </div>
                    <div class="box-footer no-padding">
                        <ul class="nav nav-pills nav-stacked">
                            <li>
                                <a href="#">
                                    <span class="mdl-list__item-primary-content">
                                        <img class="img-circle" style="width:50px;height:50px; float:left" src="../res/assets/images/icon.png" alt="User Image">
                                        <span style="margin-left:20px;color:black;">Atcheng Supratman</span>
                                        <br>
                                        <span style="margin-left:20px;color:black;font-size:14px;">1301140249</span>
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</main>

<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable();
    });
</script>