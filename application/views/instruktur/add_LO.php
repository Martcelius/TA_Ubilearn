<main class="mdl-layout__content">
<div class= "mdl-grid cover-main">
</div>
    <div class="mdl-grid">
    <?php if ($this->session->flashdata('data_lo') == TRUE): ?>
    <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet  mdl-cell--12-col-phone"> 
        <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
        </button>
        <p><?php echo $this->session->flashdata('data_lo')?></p>
    </div>
    <?php endif; ?>
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">Learning Outcome</h2>
                    <div class="mdl-card__subtitle-text">Masukan Detail Learning Outcome</div>
                </div>
                <div class="mdl-card__supporting-text" style="font-size:15px;">
                    <form class="form-horizontal" action="<?php echo site_url('instruktur/insert_lo')?>" method="post">
                        <div class="form-group">
                            <label for="inputtext3" class="col-sm-2 control-label">Deskripsi learning Outcome</label>
                            <div class="col-sm-10">
                            <textarea class="form-control" id="loc_desc" placeholder="Deskripsi" name="loc_desc" style="text-transform: capitalize;"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputlessonforum" class="col-sm-2 control-label" style="font-size:12px;">Pilih Course</label>
                            <div class="col-sm-10">
                                <select id="inputlessonforum" class="form-control" name="crs_id" required>
                                    <option disabled="disabled" selected value="">--Pilih Course--</option>
                                    <?php foreach ($data_course as $course):?>
                                        <option value="<?php echo $course->crs_id?>"><?php echo $course->crs_name?></option>
                                    <?php endforeach;?>
                                </select>
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


