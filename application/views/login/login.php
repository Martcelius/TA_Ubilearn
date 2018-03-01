<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V1</title>
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

				<form class="login100-form validate-form" method="post" action="<?php echo base_url().'C_login/masuk' ?>" style="width: 315px;" >
					<span class="login100-form-title" style="color: whitesmoke;padding-bottom: 25px;">
						Masuk
					</span>
					<?php if ($this->session->flashdata('login_salah') == TRUE): ?>
                        <div role="alert"  class="alert alert-danger alert-dismissible fade in ">
                            <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
                            </button>
                            <p><?php echo $this->session->flashdata('login_salah')?></p>
                        </div>
                    <?php endif; ?>
					<div class="wrap-input100 validate-input" data-validate = "Nama pengguna tidak boleh kosong">
						<input class="input100" type="text" name="username" placeholder="Nama Pengguna">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Kata sandi tidak boleh kosong">
						<input class="input100" type="password" name="password" placeholder="Kata Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<!-- <p style="color: red;">Saldwklwadkoawowdok</p> -->
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">
							Masuk
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1" style="color: whitesmoke">
							Lupa
						</span>
						<a class="txt2" href="#" style="color: whitesmoke;">
							Nama Pengguna / Kata Sandi?
						</a>
					</div>

					<div class="text-center p-t-136" style="padding-top: 70px;">
						<a class="txt2" href="<?php echo base_url().'landing_page' ?>" style="color: whitesmoke;">
							Buat Akun Baru
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
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