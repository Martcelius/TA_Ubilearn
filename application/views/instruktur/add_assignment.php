<main class="mdl-layout__content">
<div class="mdl-grid cover-main"></div>
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">Tambah Assignment</h2>
                    <div class="mdl-card__subtitle-text">Masukan Detail Assignment</div>
                </div>
                <div class="mdl-card__supporting-text" style="font-size:15px;">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Nama Assignment</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" id="nama" placeholder="Kode Course" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Deskripsi</label>
                            <div class="col-sm-10">
                            <textarea  class="form-control" id="desc" placeholder="Intro" rows="2"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Attachment</label>
                            <div class="col-sm-10">
                            <input type="file" name="attach">
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

