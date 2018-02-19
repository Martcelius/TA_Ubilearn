<!-- MAIN -->

<main class="mdl-layout__content">
<div class="mdl-grid cover-main">
    <div class="mdl-cell mdl-cell--12-col">
        <div class="mdl-grid">
            <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
                <h2 style="color:white">Forum</h2>
            </div>
        </div>
    </div>
</div>

<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">    
        <div class="mdl-card mdl-shadow--2dp">
            <div class="mdl-card__title" style="">
                <i class="fa fa-book" style="font-size: 30px;"></i>
                <h3 class="mdl-card__title-text" style="margin-left: 15px;">Course Saya</h3>
            </div> 
            <div class="mdl-card__supporting-text">
                <ul class="demo-list-icon mdl-list">
                    <?php foreach ($dataCourse as $course):?>
                    <li class="mdl-list__item" style="padding-top:0px; padding-bottom:0px;">
                        <span class="mdl-list__item-primary-content">
                            <h4 style="margin-bottom:0px; margin-top:0px"><?php echo $course->crs_name;?> (<?php echo $course->crs_code;?>)</h4>
                        </span>
                        <span class="mdl-list__item-secondary-action">
                            <a href="<?php echo site_url('instruktur/dashboard_forum_instruktur/'.$course->crs_id)?>">
                            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">
                                Masuk Forum
                            </button>
                            </a>
                        </span>                    
                    </li>
                    <hr style="margin-left:18px">
                    <?php endforeach;?>
                </ul>
            </div>     
        </div>
    </div>
</div>
         
</main>


<style>
    a:hover{
        background-color:#424242;
    }
</style>