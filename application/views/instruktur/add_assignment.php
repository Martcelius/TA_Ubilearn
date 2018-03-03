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
                    <h2 class="mdl-card__title-text">Tambah Assignment</h2>
                    <div class="mdl-card__subtitle-text">Masukan Detail Assignment</div>
                </div>
                <div class="mdl-card__supporting-text" style="font-size:15px;">
                    <form action="<?php echo base_url().'instruktur/assignment/insert'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="inputtext3" class="col-sm-2 control-label">Nama Assignment</label>
                            <div class="col-sm-10">
                            <input name="m-nama-asg" type="text" class="form-control" id="inputtext3" placeholder="Nama Course" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputtext3" class="col-sm-2 control-label">Deskripsi</label>
                            <div class="col-sm-10">
                            <textarea name="m-deskripsi-asg" id="ckedit" style="width: 100%;" ></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                        <label class="control-label col-sm-2" >Waktu Selesai :</label>
                        <div class="input-group date form_datetime col-sm-6" style="padding-left: 15px;padding-right: 15px;"  data-link-field="dtp_input1">
                            <input class="form-control" size="16" type="text" name="asg_date">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                        </div>
			            </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="Upload File">Attachment</label>
                            <div class="col-sm-10">
                            <input name="asg-name" class="input-file" type="file" onchange="readURL(this);">
                                <span>*Isi bila ada file yang ingin diUpload</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                            <input style="display:none;" name="crs_id" class="form-control" value="<?php echo $crs_id?>">
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

<script type="text/javascript">
        $('.form_datetime').datetimepicker({
        //language:  'fr',
        autoclose: true,
        todayBtn: true,
        format: "yyyy-mm-dd hh:ii",
        pickerPosition: "top-left",
    });
</script>
<script>
    CKEDITOR.replace( 'ckedit' );
    $("form").submit( function(e) {
        var messageLength = CKEDITOR.instances['ckedit'].getData().replace(/<[^>]*>/gi, '').length;
        if( !messageLength ) {
            alert( 'Masukkan Deskripsi Assignmnet' );
            e.preventDefault();
        };
    });
</script>