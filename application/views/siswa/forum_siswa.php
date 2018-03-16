<!-- MAIN -->

<main class="mdl-layout__content">
<div class="mdl-grid cover-main">
    <div class="mdl-cell mdl-cell--12-col">
        <div class="mdl-grid">
            <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
                <h2 style="color:white">Forum</h2>
                <br>
                <h4 style="color:grey"><?php echo $this->session->userdata('firstname'). " " .$this->session->userdata('lastname'); ?></h4>
            </div>
        </div>
    </div>
</div>

<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">    
        <div class="mdl-card mdl-shadow--2dp">
            <div class="mdl-card__title" style="">
                <i class = "material-icons" style="font-size: 30px;">forum</i>
                <h3 class="mdl-card__title-text" style="margin-left: 15px;">Diskusi Saya</h3>
            </div> 
            <div class="mdl-card__supporting-text">
                <ul class="demo-list-icon mdl-list">
                    <?php foreach ($coursetakesiswa as $coursetake):?>
                        <li class="mdl-list__item" style="padding-top:0px; padding-bottom:0px;">
                            <span class="mdl-list__item-primary-content">
                                <h4 style="margin-bottom:0px; margin-top:0px"><?php echo $coursetake->crs_name;?> (<?php echo $coursetake->crs_code;?>)</h4>
                            </span>
                            <span class="mdl-list__item-secondary-action">
                                <a href="<?php echo site_url('siswa/dashboard_forum_siswa/'.$coursetake->crs_id)?>">
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