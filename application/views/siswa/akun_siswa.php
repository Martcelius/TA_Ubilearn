<main class="mdl-layout__content mdl-color--grey-100">
<div class="mdl-grid cover-main">
</div>
<div class="mdl-grid"  >
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
        <div class="mdl-card mdl-shadow--2dp " >
            <div class="mdl-card__title">
                <h2>Pengaturan Akun Siswa</h2>
            </div>
            <div class="mdl-card__supporting-text">
            <div class="container">
            <div class="row">
            <div class="col-md-10 ">
            <form class="form-horizontal" action="<?php echo site_url('siswa/akun/update_user'); ?>" method="post" enctype="multipart/form-data">
            <fieldset>
            
            <!-- Form Name -->
            <legend style="color:white;">Isikan data dengan lengkap</legend>
            
            <!-- Text input-->
            
            <div class="form-group">
                <label class="col-md-4 control-label" for="Name (Full name)">Username</label>  
                    <div class="col-md-4">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-user"></i>
                            </div>
                            <input name="username" type="text" value="<?php echo $this->session->userdata('username') ;?>" class="form-control input-md">
                        </div>
                    </div>  
            </div>
            
            <!-- File Button --> 
            <div class="form-group">
              <label class="col-md-4 control-label" for="Upload photo">Ubah foto</label>
              <div class="col-md-4">
                <input name="upload_foto" class="input-file" type="file" onchange="readURL(this);"/>
              </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="Nama Depan">Nama Depan</label>  
                    <div class="col-md-4">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-user"></i>
                            </div>
                            <input name="nama_depan" type="text" value="<?php echo $this->session->userdata('firstname') ;?>" class="form-control input-md">
                        </div>
                    </div>  
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="Nama Belakang">Nama Belakang</label>  
                    <div class="col-md-4">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-user"></i>
                            </div>
                            <input name="nama_belakang" type="text" value="<?php echo $this->session->userdata('lastname') ;?>" class="form-control input-md">
                        </div>
                    </div>  
            </div>
            <div class="form-group">
              <label class="col-md-4 control-label" for="Email Address">Email Address</label>  
                <div class="col-md-4">
                    <div class="input-group">
                    <div class="input-group-addon">
                        <i class="fa fa-envelope-o"></i>
                    </div>
                    <input name="email" type="email" value="<?php echo $this->session->userdata('email') ;?>" class="form-control input-md">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="Name (Full name)">IPK</label>  
                    <div class="col-md-4">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-user"></i>
                            </div>
                            <input name="ipk" type="text" value="<?php echo $this->session->userdata('gpa') ;?>" class="form-control input-md">
                        </div>
                    </div>  
            </div>
                <fieldset disabled>
                    <div class="form-group">
                        <label class="col-md-4 control-label">Tanggal Lahir</label>
                        <div class="col-md-4">
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input id="disabledTextInput" name="ttl" type="text" value="<?php echo $this->session->userdata('ttl') ;?>" class="form-control input-md">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">Jenis Kelamin</label>
                        <div class="col-md-4">
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-male"></i>
                                </div>
                                <input id="disabledTextInput" name="ttl" type="text" value="<?php if ($this->session->userdata('jk')== 1) echo 'Pria'; else echo 'Wanita' ;?>" class="form-control input-md">
                            </div>
                        </div>
                    </div>
                </fieldset>
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
                <img src="<?php echo base_url();?>res/assets/images/uploads/<?php echo $this->session->userdata('foto');?>" class="img-responsive img-thumbnail" id="blah">            </div>
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