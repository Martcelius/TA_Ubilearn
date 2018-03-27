<header style="background:rgba(230, 230, 230, 0.93)"><img src="<?php echo site_url('res/assets/images/Ubilearning_logo.png')?>" style="height:50px ;width:500px ;"  alt="U-Learning"></header>
        <nav class="mdl-navigation">
            <a style="text-decoration:none;" class="mdl-navigation__link <?php if ($this->uri->segment(2) == 'dashboard') echo "mdl-navigation__link--current"?>" href="<?php echo site_url('instruktur/dashboard')?>">
                <i class="material-icons" role="presentation">dashboard</i>
                Dashboard
            </a>
            <a style="text-decoration:none;" class="mdl-navigation__link <?php if ($this->uri->segment(2) == 'MyCourse') echo "mdl-navigation__link--current"?>" href="<?php echo site_url('instruktur/MyCourse')?> ">
                <i class="material-icons" role="presentation">folder</i>
               My Course
            </a>
            <a style="text-decoration:none;" class="mdl-navigation__link <?php if ($this->uri->segment(2) == 'forum_instruktur') echo "mdl-navigation__link--current"?>" href="<?php echo site_url('instruktur/forum_instruktur')?>">
                <i class="material-icons" role="presentation">forum</i>
                Forum
            </a>
            <a style="text-decoration:none;" class="mdl-navigation__link <?php if ($this->uri->segment(2) == 'learning_outcome') echo "mdl-navigation__link--current"?>" href="<?php echo site_url('instruktur/learning_outcome')?>">
                <i class="material-icons" role="presentation">book</i>
                Learning Outcome
            </a>
            <a style="text-decoration:none;" class="mdl-navigation__link <?php if ($this->uri->segment(2) == 'log_user') echo "mdl-navigation__link--current"?>" href="<?php echo site_url('instruktur/log_user')?>">
                <i class="material-icons" role="presentation">book</i>
                History User
            </a>
            <!-- <a class="mdl-navigation__link" href="ui.html">
                <i class="material-icons">message</i>
                 Message
            </a> -->

            <div class="mdl-layout-spacer"></div>
            <a style="text-decoration:none;" class="mdl-navigation__link" href="https://github.com/CreativeIT/getmdl-dashboard">
                <i class="material-icons" role="presentation">link</i>
                GitHub
            </a>
        </nav>
