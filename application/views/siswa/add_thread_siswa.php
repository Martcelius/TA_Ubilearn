<main class="mdl-layout__content">
    <div class="mdl-grid cover-main">
        <div class="mdl-cell mdl-cell--12-col">
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
                    <h2 style="color:white">Judul Forum</h2>
                    <br>
                </div>
            </div>
        </div>
    </div>
    <div class="mdl-grid">
        <?php if ($this->session->flashdata('insert_thread') == TRUE): ?>
            <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone">
                <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
                </button>
                <p><?php echo $this->session->flashdata('insert_thread')?></p>
            </div>
        <?php endif; ?>
        <div class="mdl-cell mdl-cell--10-col-desktop mdl-cell--10-col-tablet mdl-cell--1-offset-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">Thread</h2>
                    <div class="mdl-card__subtitle-text">Masukan Detail Thread</div>
                </div>
                <div class="mdl-card__supporting-text">
                    <form action="<?php echo site_url('siswa/thread/insert_thread_siswa/'.$datathreadforumsiswa->cfr_id)?>" class="form-horizontal" method="post">
                        <div class="form-group">
                            <label for="inputjudulthread" class="col-sm-2 control-label" style="font-size:12px;">Judul Thread</label>
                            <div class="col-sm-10">
                            <input name="judul_thread" type="text" class="form-control" id="inputjudulthread" placeholder="Judul Thread...">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputisithreadforum" class="col-sm-2 control-label" style="font-size:12px;">Isi Thread</label>
                            <div class="col-sm-10">
                            <textarea name="isithreadforum" class="form-control" id="textEditor1" style="max-width: 100%"></textarea>
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
	/*CKEDITOR.replace('isithreadforum');*/
    $(document).ready(function () {
        textEdit(1);
    });
</script>


