<main class="mdl-layout__content">
<div class="mdl-grid cover-main"></div>
    <div class="mdl-grid">

    <?php if ($this->session->flashdata('data_tersimpan') == TRUE): ?>
    <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone"> 
        <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
        </button>
        <p><?php echo $this->session->flashdata('data_tersimpan')?></p>
    </div>
    <?php endif; ?>
    
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">Lesson</h2>
                    <div class="mdl-card__subtitle-text">Masukan Detail Lesson</div>
                </div>
                <div class="mdl-card__supporting-text">
                    <form class="form-horizontal" method="post" action="<?php echo site_url('instruktur/lesson/insert'.$id);?>">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Nama Lesson</label>
                            <div class="col-sm-10">
                            <input name="lsn_name" type="text" class="form-control" id="inputEmail3" placeholder="Nama Lesson">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">Intro Lesson</label>
                            <div class="col-sm-10">
                            <textarea name="lsn_intro" class="form-control" id="inputPassword3" placeholder="Intro Lesson" rows="2"></textarea>
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

