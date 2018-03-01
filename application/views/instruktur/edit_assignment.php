<main class="mdl-layout__content">
<div class="mdl-grid cover-main"></div>
    <div class="mdl-grid">
    <?php if ($this->session->flashdata('insert_asg') == TRUE): ?>
            <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone">
                <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
                </button>
                <p><?php echo $this->session->flashdata('insert_asg')?></p>
            </div>
        <?php endif; ?>
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">Edit Assignment</h2>
                    <div class="mdl-card__subtitle-text">Masukan Detail Assignment</div>
                </div>
                <div class="mdl-card__supporting-text" style="font-size:15px;">
                    <form action="<?php echo base_url().'instruktur/assignment/update_asing'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="inputtext3" class="col-sm-2 control-label">Nama Assignment</label>
                            <div class="col-sm-10">
                            <input name="asg_name" type="text" class="form-control" id="inputtext3" value="<?php echo $dataasing->asg_name; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputtext3" class="col-sm-2 control-label">Deskripsi</label>
                            <div class="col-sm-10">
                            <textarea name="asg_text" class="form-control" id="inputtext3" value="<?php echo $dataasing->asg_text; ?>" rows="2"><?php echo htmlspecialchars($dataasing->asg_text);?></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="Upload File">Attachment</label>
                            <div class="col-sm-10">
                            <input name="asg-name" class="input-file" type="file" onchange="readURL(this);">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                            <input style="display:none;" name="asg_id" class="form-control" value="<?php echo $dataasing->asg_id; ?>">
                            </div>
                        </div>
                        <div class="form-group pull-right">
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
