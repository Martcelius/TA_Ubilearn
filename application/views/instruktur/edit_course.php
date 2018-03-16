<main class="mdl-layout__content">
    <div class="mdl-grid cover-main">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="">
                <div class="">
                    <h2 style="color:white">Edit Course</h2>
                    <h3 style="color:white">Fikri Razzaq</h3>
                </div>
            </div>
      </div>
    </div>
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">Courses</h2>
                    <div class="mdl-card__subtitle-text">Masukan Detail Course</div>
                </div>
                <div class="mdl-card__supporting-text" style="font-size:15px;">
                    <form action="<?php echo site_url('instruktur/update_course') ?>" class="form-horizontal" method="post">
                        <div class="form-group">
                            <label for="inputtext3" class="col-sm-2 control-label">Kode Course</label>
                            <div class="col-sm-10">
                            <input name="m-kode-course" type="text" class="form-control" id="inputtext3" value="<?php echo $course->crs_code ?>"  >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">Nama Course</label>
                            <div class="col-sm-10">
                            <input name="m-nama-course" type="text" class="form-control" id="inputPassword3" value="<?php echo $course->crs_name ?>" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputtext3" class="col-sm-2 control-label">Deskripsi</label>
                            <div class="col-sm-10">
                            <textarea name="m-deskripsi-course" class="form-control" id="inputtext3" value="<?php echo $course->crs_summary ?>" ><?php echo htmlspecialchars($course->crs_summary) ?></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputtext3" class="col-sm-2 control-label">Universitas Course</label>
                            <div class="col-sm-10">
                            <input name="m-univ-course" type="text" class="form-control" id="inputtext3" value="<?php echo $course->crs_univ ?>" >
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">Selesai</button>
                            </div>
                        </div>
                        <input name="m-id-course" type="text" class="form-control" id="inputtext3" value="<?php echo $course->crs_id ?>" style="display:none" >
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>

