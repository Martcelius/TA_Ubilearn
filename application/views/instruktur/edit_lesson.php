<main class="mdl-layout__content">
<div class="mdl-grid cover-main">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
        <div class="">
            <div class="">
                <h2 style="color:white">Edit Lesson</h2>
                <h3 style="color:white">Nungki Selviandro</h3>
            </div>
        </div>
    </div>
</div>
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">Lesson</h2>
                    <div class="mdl-card__subtitle-text">Masukan Detail Lesson</div>
                </div>
                <div class="mdl-card__supporting-text" style="font-size:15px;">
                    <form class="form-horizontal" action="<?php echo site_url('instruktur/update_lesson');?>" method="post">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Nama Lesson</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputEmail3" name="lsn_name" value="<?php echo $dataLesson->lsn_name; ?>" style="text-transform: capitalize;">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">Intro Lesson</label>
                            <div class="col-sm-10">
                            <textarea id="ckedit" style="width: 100%;" name="lsn_intro" value="<?php echo $dataLesson->lsn_intro; ?>" ><?php echo htmlspecialchars($dataLesson->lsn_intro);?></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                            <input  class="form-control" id="inputPassword3" name="lsn_id" value="<?php echo $dataLesson->lsn_id; ?>" style="display:none;" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">Selesai</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>
<script>
    CKEDITOR.replace( 'ckedit' );
    $("form").submit( function(e) {
        var messageLength = CKEDITOR.instances['ckedit'].getData().replace(/<[^>]*>/gi, '').length;
        if( !messageLength ) {
            alert( 'Masukkan Deskripsi Lesson' );
            e.preventDefault();
        };
    });
</script>

