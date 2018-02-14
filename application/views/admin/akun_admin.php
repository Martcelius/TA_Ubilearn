<main class="mdl-layout__content mdl-color--grey-100">
<div class="mdl-grid cover-main">
</div>
<div class="mdl-grid"  >
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
        <div class="mdl-card mdl-shadow--2dp " >
            <div class="mdl-card__title">
                <h2>Pengaturan Akun Admin</h2>
            </div>
            <div class="mdl-card__supporting-text">
            <div class="container">
            <div class="row">
            <div class="col-md-10 ">
            <form class="form-horizontal" action="<?php echo site_url('admin/update_user'); ?>" method="post">
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
                <label class="col-md-4 control-label" for="Password">Password</label>  
                    <div class="col-md-4">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-user"></i>
                            </div>
                            <input name="password" type="password" value="<?php echo $this->session->userdata('password') ;?>" class="form-control input-md">
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
                <label class="col-md-4 control-label" for="jenis_kelamin">Jenis Kelamin</label>
                <div class="col-md-4"> 
                    <label class="radio-inline" for="jenis_kelamin-0">
                    <input type="radio" name="jenis_kelamin" id="jenis_kelamin-0" value="1">
                    Pria
                    </label> 
                    <label class="radio-inline" for="jenis_kelamin-1">
                    <input type="radio" name="jenis_kelamin" id="jenis_kelamin-1" value="2">
                    Wanita
                    </label> 
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