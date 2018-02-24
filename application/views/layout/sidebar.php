<header>U-Learning</header>
        <nav class="mdl-navigation" style="text-color:white;">
            <a class="mdl-navigation__link mdl-navigation__link--current" href="<?php echo site_url('siswa/dashboard')?>">
                <i class="material-icons" role="presentation">dashboard</i>
                Dashboard
            </a>
            <a class="mdl-navigation__link" id="demo-menu-lower-left" href="#">
                <i class="material-icons" role="presentation">Course</i>
                Course
            </a>
            <ul class="mdl-menu mdl-menu--bottom-left mdl-js-menu mdl-js-ripple-effect"
                for="demo-menu-lower-left">
                <a href="<?php echo site_url('siswa/course')?> "><li class="mdl-menu__item" >Course</li></a>
                <a href="<?php echo site_url('siswa/mycourse')?> "><li class="mdl-menu__item ">My Course</li></a>

            </ul>
            <a class="mdl-navigation__link" href="<?php echo site_url('siswa/forum_siswa')?> ">
                <i class="material-icons" role="presentation">forum</i>
                Forum
            </a>



<!--            <a class="mdl-navigation__link" href="ui.html">-->
<!--                <i class="material-icons">message</i>-->
<!--                 Message-->
<!--            </a>-->

            <div class="mdl-layout-spacer"></div>
            <a class="mdl-navigation__link" href="https://github.com/CreativeIT/getmdl-dashboard">
                <i class="material-icons" role="presentation">link</i>
                GitHub
            </a>
        </nav>