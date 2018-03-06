<main class="mdl-layout__content">
	<div class="mdl-grid cover-main">
		<div class="mdl-cell mdl-cell--12-col">
			<h1 style="color:white"><?php echo $course->crs_name?></h1><br>
			<p style="color:white"><?php echo $course->usr_firstname.' '.$course->usr_lastname?></p>
		</div>
	</div>
	<div class="mdl-grid">
			<div class="mdl-cell mdl-cell--9-col">
				<div class="mdl-card">
					<div class="mdl-card__title">
						<h2 class="mdl-card__title-text"style="color:white"><?php echo $course->lsn_name?></h2>
					</div>
					<p class="mdl-card__supporting-text" style="color:white; font-size:14px;"><?php echo $course->lsn_intro?></p>
                    <?php foreach($contents as $content): ?>
                        <ul class="mdl-list" style="margin: 15px;">
                            <li class="mdl-list__item" style="background-color: #0d0d0d" >
								 <span class="mdl-list__item-primary-content">
                                    <span style="margin-right: 25px;"></span>
                                    <i class="material-icons mdl-list__item-icon"><?php if($content->cnt_type == 'Text') echo "file_download"; else echo "play_circle_filled" ?></i>
                                     <?php echo $content->cnt_name?>
                                </span>
                                <div class="mdl-layout-spacer"></div>
                                <b class="mdl-list__item-secondary-action" style="margin-right:50px"><?php echo $content->cnt_type?></b>
                                <a href="<?php if ($content->cnt_type == 'Text')echo site_url('res/assets/content/'.$content->cnt_source); else echo site_url('siswa/content/video/'.$content->cnt_id); ?>">
                                    <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">
                                        <i class="material-icons"></i>
                                        <?php if ($content->cnt_type == 'Text') echo "Unduh";else echo "Masuk";?>
                                    </button>
                                </a>
                            </li>
                        </ul>
                    <?php endforeach; ?>
<!--                    <ul class="mdl-list" style="margin: 15px;">-->
<!--                            <li class="mdl-list__item" style="background-color: #0d0d0d">-->
<!--                                <a href="#" style="color:white" download>-->
<!--                                    <span class="mdl-list__item-primary-content">-->
<!--                                        <iframe width="560" height="315" src="https://www.youtube.com/embed/VAJK04HOLd0" frameborder="0" allowfullscreen></iframe>-->
<!--                                    </span>-->
<!--                                </a>-->
<!--                            </li>-->
<!--                    </ul>-->
                </div>
            </div>
				<!-- <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue" style="margin:10px;">
						<i class="material-icons">create</i>
						Buat Komentar
				</button> -->
				<!-- <div class="mdl-card" style="margin-top:10px">
					<div class="mdl-card__title">
						<i class="material-icons" style="font-size: 20px">date_range</i>
						<h2 class="mdl-card__title-text"style="color:white; font-size:14px; margin-left:20px;">created_at</h2>
					</div>
					<div class="row">
					    <div class="col-sm-2" style="border-right:1px solid white; text-align:center;">
								<img src="<?php echo base_url();?>/res/assets/images/Icon_header.png" style="margin:5px;">
								<ul class="mdl-list">
									<li>
										<p style="font-color: white;">Iqbal Maulana</p>
									</li>
									<li>
										<p style="font-color: white;">Iqbal Maulana</p>
									</li>
									<li>
										<p style="font-color: white;">Iqbal Maulana</p>
									</li>
								</ul>
							</div>
					    <div class="col-sm-10">
								<p style="color:white;">Hey guys, This may be a pretty stupid question but I will ask it nevertheless; I have a client who wants a comments section on his website, Does anyone have a fairly simple way of implementing a comment box? It doesn’t need to be anything special just something where a user can post what they think of the site.
									Thanks for baring with me on that one! Ben</p>
					    </div>
					 </div>
				</div> -->
			<div class="mdl-cell mdl-cell--3-col">
				<div class="mdl-card mdl-shadow--2dp trending">
            <div class="mdl-card__title">
                <h2 class="mdl-card__title-text">Course</h2>
            </div>
            <div class="mdl-card__supporting-text">
                <ul class="mdl-list">
                    <li class="mdl-list__item">
                        <span class="mdl-list__item-primary-content">
                            <i class="material-icons" style="font-size: 30px">today</i>
                            <span style="margin-left:20px">23/1/2018 16:00 AM </span>
                        </span>
                    </li>
                    <li class="mdl-list__item">
                        <span class="mdl-list__item-primary-content">
                            <i class="material-icons" style="font-size: 30px">account_circle</i>
                            <span style="margin-left:20px"><?php echo $course->usr_firstname.' '.$course->usr_lastname?></span>
                        </span>
                    </li>
                    <li class="mdl-list__item">
                        <span class="mdl-list__item-primary-content">
                            <i class="material-icons" style="font-size: 30px">place</i>
                            <span style="margin-left:20px">Universitas: <?php echo $course->crs_univ?> </span>
                        </span>
                    </li>
                    <li class="mdl-list__item">
                        <span class="mdl-list__item-primary-content">
                            <i class="material-icons" style="font-size: 30px">done</i>
                            <span style="margin-left:20px">Status: Sedang Diambil</span>
                        </span>
                    </li>
                </ul>
            </div>
        </div>
			</div>
	</div>
</main>
