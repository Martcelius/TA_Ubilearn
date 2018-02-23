<main class="mdl-layout__content">
    <div class="mdl-grid cover-main">
        <div class="mdl-cell mdl-cell--12-col">
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
                    <h2 style="color:white">Forum</h2>
                    <br>
                </div>
            </div>
        </div>
    </div>
    <div class="mdl-grid">
        <?php if ($this->session->flashdata('insert_forum') == TRUE): ?>
            <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone">
                <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
                </button>
                <p><?php echo $this->session->flashdata('insert_forum')?></p>
            </div>
        <?php endif; ?>
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">Buat Forum</h2>
                    <div class="mdl-card__subtitle-text">Masukan Detail Forum</div>
                </div>
                <div class="mdl-card__supporting-text">
                    <form action="<?php echo site_url('instruktur/insert_forum') ?>" class="form-horizontal" method="post">
                        <div class="form-group">
                            <label for="inputlessonforum" class="col-sm-2 control-label" style="font-size:12px;">Pilih Lesson</label>
                            <div class="col-sm-10">
                                <select id="inputlessonforum" class="form-control" name="lsn_id" required>
                                    <option disabled="disabled" selected value="">--Pilih Lesson--</option>
                                    <?php foreach ($dataLesson as $lesson):?>
                                    <option value="<?php echo $lesson->lsn_id?>"><?php echo $lesson->lsn_name?></option>
                                    <?php endforeach;?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputjudulforum" class="col-sm-2 control-label" style="font-size:12px;">Judul Forum</label>
                            <div class="col-sm-10">
                            <input name="judul_forum" type="text" class="form-control" id="inputjudulforum" placeholder="Judul Forum..." required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputdeskripsiforum" class="col-sm-2 control-label" style="font-size:12px;">Deskripsi Forum</label>
                            <div class="col-sm-10">
                                <textarea name="deskripsiforum" class="form-control" id="deskripsiforum" style="max-width: 100%" required></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                                <input name="crs_id" type="text" class="form-control" value="<?php echo $crs_id?>" style="display: none;">
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


<!-- CKEDITOR -->
<script src="https://cdn.ckeditor.com/4.7.1/standard/ckeditor.js" type="text/javascript"></script>
<script>
	CKEDITOR.replace('deskripsiforum');
    $("form").submit( function(e) {
        var messageLength = CKEDITOR.instances['deskripsiforum'].getData().replace(/<[^>]*>/gi, '').length;
        if( !messageLength ) {
            alert( 'Masukkan Deskripsi Forum' );
            e.preventDefault();
        }
    });
</script>

