<!DOCTYPE html>
<html lang="en">
<head>
	<title>Daftar Instruktur</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<?php echo base_url().'res/assets/Login_v1/' ?>images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url().'res/assets/Login_v1/' ?>vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url().'res/assets/Login_v1/' ?>fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url().'res/assets/Login_v1/' ?>vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<?php echo base_url().'res/assets/Login_v1/' ?>vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url().'res/assets/Login_v1/' ?>vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url().'res/assets/Login_v1/' ?>css/util.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url().'res/assets/Login_v1/' ?>css/main.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100" style="background: unset;padding-top: 120px;">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="<?php echo base_url().'res/assets/Login_v1/' ?>images/img-01.png" alt="IMG">
				</div>

				<form class="login100-form validate-form" method="post" action="<?php echo base_url(). 'C_login/registrasi_siswa'; ?>" style="width: 315px;" >
					<span class="login100-form-title" style="color: whitesmoke;padding-bottom: 25px;">
						Daftar Instruktur
					</span>
					<!-- Hidden Input -->
					<input type="text" hidden value="3" class="input100" name="level" required/>
					<!-- End Hidden Input -->

					<div class="wrap-input100 validate-input" data-validate = "Nama pengguna tidak boleh kosong">
						<input value="<?php echo set_value('name'); ?>" class="input100" type="text" name="name" placeholder="Nama Pengguna">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Nama Depan tidak boleh kosong">
						<input value="<?php echo set_value('name_depan'); ?>" class="input100" type="text" name="name_depan" placeholder="Nama Depan">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Nama Belakang tidak boleh kosong">
						<input value="<?php echo set_value('name_belakang'); ?>" class="input100" type="text" name="name_belakang" placeholder="Nama Belakang">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Email tidakboleh kosong/format email salah">
						<input value="<?php echo set_value('email'); ?>" class="input100" type="email" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Kata sandi tidak boleh kosong">
						<input class="input100" type="password" name="pass" placeholder="Kata Password" >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Kata sandi tidak boleh kosong">
						<input class="input100" type="password" name="repeat-pass" placeholder="Ulang Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<?php echo form_error('repeat-pass'); ?>

					<div class="wrap-input100 validate-input" data-validate = "Tanggal lahir tidak boleh kosong">
						<input value="<?php echo set_value('tgl_lahir'); ?>" class="input100" type="date" name="tgl_lahir" style="color: gray;">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-calendar" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input">
						<label style="color: whitesmoke;" class="radio-inline" for="jenis_kelamin-0" style="margin-left: 10px; color:gray;">
                        <input required <?php echo set_value('jenis_kelamin') == 1 ? "checked" : ""; ?> type="radio" name="jenis_kelamin" id="jenis_kelamin-0" value="1">
                        Pria
                    	</label>
	                    <label class="radio-inline" style="color: whitesmoke;" for="jenis_kelamin-1" style="margin-left: 10px; color:gray;">
	                        <input required <?php echo set_value('jenis_kelamin') == 2 ? "checked" : ""; ?> type="radio" name="jenis_kelamin" id="jenis_kelamin-1" value="2">
	                        Wanita
	                    </label>
					</div>

					<!-- <p style="color: red;">Saldwklwadkoawowdok</p> -->
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">
							Daftar
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="<?php echo base_url().'res/assets/Login_v1/' ?>vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<?php echo base_url().'res/assets/Login_v1/' ?>vendor/bootstrap/js/popper.js"></script>
	<script src="<?php echo base_url().'res/assets/Login_v1/' ?>vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="<?php echo base_url().'res/assets/Login_v1/' ?>vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="<?php echo base_url().'res/assets/Login_v1/' ?>vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="<?php echo base_url().'res/assets/Login_v1/' ?>js/main.js"></script>

</body>
</html>