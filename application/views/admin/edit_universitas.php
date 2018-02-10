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
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">Tambah Universitas</h2>
                    <div class="mdl-card__subtitle-text">Masukan Detail Universitas</div>
                </div>
                <div class="mdl-card__supporting-text">
                    <form class="form-horizontal" action="<?php echo site_url('admin/update_universitas')?>" method="post">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Nama Universitas</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputEmail3" name="unv_name" value="<?php echo $editUnv->unv_name?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Alamat</label>
                            <div class="col-sm-10">
                                <textarea  class="form-control" id="inputEmail3" name="unv_alamat" rows="3"><?php echo htmlspecialchars($editUnv->unv_address) ?></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Kontak</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="inputEmail3" name="unv_kontak" value="<?php echo $editUnv->unv_contact?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-6">
                                <input type="email" class="form-control" id="inputEmail3" name="unv_email" value="<?php echo $editUnv->unv_email?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Website</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="inputEmail3" name="unv_website" value="<?php echo $editUnv->unv_website?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Status</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="inputEmail3" name="unv_status" value="<?php echo $editUnv->unv_stats?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">Ubah</button>
                            </div>
                        </div>
                        <div>
                            <input type="text" value="<?php echo $editUnv->unv_id?>" class="form-control" name="id"  style="display:none" required/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>

