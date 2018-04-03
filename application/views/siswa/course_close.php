<!-- MAIN -->

<main class="mdl-layout__content">
<div class="mdl-grid cover-main">
            <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
                <div class="">
                    <div class="">
                        <h2 style="color:white"><?php echo $dataCourse->crs_name; ?></h2>
                    </div>
                </div>
            </div>
</div>
<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--9-col">
        <div class="mdl-grid">
            <div class="mdl-cell mdl-cell--1-col">
                <h4>ICON</h4>
            </div>
            
        </div>

        <div class="mdl-grid">
            <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <div class="">
                    <h4 style="color:magenta">You must Take course before you'll learn</h4>
                    <h4 style="color:white">What you'll learn</h4>
                    <h6 style="color:grey"> you'll learn about this </h6>
                </div>
            </div>
        </div>
    </div>

    <div class="mdl-cell mdl-cell--3-col">
        <div class="mdl-card mdl-shadow--2dp trending">
            <div class="mdl-card__title">
                <h2 class="mdl-card__title-text">Course</h2>
            </div>
            <div class="mdl-card__supporting-text">
                <ul class="mdl-list">
                    <li class="mdl-list__item">
                        <span class="mdl-list__item-primary-content">
                            <i class="material-icons" style="font-size: 30px">today</i>
                            <span style="margin-left:20px"><?php echo $dataCourse->crs_timecreated; ?> </span>
                        </span>
                    </li>
                    <li class="mdl-list__item">
                        <span class="mdl-list__item-primary-content">
                            <i class="material-icons" style="font-size: 30px">account_circle</i>
                            <span style="margin-left:20px">Instruktur:<?php echo $dataCourse->usr_firstname.' '.$dataCourse->usr_lastname; ?></span>
                        </span>
                    </li>
                    <li class="mdl-list__item">
                        <span class="mdl-list__item-primary-content">
                            <i class="material-icons" style="font-size: 30px">place</i>
                            <span style="margin-left:20px">Universitas:<?php echo $dataCourse->crs_univ; ?> </span>
                        </span>
                    </li>
                    <li class="mdl-list__item">
                        <span class="mdl-list__item-primary-content">
                            <i class="material-icons" style="font-size: 30px">done</i>
                            <span style="margin-left:20px">Status: Belum Diambil</span>
                        </span>
                    </li>
                </ul>
                <hr>
                <div style="text-align:center;">

                    <a href="<?php echo site_url('siswa/enrol/'.$dataCourse->crs_id)?>"><button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-light-blue" >
                        Ambil Course
                    </button></a>

                 </div>
            </div>
        </div>
    </div>

    <div class="mdl-cell mdl-cell--9-col">
    </div>

    <div class="mdl-cell mdl-cell--3-col">
        <div class="mdl-card mdl-shadow--2dp trending">
            <div class="mdl-card__title">
                <h2 class="mdl-card__title-text">Course Lainnya</h2>
            </div>
            <div class="mdl-card__supporting-text" style="overflow-y : scroll;max-height: 200px">
                <ul class="mdl-list">
                <?php
                $i = 0; 
                $len = count($dataCourseLain);
                foreach ($dataCourseLain as $krus):?>
                <?php
                    $course_enrol = M_Course_Enrol::where('crs_id',$krus->crs_id)
                        ->where('usr_id',$this->session->userdata('id'))->first();
                ?>
                    <li class="mdl-list__item">
                        <span class="mdl-list__item-primary-content">
                            <i class="material-icons" style="font-size: 30px">folder_special</i>
                            <a  href="<?php if($course_enrol != NULL) echo site_url('siswa/course_detail/'.$krus->crs_id);else echo site_url('siswa/course_close/'.$krus->crs_id); ?>" style="margin-left:20px">
                                <?php echo "<b> $krus->crs_name </b>" ?>
                            </a> 
                        </span>
                    </li>
                    <?php
                        if ($i <> $len - 1) {
                            echo "<hr>";
                        }
                    ?>
                    <?php
                    $i++;
                    ?>
                <?php endforeach; ?>
                </ul>
            </div>
        </div>
    </div>
</div>
</main>