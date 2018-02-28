<!-- MAIN -->

<main class="mdl-layout__content">
<div class="mdl-grid cover-main">
    <div class="mdl-cell mdl-cell--12-col">
        <div class="mdl-grid">
            <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
                <h2 style="color:white">Forum</h2>
                <br>
                <h4 style="color:grey">Nama Siswa</h4>
            </div>
        </div>
    </div>
</div>

<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">    
        <div class="mdl-card mdl-shadow--2dp">
            <div class="mdl-card__title">
                <i class="material-icons" style="font-size: 30px">forum</i>
                <h3 class="mdl-card__title-text" style="margin-left: 20px"> Diskusi Saya </h3>   
            </div>
        </div>
    </div>
</div>

<?php foreach ($coursetake as $coursetaked): ?>
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">    
            <div class="mdl-card mdl-shadow--2dp">
                <div class="mdl-card__title" style="display: block">
                    <button class="btn-dd" style="float: right" type="button" data-toggle="collapse" data-target="#demo1">
                        <i class="fa fa-bars" style="display : inline-block" id = "forum_em"></i>
                    </button>
                    <div class="mdl-cell mdl-cell--12-col">
                            <h2 class="mdl-card__title-text"><?php echo $coursetaked->crs_name ?></h2><hr style="color: white"/>
                            <h4><?php echo $coursetaked->crs_code ?> / <?php echo $coursetaked->usr_kode ?> </h4>
                    </div>
                </div>
            
                <div id="demo1" class="collapse" style="background-color:rgba(0, 0, 0, 0.3)">
                    <table class="table table-bordered" style="width:96%;margin-left:35px;">
                        <thead>
                            <tr>
                                <th colspan = "3" style="text-align : left; color : rgba(255, 255, 255, 0.8); background-color:black; ">
                                <?php echo $coursetaked->crs_code ?> / <?php echo $coursetaked->crs_name ?> / <?php echo $coursetaked->usr_kode ?>    
                                </th>
                            </tr>

                            <?php
                                $num = 1; 
                                foreach ($lessondata as $lessoncourse): ?>
                                
                                <tr id="forum_tabel_lesson1">
                                    <td style="width:10px;color : rgba(255, 255, 255, 0.8);">
                                        <?php echo $num; ?>
                                    </td>
                                    <td style="width:200px; text-align:left;color : rgba(255, 255, 255, 0.8);">
                                        <?php echo $lessoncourse->lsn_name ?>
                                    </td>
                                    <td>
                                        <table class="table table-bordered" style="width:100%; background-color:transparent; margin-top: 5px;">
                                            <thead> 
                                                    <tr>
                                                        <th style="width: 4%; text-align : center; color : rgba(255, 255, 255, 0.8); background-color:black;">
                                                            No
                                                        </th>
                                                        <th style="width:20%; text-align : center; color : rgba(255, 255, 255, 0.8); background-color:black;">
                                                            Judul
                                                        </th>
                                                        <th style="width: 30%; text-align : center; color : rgba(255, 255, 255, 0.8); background-color:black;">
                                                            Deskripsi Forum
                                                        </th>
                                                        <th style="width: 10%; text-align : center; color : rgba(255, 255, 255, 0.8); background-color:black;">
                                                            Post saya
                                                        </th>
                                                        <th style="width: 10%; text-align : center; color : rgba(255, 255, 255, 0.8); background-color:black;">
                                                            Jumlah Thread
                                                        </th>
                                                        <th style="width: 16%; text-align : center; color : rgba(255, 255, 255, 0.8); background-color:black;">
                                                            Aksi
                                                        </th>
                                                    </tr>

                                                <?php
                                                    $counttab2 = 1;
                                                    foreach ($listforumlesson as $listforum):?>
                                                    <tr>
                                                        <td style="text-align : left; color : rgba(255, 255, 255, 0.8);">
                                                            <?php echo $counttab2++ ?>
                                                        </td>
                                                        <td style="text-align : left; color : rgba(255, 255, 255, 0.8);">
                                                            <?php echo $listforum->cfr_title ?>
                                                        </td>
                                                        <td style="text-align : left; color : rgba(255, 255, 255, 0.8);">
                                                            <?php echo $listforum->cfr_desc ?>
                                                        </td>
                                                        <td style="text-align : center; color : rgba(255, 255, 255, 0.8);">
                                                            5
                                                        </td>
                                                        <td style="text-align : center; color : rgba(255, 255, 255, 0.8);">
                                                            <?php echo $jumlah[$num];?>
                                                        </td>
                                                        <td style="text-align : center">
                                                            <a href="<?php echo site_url('siswa/list_thread_siswa')?>">
                                                                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">Masuk Forum</button>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                <?php endforeach; ?>
                                            </thead>
                                        </table>
                                    </td>
                                </tr>
                                <?php $num++ ?>
                            <?php endforeach; ?>
                        </thead>
                    </table>
                </div>      
            </div>
        </div>
    </div>
<?php endforeach; ?>         
</main>