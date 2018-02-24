<main class="mdl-layout__content">
    <div class="mdl-grid cover-main">
            <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <div>
                    <h2 style="color:white">Library</h2>
                    <h3 style="color:white">Browse Lessons</h3>
                </div>
                <div>
                    <P style="color: white">
                        <b>Learning Goals </b><sub style="color:#44efe2">(What do you want to learn ?)</sub>
                    </P>
                </div>
            </div>
    </div>
    <div class=" col-sm-10 " >
        <div class="mdl-grid">
            <?php if ($this->session->flashdata('data_enroll') == TRUE): ?>
                <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                    <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
                    </button>
                    <p><?php echo $this->session->flashdata('data_enroll')?></p>
                </div>
            <?php endif; ?>
            <!-- dropdown -->
            <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <div class="mdl-card mdl-shadow--2dp">
                    <div class="mdl-card__title" style="display: block">
                        <button class="btn-dd" style="float: right;" type="button" data-toggle="collapse" data-target="#demo"><i class="fa fa-bars"></i></button>
                        <div class="mdl-grid">
                            <div class="mdl-cell mdl-cell--1-col">
                                <h4>ICON</h4>
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
                                  <li class="mdl-list__item">
                                      <span class="mdl-list__item-primary-content">
                                          <span style="margin-right: 25px;">1. </span>
                                          <i class="material-icons mdl-list__item-icon">label</i>
                                          <a href="">Intro</a>
                                  </span>
                                  <b class="mdl-list__item-secondary-action" style="margin-right:50px">TEXT</b>
                                  </li>
                                  <li class="mdl-list__item">
                                      <span class="mdl-list__item-primary-content">
                                          <span style="margin-right: 25px;">2. </span>
                                          <i class="material-icons mdl-list__item-icon">label</i>
                                          <a href="<?php echo site_url('siswa/course_content')?>">Project Manager</a>
                                  </span>
                                  <b class="mdl-list__item-secondary-action" style="margin-right:50px">VIDEO</b>
                                  </li>
                                  <li class="mdl-list__item">
                                      <span class="mdl-list__item-primary-content">
                                          <span style="margin-right: 25px;">3. </span>
                                          <i class="material-icons mdl-list__item-icon">label</i>
                                          <a href="">Software Development Life Cycle</a>
                                  </span>
                                  <b class="mdl-list__item-secondary-action" style="margin-right:50px">VIDEO</b>
                                  </li>
                                  <li class="mdl-list__item">
                                      <span class="mdl-list__item-primary-content">
                                          <span style="margin-right: 25px;">4. </span>
                                          <i class="material-icons mdl-list__item-icon">label</i>
                                          <a href="">Project Stuff</a>
                                  </span>
                                  <b class="mdl-list__item-secondary-action" style="margin-right:50px">VIDEO</b>
                                  </li>
                                  <li class="mdl-list__item">
                                      <span class="mdl-list__item-primary-content">
                                          <span style="margin-right: 25px;">5. </span>
                                          <i class="material-icons mdl-list__item-icon">label</i>
                                          <a href="">Another porject stuff</a>
                                  </span>
                                  <b class="mdl-list__item-secondary-action" style="margin-right:50px">VIDEO</b>
                                  </li>
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
                                <h4>ICON</h4>
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
                                  <li class="mdl-list__item">
                                      <span class="mdl-list__item-primary-content">
                                          <span style="margin-right: 25px;">1. </span>
                                          <i class="material-icons mdl-list__item-icon">label</i>
                                          <a href="">Intro</a>
                                  </span>
                                  <b class="mdl-list__item-secondary-action" style="margin-right:50px">TEXT</b>
                                  </li>
                                  <li class="mdl-list__item">
                                      <span class="mdl-list__item-primary-content">
                                          <span style="margin-right: 25px;">2. </span>
                                          <i class="material-icons mdl-list__item-icon">label</i>
                                          <a href="<?php echo site_url('siswa/assesment_info')?>">Project Manager</a>
                                  </span>
                                  <b class="mdl-list__item-secondary-action" style="margin-right:50px">VIDEO</b>
                                  </li>
                                  <li class="mdl-list__item">
                                      <span class="mdl-list__item-primary-content">
                                          <span style="margin-right: 25px;">3. </span>
                                          <i class="material-icons mdl-list__item-icon">label</i>
                                          <a href="<?php echo site_url('siswa/exercise_doing')?>">Software Development Life Cycle</a>
                                  </span>
                                  <b class="mdl-list__item-secondary-action" style="margin-right:50px">VIDEO</b>
                                  </li>
                                  <li class="mdl-list__item">
                                      <span class="mdl-list__item-primary-content">
                                          <span style="margin-right: 25px;">4. </span>
                                          <i class="material-icons mdl-list__item-icon">label</i>
                                          <a href="">Project Stuff</a>
                                  </span>
                                  <b class="mdl-list__item-secondary-action" style="margin-right:50px">VIDEO</b>
                                  </li>
                                  <li class="mdl-list__item">
                                      <span class="mdl-list__item-primary-content">
                                          <span style="margin-right: 25px;">5. </span>
                                          <i class="material-icons mdl-list__item-icon">label</i>
                                          <a href="">Another porject stuff</a>
                                  </span>
                                  <b class="mdl-list__item-secondary-action" style="margin-right:50px">VIDEO</b>
                                  </li>
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
                                <h4>ICON</h4>
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
                                  <li class="mdl-list__item">
                                      <span class="mdl-list__item-primary-content">
                                          <span style="margin-right: 25px;">1. </span>
                                          <i class="material-icons mdl-list__item-icon">label</i>
                                          <a href="">Intro</a>
                                  </span>
                                  <b class="mdl-list__item-secondary-action" style="margin-right:50px">TEXT</b>
                                  </li>
                                  <li class="mdl-list__item">
                                      <span class="mdl-list__item-primary-content">
                                          <span style="margin-right: 25px;">2. </span>
                                          <i class="material-icons mdl-list__item-icon">label</i>
                                          <a href="<?php echo site_url('siswa/assignment_opening')?>">Project Manager</a>
                                  </span>
                                  <b class="mdl-list__item-secondary-action" style="margin-right:50px">VIDEO</b>
                                  </li>
                                  <li class="mdl-list__item">
                                      <span class="mdl-list__item-primary-content">
                                          <span style="margin-right: 25px;">3. </span>
                                          <i class="material-icons mdl-list__item-icon">label</i>
                                          <a href="">Software Development Life Cycle</a>
                                  </span>
                                  <b class="mdl-list__item-secondary-action" style="margin-right:50px">VIDEO</b>
                                  </li>
                                  <li class="mdl-list__item">
                                      <span class="mdl-list__item-primary-content">
                                          <span style="margin-right: 25px;">4. </span>
                                          <i class="material-icons mdl-list__item-icon">label</i>
                                          <a href="">Project Stuff</a>
                                  </span>
                                  <b class="mdl-list__item-secondary-action" style="margin-right:50px">VIDEO</b>
                                  </li>
                                  <li class="mdl-list__item">
                                      <span class="mdl-list__item-primary-content">
                                          <span style="margin-right: 25px;">5. </span>
                                          <i class="material-icons mdl-list__item-icon">label</i>
                                          <a href="">Another porject stuff</a>
                                  </span>
                                  <b class="mdl-list__item-secondary-action" style="margin-right:50px">VIDEO</b>
                                  </li>
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