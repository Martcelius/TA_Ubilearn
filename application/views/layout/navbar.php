<div class="mdl-layout-spacer"></div>
            <?php
            define( 'TIMEBEFORE_NOW',         'Sekarang' );
            define( 'TIMEBEFORE_MINUTE',      '{num} menit yang lalu' );
            define( 'TIMEBEFORE_MINUTES',     '{num} menit yang lalu' );
            define( 'TIMEBEFORE_HOUR',        '{num} jam yang lalu' );
            define( 'TIMEBEFORE_HOURS',       '{num} jam yang lalu' );
            define( 'TIMEBEFORE_YESTERDAY',   'Kemarin' );
            define( 'TIMEBEFORE_FORMAT',      '%e %b' );
            define( 'TIMEBEFORE_FORMAT_YEAR', '%e %b, %Y' );

            function time_ago( $time )
            {
                $out    = ''; // what we will print out
                $now    = time(); // current time
                $diff   = $now - $time; // difference between the current and the provided dates

                if( $diff < 60 ) // it happened now
                    return TIMEBEFORE_NOW;

                elseif( $diff < 3600 ) // it happened X minutes ago
                    return str_replace( '{num}', ( $out = round( $diff / 60 ) ), $out == 1 ? TIMEBEFORE_MINUTE : TIMEBEFORE_MINUTES );

                elseif( $diff < 3600 * 24 ) // it happened X hours ago
                    return str_replace( '{num}', ( $out = round( $diff / 3600 ) ), $out == 1 ? TIMEBEFORE_HOUR : TIMEBEFORE_HOURS );

                elseif( $diff < 3600 * 24 * 2 ) // it happened yesterday
                    return TIMEBEFORE_YESTERDAY;

                else // falling back on a usual date format as it happened later than yesterday
                    return gmdate("j M Y, g:i a", $time);
            }

				$jumlah_notif = M_Notification::where('usr_id', '=', $this->session->userdata('id'))->where('ntf_read', '=', 'N')->count();
				$notifs = M_Notification::where('usr_id', '=', $this->session->userdata('id'))->where('ntf_read', '=', 'N')->get();
			?>
			
            <!-- <div class="material-icons mdl-badge mdl-badge--overlap mdl-button--icon notification" id="notification" data-badge="<?php echo $jumlah_notif?>">
					notifications_none
				</div>
				<ul class="mdl-menu mdl-list mdl-js-menu mdl-menu--bottom-right mdl-shadow--2dp notifications-dropdown"
				for="notification">
					<li class="mdl-list__item">
                        <?php 
                        // if ($jumlah_notif > 0) {
                        //     echo "Anda memiliki " . $jumlah_notif . " notifikasi!";
                        // } else {
                        //     echo "Anda tidak memiliki notifikasi!";
                        // }
                        ?>
					</li> -->
					<!-- <?php //foreach($notifs as $notif): ?>
                    <a style="text-decoration:none;" href="
                    <?php
                    // if ($notif->ntf_type == "LSN") {
                    //     echo base_url().'siswa/Notif/read_notif/materi/'.$notif->lsn_id.'/'.$notif->ntf_id;
                    // } else if ($notif->ntf_type == "ASS") {
                    //     echo base_url().'siswa/Notif/read_notif/assesment_info/'.$notif->ass_id.'/'.$notif->ntf_id;
                    // } else if ($notif->ntf_type == "ASG") {
                    //     echo base_url().'siswa/Notif/read_notif/assignment_detail/'.$notif->asg_id.'/'.$notif->ntf_id;
                    // }
                    ?>"> -->
					<!-- <li class="mdl-menu__item mdl-list__item list__item--border-top">
						<span class="mdl-list__item-primary-content">
							<span class="mdl-list__item-avatar background-color--primary">
								<i class="material-icons">new_releases</i>
							</span>
							<span><?php //echo $notif->ntf_message ?></span>
						</span>
						<span class="mdl-list__item-secondary-content">
							<span class="label">2 hours</span>
						</span>
                    </li> -->
                    <!-- <li class="mdl-menu__item mdl-list__item">
						<span class="mdl-list__item-primary-content">
							<span><?php //echo $notif->ntf_message ?></span>
						</span>
						<span class="mdl-list__item-secondary-content">
							<span class="label">just now</span>
						</span>
					</li>
					</a>
                    <?php //endforeach; ?>
                    <li class="mdl-list__item list__item--border-top">
						<button href="<?php echo site_url('instruktur/learning_outcome')?>" class="mdl-button mdl-js-button mdl-js-ripple-effect">ALL NOTIFICATIONS</button>
					</li>
                </ul> -->
                <div class="material-icons mdl-badge mdl-badge--overlap mdl-button--icon message" id="inbox" data-badge="<?php echo $jumlah_notif ?>">
                    notifications_none
				</div>
            <!-- Messages dropdown-->
				<ul class="mdl-menu mdl-list mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right mdl-shadow--2dp messages-dropdown" for="inbox">
					<li class="mdl-list__item">
                    <?php 
                        if ($jumlah_notif > 0) {
                            echo "Anda memiliki " . $jumlah_notif . " notifikasi!";
                        } else {
                            echo "Anda tidak memiliki notifikasi!";
                        }
                        ?>
                    </li>
                    <?php foreach($notifs as $notif): ?>
                    <a style="text-decoration:none;" href="
                    <?php
                    if ($notif->ntf_type == "LSN") {
                        echo base_url().'siswa/Notif/read_notif/materi/'.$notif->lsn_id.'/'.$notif->ntf_id;
                    } else if ($notif->ntf_type == "ASS") {
                        echo base_url().'siswa/Notif/read_notif/assesment_info/'.$notif->ass_id.'/'.$notif->ntf_id;
                    } else if ($notif->ntf_type == "ASG") {
                        echo base_url().'siswa/Notif/read_notif/assignment_detail/'.$notif->asg_id.'/'.$notif->ntf_id;
                    }
                    ?>">
					<li class="mdl-menu__item mdl-list__item mdl-list__item--two-line list__item--border-top">
						<span class="mdl-list__item-primary-content">
							<!-- <span class="mdl-list__item-avatar background-color--primary">
                            <i class="material-icons">new_releases</i>
                            </span> -->
							<span><?php echo $notif->ntf_instructor ?></span>
							<span class="mdl-list__item-sub-title"><?php echo $notif->ntf_message ?></span>
						</span>
						<span class="mdl-list__item-secondary-content">
							<span class="label label--transparent"><?php echo time_ago($notif->ntf_time->format('U'))?></span>
						</span>
                    </li>
                    </a>
                    <?php endforeach; ?>
                    <a style="text-decoration:none;" href="<?php echo site_url('notifikasi') ?>">
					<li class="mdl-list__item list__item--border-top">
						<button href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">Lihat Semua Notifikasi</button>
                    </li>
                    </a>
				</ul>

            <!-- <?php echo $this->session->userdata('foto')?> -->
            <div class="avatar-dropdown" id="icon" >
                <span><?php echo $this->session->userdata('firstname');?></span>
                <img src="<?php echo base_url();?>res/assets/images/uploads/<?php echo $this->session->userdata('foto');?>">
            </div>
            <!-- Account dropdawn-->
            <ul class="mdl-menu mdl-list mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect mdl-shadow--2dp account-dropdown"
                for="icon">
                <li class="mdl-list__item mdl-list__item--two-line" style="height: 75px;">
                    <span class="mdl-list__item-primary-content">
                        <img src="<?php echo base_url();?>res/assets/images/uploads/<?php echo $this->session->userdata('foto');?>" class="material-icons mdl-list__item-avatar">
                        <!-- <span class="material-icons mdl-list__item-avatar"></span> -->
                        <span><?php echo $this->session->userdata('firstname');?></span>
                        <span class="mdl-list__item-sub-title" style="word-wrap: break-word;"><?php echo $this->session->userdata('email');?></span>

                        <span class="mdl-list__item-sub-title" style="word-wrap: break-word;><?php echo $this->session->userdata('email');?></span>
                    </span>
                </li>
                <li class="list__item--border-top"></li>
                <li class="list__item--border-top"></li>
                <a style="text-decoration:none;" href="<?php if ($this->session->userdata('level')== 1) echo site_url('instruktur/akun'); elseif ($this->session->userdata('level')== 2) echo site_url('siswa/akun'); else echo site_url('instruktur/akun'); ?>">
                <li class="mdl-menu__item mdl-list__item" >
                    <span class="mdl-list__item-primary-content">
                       <i class="material-icons mdl-list__item-icon" >person</i>
                        Profil
                    </span>
                </li></a>
<!--                <li class="mdl-menu__item mdl-list__item">-->
<!--                    <span class="mdl-list__item-primary-content">-->
<!--                        <i class="material-icons mdl-list__item-icon">check_box</i>-->
<!--                        My tasks-->
<!--                    </span>-->
<!--                    <span class="mdl-list__item-secondary-content">-->
<!--                      <span class="label background-color--primary">3 new</span>-->
<!--                    </span>-->
<!--                </li>-->
<!--                <li class="mdl-menu__item mdl-list__item">-->
<!--                    <span class="mdl-list__item-primary-content">-->
<!--                        <i class="material-icons mdl-list__item-icon">perm_contact_calendar</i>-->
<!--                        My events-->
<!--                    </span>-->
<!--                </li>-->
                <a style="text-decoration:none;" href="<?php if ($this->session->userdata('level')== 1) echo site_url('admin/akun'); elseif ($this->session->userdata('level')== 2) echo site_url('siswa/password'); else echo site_url('instruktur/password'); ?>">
                <li class="mdl-menu__item mdl-list__item">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-icon">vpn_key</i>
                        Ubah Kata Sandi
                    </span>
                </li></a>
                <a style="text-decoration:none;" href="<?php echo site_url('logout');?>">
                <li class="mdl-menu__item mdl-list__item">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-icon text-color--secondary">exit_to_app</i>
                        Keluar
                    </span>

                </li></a>
            </ul>


