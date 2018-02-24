<main class="mdl-layout__content mdl-color--grey-100">
    <div class="mdl-grid cover-main">
    </div>
    <div class="mdl-grid"  >
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp " >
                <div class="mdl-card__title">
                    <h2>Pengaturan Password Siswa</h2>
                </div>
                <div class="mdl-card__supporting-text">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-10 ">

                                <form class="form-horizontal" action="<?php echo site_url('siswa/password_siswa')?>" method="post" enctype="multipart/form-data">
                                    <fieldset>
                                        <!-- Form Name -->
                                        <legend style="color:white;">Ubah Password</legend>

                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Current Password</label>
                                            <div class="col-md-4">
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-key"></i>
                                                    </div>
                                                    <input name="current_password"  class="form-control input-md" value="<?php echo $assesment->ass_name?>" required>
                                                </div>
                                            </div>
                                        </div>

                                    </fieldset>
                                    <div>
                                        <input type="text" value="<?php echo $this->session->userdata('id')?>" class="form-control" name="id"  style="display:none" required/>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-4 col-sm-10">
                                            <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">Ubah</button>
                                        </div>
                                    </div>
                                </form>
                            </div>

                            <div class="col-md-2 hidden-xs">
                                <img src="<?php echo base_url();?>res/assets/images/uploads/<?php echo $this->session->userdata('foto');?>" class="img-responsive img-thumbnail" id="blah">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah')
                    .attr('src', e.target.result);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
</script>