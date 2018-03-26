<main class="mdl-layout__content">
    <div class="mdl-grid cover-main"></div>
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">Courses</h2>
                    <div class="mdl-card__subtitle-text">Masukan Detail Course</div>
                </div>
                <div class="mdl-card__supporting-text" style="font-size:15px;">
                    <form action="<?php echo base_url(). 'instruktur/course/insert'; ?>" class="form-horizontal" method="post">
                        <div class="form-group">
                            <label for="inputtext3" class="col-sm-2 control-label">Kode Course</label>
                            <div class="col-sm-10">
                            <input name="m-kode-course" type="text" class="form-control" id="inputtext3" placeholder="Kode Course">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">Nama Course</label>
                            <div class="col-sm-10">
                            <input name="m-nama-course" type="text" class="form-control" id="inputPassword3" placeholder="Nama Course">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputtext3" class="col-sm-2 control-label">Deskripsi</label>
                            <div class="col-sm-10">
                            <textarea name="m-deskripsi-course" class="form-control" id="inputtext3" placeholder="Deskripsi"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputtext3" class="col-sm-2 control-label">Universitas Course</label>
                            <div class="col-sm-10">
                            <input name="m-univ-course" type="text" class="form-control" id="inputtext3" placeholder="Universitas Course">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ourField">Learning Outcome</label>
                                <div class="col-sm-10" id="myRepeatingFields">
                                    <small>Pilih <span class="glyphicon glyphicon-plus gs"></span> Untuk Menambah Learning Outcome</small>
                                    <div class="entry input-group col-sm-6" style="margin: 5px;">
                                        <input class="form-control" name="Loc[]" type="text" placeholder="Learning Outcome" />
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-success btn-add">
                                                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                                            </button>
                                        </span>

                                    </div>
                                </div>
                            <br>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                                <input name="usr_id" type="text" class="form-control" id="usr_id" value="<?php echo $this->session->userdata('id')?>" style="display:none">
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
<script>
    var currNum = 1;
    $(function()
    {
        $(document).on('click','.btn-add', function(e)
        {
            e.preventDefault();
            var controlForm = $('#myRepeatingFields:first'),
                currentEntry = $(this).parents('.entry:first'),
                newEntry = $(currentEntry.clone()).appendTo(controlForm);
            newEntry.find('input').val('');
            controlForm.find('.entry:not(:last) .btn-add')
                .removeClass('btn-add').addClass('btn-remove')
                .removeClass('btn-success').addClass('btn-danger')
                .removeClass('glyphicon glyphicon-plus').addClass('glyphicon glyphicon-minus')
                .html('');
        }).on('click', '.btn-remove', function(e)
        {
            e.preventDefault();
            $(this).parents('.entry:first').remove();
            return false;
        });
    });
</script>
