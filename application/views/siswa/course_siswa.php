<main class="mdl-layout__content">
<div class="mdl-grid cover-main">
    <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
            <div class="">
                <div class="">
                    <h2 style="color:white">Library </h2>
                    <h3 style="color:white">Browse Lessons</h3>
                </div>
                <div>

                </div>
            </div>
    </div>
</div>    
    <div class="mdl-grid " >
        
		<div class="mdl-cell mdl-cell--12-col">
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
//                            dd($pt->ass_id);

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
		

    <!-- <div class="sidenav" style="background-color: #343434;">
        <br/>
        <h5 style="color: white;margin-left: 10px;">CATEGORY</h5>
        <ul>
            <li>
                <h7 style="color: white;margin-left: 10px;">Software and Development</h7>
            </li>
            <li>
                <h7 style="color: white;margin-left: 10px;">Intelligent and Computing</h7>
            </li>
            <li>
                <h7 style="color: white;margin-left: 10px;">Networking</h7>
            </li>
        </ul>
        <hr>
    </div> -->
    </div>
</main>

