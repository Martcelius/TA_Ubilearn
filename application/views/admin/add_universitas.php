<main class="mdl-layout__content">
<div class="mdl-grid cover-main">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
        <div class="">
            <div class="">
                <h2 style="color:white">Pengaturan Universitas</h2>
            </div>
            <div class="">
                <h2 style="color:white">Admin</h2>
            </div>
        </div>
    </div>
</div>
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
                    <h2 class="mdl-card__title-text">Tambah Universitas</h2>
                    <div class="mdl-card__subtitle-text">Masukan Detail Universitas</div>
                </div>
                <div class="mdl-card__supporting-text">
                    <form class="form-horizontal" action="<?php echo site_url('admin/insert_universitas');?>" method="post">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Nama Universitas</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" id="unv_name" placeholder="Nama Universitas" name="unv_name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Alamat</label>
                            <div class="col-sm-10">
                            <textarea  class="form-control" id="unv_alamat" placeholder="Alamat" rows="3" name="unv_alamat"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Kontak</label>
                            <div class="col-sm-6">
                            <input type="text" class="form-control" id="unv_kontak" placeholder="Kontak" name="unv_kontak">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-6">
                            <input type="email" class="form-control" id="email" placeholder="Email" name="unv_email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Website</label>
                            <div class="col-sm-6">
                            <input type="text" class="form-control" id="unv_website" placeholder="Website" name="unv_website" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Status</label>
                            <div class="col-sm-6">
                            <input type="text" class="form-control" id="unv_status" placeholder="Status" name="unv_status">
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

