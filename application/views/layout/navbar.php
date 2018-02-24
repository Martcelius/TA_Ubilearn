<div class="mdl-layout-spacer"></div>
            <!-- Search-->
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                <label class="mdl-button mdl-js-button mdl-button--icon" for="search">
                    <i class="material-icons">search</i>
                </label>

                <div class="mdl-textfield__expandable-holder">
                    <input class="mdl-textfield__input" type="text" id="search"/>
                    <label class="mdl-textfield__label" for="search">Enter your query...</label>
                </div>
            </div>

            
            <!-- Notifications dropdown-->
            <!-- Messages dropdown-->
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
                <a href="<?php if ($this->session->userdata('level')== 1) echo site_url('instruktur/akun'); elseif ($this->session->userdata('level')== 2) echo site_url('siswa/akun'); else echo site_url('instruktur/akun'); ?>">
                <li class="mdl-menu__item mdl-list__item" >
                    <span class="mdl-list__item-primary-content">
                       <i class="material-icons mdl-list__item-icon" >settings</i>
                        Pengaturan
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
                <li class="list__item--border-top"></li>
                <a href="<?php if ($this->session->userdata('level')== 1) echo site_url('admin/akun'); elseif ($this->session->userdata('level')== 2) echo site_url('siswa/password'); else echo site_url('instruktur/password'); ?>">
                <li class="mdl-menu__item mdl-list__item">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-icon">supervisor_account</i>
                        Ubah Password
                    </span>
                </li></a>
                <a href="<?php echo site_url('logout');?>">
                <li class="mdl-menu__item mdl-list__item">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-icon text-color--secondary">exit_to_app</i>
                        Log out
                    </span>

                </li></a>
            </ul>


