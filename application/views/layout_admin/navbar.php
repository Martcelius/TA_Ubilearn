<div class="mdl-layout-spacer"></div>
            <!-- Search-->
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                <div class="mdl-textfield__expandable-holder">
                    <input class="mdl-textfield__input" type="text" id="search"/>
                    <label class="mdl-textfield__label" for="search">Enter your query...</label>
                </div>
            </div>


            <div class="material-icons mdl-badge mdl-badge--overlap mdl-button--icon notification" id="notification" data-badge="23">
					notifications_none
				</div>
				<!-- Notifications dropdown-->
				<ul class="mdl-menu mdl-list mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right mdl-shadow--2dp notifications-dropdown"
				for="notification">
					<li class="mdl-list__item">
						You have 23 new notifications!
					</li>
					<li class="mdl-menu__item mdl-list__item list__item--border-top">
						<span class="mdl-list__item-primary-content">
							<span class="mdl-list__item-avatar background-color--primary">
								<i class="material-icons">plus_one</i>
							</span>
							<span>You have 3 new orders.</span>
						</span>
						<span class="mdl-list__item-secondary-content">
							<span class="label">just now</span>
						</span>
					</li>
					<li class="mdl-menu__item mdl-list__item list__item--border-top">
						<span class="mdl-list__item-primary-content">
							<span class="mdl-list__item-avatar background-color--secondary">
								<i class="material-icons">error_outline</i>
							</span>
							<span>Database error</span>
						</span>
						<span class="mdl-list__item-secondary-content">
							<span class="label">1 min</span>
						</span>
					</li>
					<li class="mdl-menu__item mdl-list__item list__item--border-top">
						<span class="mdl-list__item-primary-content">
							<span class="mdl-list__item-avatar background-color--primary">
								<i class="material-icons">new_releases</i>
							</span>
							<span>The Death Star is built!</span>
						</span>
						<span class="mdl-list__item-secondary-content">
							<span class="label">2 hours</span>
						</span>
					</li>
					<li class="mdl-menu__item mdl-list__item list__item--border-top">
						<span class="mdl-list__item-primary-content">
							<span class="mdl-list__item-avatar background-color--primary">
								<i class="material-icons">mail_outline</i>
							</span>
							<span>You have 4 new mails.</span>
						</span>
						<span class="mdl-list__item-secondary-content">
							<span class="label">5 days</span>
						</span>
					</li>
					<li class="mdl-list__item list__item--border-top">
						<button href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">ALL NOTIFICATIONS</button>
					</li>
				</ul>

            <!-- Messages dropdown-->

            <div class="avatar-dropdown" id="icon">
                <span><?php echo $this->session->userdata('firstname');?></span>
                <img src="<?php echo base_url();?>res/assets/images/uploads/<?php echo $this->session->userdata('foto');?>">            </div>
            <!-- Account dropdawn-->
            <ul class="mdl-menu mdl-list mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect mdl-shadow--2dp account-dropdown"
                for="icon">
                <li class="mdl-list__item mdl-list__item--two-line" style="height:75px;">
                    <span class="mdl-list__item-primary-content">
                        <img src="<?php echo base_url();?>res/assets/images/uploads/<?php echo $this->session->userdata('foto');?>" class="material-icons mdl-list__item-avatar">
                        <!-- <span class="material-icons mdl-list__item-avatar"></span> -->
                        <span><?php echo $this->session->userdata('firstname');?></span>
                        <span class="mdl-list__item-sub-title" style="word-wrap: break-word;"><?php echo $this->session->userdata('email');?></span>
                    </span>
                </li>
                <li class="list__item--border-top"></li>
                <a class="mdl-list__item-primary-content" href="<?php echo site_url('admin/akun_admin') ?>">
                <li class="mdl-menu__item mdl-list__item">
                        <span class="mdl-list__item-primary-content">
                            <i class="material-icons mdl-list__item-icon">settings</i>
                        Pengaturan
                        </span>
                </li>
                </a>
                <li class="list__item--border-top"></li>
                <a href="<?php if ($this->session->userdata('level')== 1) echo site_url('admin/password'); elseif ($this->session->userdata('level')== 2) echo site_url('siswa/password'); else echo site_url('instruktur/password'); ?>">
                    <li class="mdl-menu__item mdl-list__item">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-icon">supervisor_account</i>
                        Ubah Password
                    </span>
                    </li></a>
                <li class="list__item--border-top"></li>

                <a href="<?php echo site_url('logout');?>">

                <li class="mdl-menu__item mdl-list__item">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-icon text-color--secondary">exit_to_app</i>
                        Log out
                    </span>

                </li></a>
            </ul>
