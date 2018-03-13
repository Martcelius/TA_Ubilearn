<main class="mdl-layout__content">
<div class="mdl-grid cover-main"></div>
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">Lesson</h2>
                    <div class="mdl-card__subtitle-text">Masukan Detail Lesson</div>
                </div>
                <div class="mdl-card__supporting-text" style="font-size:15px;">
                    <form class="form-horizontal" method="post" action="<?php echo site_url('instruktur/insert_lesson');?>">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Nama Lesson</label>
                            <div class="col-sm-10">
                            <input name="lsn_name" type="text" class="form-control" id="inputEmail3" placeholder="Nama Lesson">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">Intro Lesson</label>
                            <div class="col-sm-10">
                            <textarea name="lsn_intro" id="ckedit" style="width: 100%;"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                            <input name="crs_id" class="form-control" id="inputPassword3" value="<?php echo $id?>" style="display:none"/>                            </div>
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
