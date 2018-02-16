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
        <div class="mdl-cell mdl-cell--10-col-desktop mdl-cell--10-col-tablet mdl-cell--1-offset-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">Buat Forum</h2>
                    <div class="mdl-card__subtitle-text">Masukan Detail Forum</div>
                </div>
                <div class="mdl-card__supporting-text">
                    <form action="<?php echo base_url(). 'instruktur/course/insert'; ?>" class="form-horizontal" method="post">
                        <div class="form-group">
                            <label for="inputlessonforum" class="col-sm-2 control-label" style="font-size:12px;">Pilih Lesson</label>
                            <div class="col-sm-10">
                                <select id="inputlessonforum" class="form-control" name="lessonforum">
                                    <option>--Pilih Lesson--</option>
                                    <option>Lesson 1</option>
                                    <option>Lesson 2</option>
                                    <option>Lesson 3</option>
                                    <option>Lesson 4</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputjudulforum" class="col-sm-2 control-label" style="font-size:12px;">Judul Forum</label>
                            <div class="col-sm-10">
                            <input name="judul_forum" type="text" class="form-control" id="inputjudulforum" placeholder="Judul Forum...">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputdeskripsiforum" class="col-sm-2 control-label" style="font-size:12px;">Deskripsi Forum</label>
                            <div class="col-sm-10">
                                <textarea name="deskripsiforum" class="form-control" id="inputdeskripsiforum" style="max-width: 100%"></textarea>
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
</script>

