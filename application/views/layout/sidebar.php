<header style="background:rgba(230, 230, 230, 0.93)"><img src="<?php echo site_url('res/assets/images/Ubilearning_logo.png')?>" style="height:50px ;width:500px ;"  alt="U-Learning"></header>
        <nav class="mdl-navigation" style="text-color:white;">
            <a style="text-decoration:none;" class="mdl-navigation__link <?php if ($this->uri->segment(2) == 'dashboard') echo "mdl-navigation__link--current"?>" href="<?php echo site_url('siswa/dashboard')?>">
                <i class="material-icons" role="presentation">dashboard</i>
                Dashboard
            </a>
            <a style="text-decoration:none;" class="mdl-navigation__link" id="demo-menu-lower-left" href="#">
                <i class="material-icons" role="presentation">Course</i>
                Course
            </a>
            <ul class="mdl-menu mdl-menu--bottom-left mdl-js-menu mdl-js-ripple-effect"
                for="demo-menu-lower-left">
                <a style="text-decoration:none;" href="<?php echo site_url('siswa/course')?> "><li class="mdl-menu__item <?php if ($this->uri->segment(2) == 'course') echo "mdl-navigation__link--current"?>" >Course</li></a>
                <a style="text-decoration:none;" href="<?php echo site_url('siswa/my_course')?> "><li class="mdl-menu__item <?php if ($this->uri->segment(2) == 'my_course') echo "mdl-navigation__link--current"?> ">My Course</li></a>

            </ul>
            <a style="text-decoration:none;" class="mdl-navigation__link <?php if ($this->uri->segment(2) == 'forum_siswa') echo "mdl-navigation__link--current"?>" href="<?php echo site_url('siswa/forum_siswa')?> ">
                <i class="material-icons" role="presentation">forum</i>
                Forum
            </a>



<!--            <a class="mdl-navigation__link" href="ui.html">-->
<!--                <i class="material-icons">message</i>-->
<!--                 Message-->
<!--            </a>-->

            <div class="mdl-layout-spacer"></div>
            <a style="text-decoration:none;" class="mdl-navigation__link" href="https://github.com/CreativeIT/getmdl-dashboard">
                <i class="material-icons" role="presentation">link</i>
                GitHub
            </a>
        </nav>