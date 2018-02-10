<main class="mdl-layout__content">
    <div class="mdl-grid cover-main">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="">
                <div class="">
                    <h2 style="color:white">Pengaturan User</h2>
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
                    <h2 class="mdl-card__title-text">Edit User</h2>
                    <div class="mdl-card__subtitle-text">Masukan Detail User</div>
                </div>
                <div class="mdl-card__supporting-text">
                    <form class="form-horizontal"  action="<?php echo site_url('admin/update_user')?>" method="post"  enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="col-sm-2 control-label" style="font-size: 14px">Kode Pengguna</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="kode" placeholder="Kode" name="kode" value="<?php echo $userData->usr_kode ;?>">
                                <span>*Isi bila pengguna adalah instruktur</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="username" class="col-sm-2 control-label" style="font-size: 14px">Username</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="username" placeholder="Username" name="username" value="<?php echo $userData->usr_username ;?>">
                            </div>
                            <label for="password" class="col-sm-2 control-label" style="font-size: 14px">Password</label>
                            <div class="col-sm-4">
                               <input type="password" class="form-control" id="password" placeholder="Password" name="password" >
                               <span>*Isi bila pengguna ingin mengganti password lama</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="namaDepan" class="col-sm-2 control-label" style="font-size: 14px">Nama Depan</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="namaDepan" placeholder="Nama Depan" name="nama_depan" value="<?php echo $userData->usr_firstname ;?>">
                            </div>
                            <label for="namaBelakang" class="col-sm-2 control-label" style="font-size: 14px">Nama Belakang</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="namaBelakang" placeholder="Nama Belakang" name="nama_belakang" value="<?php echo $userData->usr_lastname ;?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label" style="font-size: 14px">Email</label>
                            <div class="col-sm-4">
                                <input type="email" class="form-control" id="email" placeholder="E-mail" name="email" value="<?php echo $userData->usr_email ;?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="jenis_kelamin" class="col-sm-2 control-label" style="font-size: 14px">Jenis Kelamin</label>
                            <div class="col-sm-5">
                                <div class="radio-inline">
                                    <label style="font-size: 14px"><input type="radio" name="jenis_kelamin" value="Pria">Laki-laki</label>
                                </div>
                                <div class="radio-inline">
                                    <label style="font-size: 14px"><input type="radio" name="jenis_kelamin" value="Perempuan">Wanita</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" style="font-size: 14px">Role</label>
                            <div class="col-sm-5">
                                <div class="radio-inline">
                                    <label style="font-size: 14px"><input type="radio" name="level" value="1">Admin</label>
                                </div>
                                <div class="radio-inline">
                                    <label style="font-size: 14px"><input type="radio" name="level" value="2">Siswa</label>
                                </div>
                                <div class="radio-inline">
                                    <label style="font-size: 14px"><input type="radio" name="level" value="3">Instruktur</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" style="font-size: 14px">IPK</label>
                            <div class="col-sm-4">
                                <input type="decimal" min="0" max="4" class="form-control" id="ipk" placeholder="IPK" name="ipk" value="<?php echo $userData->usr_gpa ;?>">
                                <span>*Isi bila pengguna adalah siswa</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" style="font-size: 14px">Upload gambar</label>
                            <input type="file" id="gambar" accept="image/x-png,image/gif,image/jpeg" style="padding: 9px" onchange="readURL(this);" name="foto" >
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" style="font-size: 14px"></label>
                            <div class="col-sm-2">
                                <img src="<?php if(!empty ($userData->usr_picture)) echo base_url('res/assets/images/uploads/'.$userData->usr_picture); else echo 'http://websamplenow.com/30/userprofile/images/avatar.jpg';?>" class="img-responsive img-thumbnail " id="blah">
                            </div>
                        </div>
                        <div class="form__action">
                        <div class="mdl-layout-spacer"></div>
                            <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">
                                Selesai
                            </button>
                        </div>
                        <div>
                            <input type="text" value="<?php echo $userData->usr_id?>" class="form-control" name="id"  style="display:none" required/>
                        </div>
                    </form>
                   
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
