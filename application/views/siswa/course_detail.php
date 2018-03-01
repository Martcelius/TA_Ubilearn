<main class="mdl-layout__content">
<div class="col-sm-11 cover-main">
    <div class="mdl-grid">
            <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <div>
                    <h2 style="color:white"><?php echo $course->crs_name?></h2>
                    <h3 style="color:white"><?php echo $course->usr_kode?></h3>
                </div>
            </div>
    </div>
</div>
    <div class=" col-sm-10 " >
        <div class="mdl-grid">
            <!-- dropdown -->
            <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <div class="mdl-card mdl-shadow--2dp">
                    <div class="mdl-card__title" style="display: block">
                        <button class="btn-dd" style="float: right;" type="button" data-toggle="collapse" data-target="#demo"><i class="fa fa-bars"></i></button>
                        <div class="mdl-grid">
                            <div class="mdl-cell mdl-cell--1-col">
                                <div id="icon">
                                    <img src="<?php echo base_url();?>res/assets/images/lesson.png">
                                </div>
                            </div>
                            <div class="mdl-cell mdl-cell--11-col">
                                <h2 class="mdl-card__title-text">Lesson Content</h2><hr style="color: white" />
                                <p style="color: white">Understand to growing need for better .... ....</p>
                            </div>
                        </div>
                    </div>
                    <div id="demo" class="collapse">
                        <div class="mdl-card__supporting-text">
                            <ul class="demo-list-icon mdl-list">
                                <?php 
                                $num=1;
                                foreach ($lesson as $lessons):?>
                                <li class="mdl-list__item">
                                    <span class="mdl-list__item-primary-content">
                                        <span style="margin-right: 25px;"><?php echo $num++?> </span>
                                        <i class="material-icons mdl-list__item-icon">label</i>
                                        <a href="" style="color: white;"><?php echo 'Materi - '.$lessons->lsn_name?></a>
                                </span>
                                <b class="mdl-list__item-secondary-action" style="margin-right:50px"></b>
                                </li>
                                <?php endforeach;?>
                            </ul>
                        </div>
                    </div> 
                </div>
            </div>

            <!-- dropdown end -->
            <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <div class="mdl-card mdl-shadow--2dp">
                    <div class="mdl-card__title" style="display: block">
                        <button class="btn-dd" style="float: right;" type="button" data-toggle="collapse" data-target="#demo2"><i class="fa fa-bars"></i></button>
                        <div class="mdl-grid">
                            <div class="mdl-cell mdl-cell--1-col">
                                <div id="icon">
                                    <img src="<?php echo base_url();?>res/assets/images/assesment.png">
                                </div>
                            </div>
                            <div class="mdl-cell mdl-cell--11-col">
                                <h2 class="mdl-card__title-text">Assesment</h2><hr style="color: white" />
                                <p style="color: white">Understand to growing need for better .... ....</p>
                            </div>
                        </div>
                    </div>
                    <div id="demo2" class="collapse">
                    <div class="mdl-card__supporting-text">
                              <ul class="demo-list-icon mdl-list">
                              <?php 
                                $num= 1;
                                $i = 0;
                                foreach ($listAss as $ass) : ?>
                                  <li class="mdl-list__item">
                                        <span class="mdl-list__item-primary-content">
                                            <span style="margin-right: 25px;"><?php echo $num++?> </span>
                                            <i class="material-icons mdl-list__item-icon mdl-badge mdl-badge--overlap" data-badge="<?php echo $jumSoal[$i] ?>" title="Jumlah Soal" >description</i>
                                            <a href="<?php echo site_url('siswa/assesment_info/'.$ass->ass_id)?>" style="color: white;"><?php echo $ass->ass_tipe.' - '.$ass->ass_name ?></a>
                                        </span>
                                        <b class="mdl-list__item-secondary-action" style="margin-right:50px"></b>
                                  </li>
                                  <?php $i++; endforeach; ?>
                              </ul>
                             
                    </div>
                    </div> 
                </div>
            </div>
            

            <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <div class="mdl-card mdl-shadow--2dp">
                    <div class="mdl-card__title" style="display: block">
                        <button class="btn-dd" style="float: right;" type="button" data-toggle="collapse" data-target="#demo3"><i class="fa fa-bars"></i></button>
                        <div class="mdl-grid">
                            <div class="mdl-cell mdl-cell--1-col">
                                <div id="icon">
                                    <img src="<?php echo base_url();?>res/assets/images/assignment.png">
                                </div>
                            </div>
                            <div class="mdl-cell mdl-cell--11-col">
                                <h2 class="mdl-card__title-text">Assignment</h2><hr style="color: white" />
                                <p style="color: white">Understand to growing need for better .... ....</p>
                            </div>
                        </div>
                    </div>
                    <div id="demo3" class="collapse">
                    <div class="mdl-card__supporting-text">
                            
                              <ul class="demo-list-icon mdl-list">
                                  <?php
                                  $num=1;
                                  foreach ($assignment as $c):?>
                                      <li class="mdl-list__item">
                                    <span class="mdl-list__item-primary-content">
                                        <span style="margin-right: 25px;"><?php echo $num++?> </span>
                                        <i class="material-icons mdl-list__item-icon">label</i>
                                        <a href="<?php echo site_url('siswa/assignment_detail/'.$c->asg_id)?>" style="color: white;"><?php echo 'Materi - '.$c->asg_name?></a>
                                    </span>
                                          <b class="mdl-list__item-secondary-action" style="margin-right:50px"></b>
                                      </li>
                                  <?php endforeach;?>
                              </ul>
                             
                    </div>
                    </div> 
                </div>
            </div> 

        </div>
    </div>

    <div class="sidenav">
        <ul class="demo-list-item mdl-list">
            <li class="mdl-list__item">
                Informasi Course
            </li>
            <hr>
            <li class="mdl-list__item">
                Course : <?php echo $course->crs_name?>
            </li>
            <li class="mdl-list__item">
                Instruktur : <?php echo $course->usr_firstname?> <?php echo $course->usr_lastname?>
            </li>
            <li class="mdl-list__item">
                Jumlah lesson: <?php echo $jml_lesson?>
            </li>
        </ul>
    </div>
    
</main>