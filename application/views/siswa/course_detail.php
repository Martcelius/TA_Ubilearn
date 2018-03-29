<main class="mdl-layout__content">
    <div class="mdl-grid cover-main">
        <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
            <div class="">
                <div class="">
                    <h2 style="color:white"><?php echo $course->crs_name ?></h2>
                    <h3 style="color:white"><?php echo $course->usr_kode ?></h3>
                </div>
            </div>
        </div>
        <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
            <div class="">
                <div class="">
                </div>
            </div>
        </div>
        <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
            <div class="">
                <div class="">
                
                </div>
            </div>
        </div>
    </div>

    <div class="mdl-grid">

        <div class="mdl-cell mdl-cell--9-col">
            <div class="mdl-grid">

                <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                    <h4 style="color: white">
                        <b>Target Pembelajaran</b><sub style="color:#05C1CD"><b>(Apa yang ingin Anda pelajari?)</b></sub> <b>&#8681;</b>
                    </h4>                    
                    <select id="selectLoc" class="js-example-placeholder-single mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone" name="state">
                        <option value="AL">Semua</option>    
                        <?php foreach ($loc as $lo): ?>
                        <option value="<?php echo $lo->loc_id ?>"><?php echo $lo->loc_desc ?></option>
                        <?php endforeach; ?>
                    </select>
                    

                </div>
                <!-- dropdown -->
                <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                    <div class="mdl-card mdl-shadow--2dp">
                        <div class="mdl-card__title" style="display: block">
                            <button class="btn-dd" style="float: right;" type="button" data-toggle="collapse"
                                    data-target="#demo"><i class="fa fa-bars"></i></button>
                            <div class="mdl-grid">
                                <div class="mdl-cell mdl-cell--1-col">
                                    <div id="icon">
                                        <img src="<?php echo base_url(); ?>res/assets/images/lesson.png">
                                    </div>
                                </div>
                                <div class="mdl-cell mdl-cell--11-col">
                                    <h2 class="mdl-card__title-text">Lesson Content</h2>
                                    <hr style="background-color: white;"/>
                                    <p style="color: white">Materi pembelajaran di
                                        course <?php echo $course->crs_name ?></p>
                                </div>
                            </div>
                        </div>
                        <div id="demo" class="collapse">
                            <div class="mdl-card__supporting-text">
                                <ul class="demo-list-icon mdl-list">
                                    <?php if (count($lesson) != 0):?>
                                        <?php
                                        $num = 1;
                                        foreach ($lesson as $lessons):?>
                                            <li class="mdl-list__item">
                                        <span class="mdl-list__item-primary-content">
                                            <span style="margin-right: 25px;"><?php echo $num++ ?> </span>
                                            <i class="material-icons mdl-list__item-icon">label</i>
                                            <a href="<?php echo site_url('siswa/content/log_lesson/' . $lessons->lsn_id) ?>"
                                               style="<?php echo $lsnAccessColor[$num-2] ?>"><?php echo 'Materi - ' . $lessons->lsn_name ?></a>
                                        </span>
                                                <b class="mdl-list__item-secondary-action" style="margin-right:50px"></b>
                                            </li>
                                        <?php endforeach; ?>
                                    <?php else :?>
                                    <h3>Data Tidak Ada</h3>
                                    <?php endif;?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- dropdown end -->
                <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                    <div class="mdl-card mdl-shadow--2dp">
                        <div class="mdl-card__title" style="display: block">
                            <button class="btn-dd" style="float: right;" type="button" data-toggle="collapse"
                                    data-target="#demo2"><i class="fa fa-bars"></i></button>
                            <div class="mdl-grid">
                                <div class="mdl-cell mdl-cell--1-col">
                                    <div id="icon">
                                        <img src="<?php echo base_url(); ?>res/assets/images/assesment.png">
                                    </div>
                                </div>
                                <div class="mdl-cell mdl-cell--11-col">
                                    <h2 class="mdl-card__title-text">Assessment</h2>
                                    <hr style="background-color: white;"/>
                                    <p style="color: white">Assessment terdiri dari Kuis, Pre-test, Remedial dan
                                        Exercise</p>
                                </div>
                            </div>
                        </div>
                        <div id="demo2" class="collapse">
                            <div class="mdl-card__supporting-text">
                                <ul class="demo-list-icon mdl-list">
                                    <?php if (count($listAss) != 0):?>
                                    <?php
                                    $num = 1;
                                    $i = 0;
                                    foreach ($listAss as $ass) : ?>
                                        <li class="mdl-list__item">
                                        <span class="mdl-list__item-primary-content">
                                            <span style="margin-right: 25px;"><?php echo $num++ ?> </span>
                                            <i class="material-icons mdl-list__item-icon mdl-badge mdl-badge--overlap"
                                               data-badge="<?php echo $jumSoal[$i] ?>"
                                               title="Jumlah Soal">description</i>
                                            <a href="<?php echo site_url('siswa/assesment_info/' . $ass->ass_id) ?>"
                                               style="color: white;"><?php echo $ass->ass_tipe . ' - ' . $ass->ass_name ?></a>
                                        </span>
                                            <b class="mdl-list__item-secondary-action" style="margin-right:50px"></b>
                                        </li>
                                        <?php $i++; endforeach; ?>
                                    <?php else :?>
                                        <h3>Data Tidak Ada</h3>
                                    <?php endif;?>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                    <div class="mdl-card mdl-shadow--2dp">
                        <div class="mdl-card__title" style="display: block">
                            <button class="btn-dd" style="float: right;" type="button" data-toggle="collapse"
                                    data-target="#demo3"><i class="fa fa-bars"></i></button>
                            <div class="mdl-grid">
                                <div class="mdl-cell mdl-cell--1-col">
                                    <div id="icon">
                                        <img src="<?php echo base_url(); ?>res/assets/images/assignment.png">
                                    </div>
                                </div>
                                <div class="mdl-cell mdl-cell--11-col">
                                    <h2 class="mdl-card__title-text">Assignment</h2>
                                    <hr style="background-color: white;"/>
                                    <p style="color: white">Tugas dikerjakan sesuai dengan tenggat waktu yang diberikan</p>
                                </div>
                            </div>
                        </div>
                        <div id="demo3" class="collapse">
                            <div class="mdl-card__supporting-text">

                                <ul class="demo-list-icon mdl-list">
                                    <?php if (count($assignment) != 0):?>
                                    <?php
                                    $num = 1;
                                    foreach ($assignment as $c):?>
                                        <li class="mdl-list__item">
                                    <span class="mdl-list__item-primary-content">
                                        <span style="margin-right: 25px;"><?php echo $num++ ?> </span>
                                        <i class="material-icons mdl-list__item-icon">label</i>
                                        <a href="<?php echo site_url('siswa/assignment_detail/' . $c->asg_id) ?>"
                                           style="color: white;"><?php echo $c->asg_name ?></a>
                                    </span>
                                            <b class="mdl-list__item-secondary-action" style="margin-right:50px"></b>
                                        </li>
                                    <?php endforeach; ?>
                                    <?php else :?>
                                        <h3>Data Tidak Ada</h3>
                                    <?php endif;?>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="mdl-cell mdl-cell--3-col">
            <div class="mdl-card mdl-shadow--2dp trending">
                <div class="mdl-card__title">
                    <h2 class="mdl-card__title-text">Informasi Course</h2>
                </div>
                <div class="mdl-card__supporting-text">
                    <ul class="mdl-list">
                        <li class="mdl-list__item">
                            Course : <?php echo $course->crs_name ?>
                        </li>
                        <li class="mdl-list__item">
                            Instruktur : <?php echo $course->usr_firstname ?> <?php echo $course->usr_lastname ?>
                        </li>
                        <li class="mdl-list__item">
                            Jumlah lesson: <?php echo $jml_lesson ?>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

</main>

<script>
// In your Javascript (external .js resource or <script> tag)
$(document).ready(function() {
    $(".js-example-placeholder-single").select2({
        placeholder: "Apa yang ingin Anda pelajari?",
        allowClear: true
    });

    $('#selectLoc').on('select2:select', 
    function (e) {
        var data = e.params.data.id;
        console.log(data);
        
        $.ajax({
            type: "POST",
            url: "<?php echo base_url().'siswa/course/goals'. data ?>",
            data: "key=value",
            success: function(){ alert("success"); },
            error: function(xhr, textStatus, error){
                alert(xhr.statusText);
                alert(textStatus);
                alert(error);
            }
        });
    });
});
</script>