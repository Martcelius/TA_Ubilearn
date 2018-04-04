<main class="mdl-layout__content" id="mains">
    <div class="mdl-grid cover-main">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="">
                <div class="">
                    <h2 style="color:white">User Guide</h2>
                </div>
                <div class="">
                    <h2 style="color:white">Welcome to TelC Learning</h2>
                </div>
            </div>
        </div>
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="">
                <br>
                <br>
                <br>
                <br>
                <br>
                <?php
                // $this->breadcrumbs->push('Dashboard', '/');
                // echo $this->breadcrumbs->show();
                ?>
            </div>
        </div>
    </div>

    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="mdl-card grey_card mdl-shadow--2dp pie-chart" >
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">User Guide</h2>
                    <div class="mdl-card__subtitle-text">petunjuk penggunaan peserta didik</div>
                </div>
                <div class="mdl-card__supporting-text" style="width: 100%;">
                    <h4>Petunjuk Penggunaan untuk peserta didik dalam menggunakan sistem learning</h4>
                    <h5>Silahkan download file untuk melihat user guide <h5><br>
                </div>
            </div>
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <embed src="<?php echo base_url();?>res/assets/guide/Dok Skenario Eksperimen - Tim Ubilearning.pdf" style="width: 100%; height: 500px;">
                </div>
            </div>
        </div>

    </div>
</main>

<style type="text/css">
    li.lst:hover {
        background: #666464;
        border-style: solid;
        border-width: 0;
        border-radius: 50px;
        cursor: pointer;
    }

    /*  li.point:hover {
        cursor: pointer;
      }*/

    a.lst:hover{
        text-decoration: none;
    }
</style>
<script type="text/javascript">

    function cek(){
        $(window).scrollTop();
    }
</script>
<!-- <script type="text/javascript">
  $('.lst').hover( function(){
     $(this).css({
         'font-size' : '10px',
         'width' : '30px',
         'height' : '10px'
      });
  },
</script> -->


