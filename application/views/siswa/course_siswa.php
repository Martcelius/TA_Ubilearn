<main class="mdl-layout__content">
    <div class="col-sm-12 cover-main">
        <div class="mdl-grid">
            <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <div>
                    <h2 style="color:white">My Course</h2>
                    <h3 style="color:white">Browse Course</h3>
                </div>
                <div>

                </div>
            </div>
            
        </div>
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
      <div class="">
          <br>
          <br>
          <br>
          <br>
          <br>
            <?php
                $this->breadcrumbs->push('Dashboard', 'siswa/dashboard');
                $this->breadcrumbs->push('Course', '/');
                echo $this->breadcrumbs->show();
            ?>
        </div>
    </div>
        
    </div>
    <div class=" col-sm-12 " >
        <div class="mdl-grid">
        <?php foreach($courses as $course_siswa): ?> 
                <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--4-col-tablet mdl-cell--4-col-phone">

                    <div class="mdl-card mdl-shadow--2dp cotoneaster">
                        <div class="mdl-card__title mdl-card--expand">
                        </div>
                        <div class="mdl-card__supporting-text">
                            <h4 style="text-transform: uppercase;"><?php echo $course_siswa->crs_name; ?> </h4> <hr style="background-color: white;">
                            <span> <?php echo $course_siswa->usr_firstname.' '.$course_siswa->usr_lastname;?> </span>
                        </div>
                        <div class="mdl-card__actions">
                        <?php
                            $course_enrol = M_Course_Enrol::where('crs_id',$course_siswa->crs_id)
                                ->where('usr_id',$this->session->userdata('id'))->first();
//                      ?>
                        <a href="<?php if($course_enrol != NULL) echo site_url('siswa/course/log/'.$course_siswa->crs_id);else echo site_url('siswa/course_close/'.$course_siswa->crs_id); ?>">
                        <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">
                                Masuk
                        </button></a>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</main>