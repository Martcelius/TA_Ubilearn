<main class="mdl-layout__content" id="mains">
  <div class="mdl-grid cover-main">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
      <div class="">
            <div class="">
                <h2 style="color:white">Overview</h2>
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
      <?php if ($this->session->flashdata('password_tersimpan') == TRUE): ?>
          <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
              <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
              </button>
              <p><?php echo $this->session->flashdata('password_tersimpan')?></p>
          </div>
      <?php endif; ?>
      <?php if ($this->session->flashdata('ass_notif') == TRUE): ?>
          <div role="alert"  class="alert alert-warning alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
              <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
              </button>
              <p><?php echo $this->session->flashdata('ass_notif')?></p>
          </div>
      <?php endif; ?>
  <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
      <div class="">
          <div class="">
              <h2 style="color:white; font-size: 28px">Course Activity
                  <br>Latest Course & Assesment</br>
              </h2>
          </div>
      </div>
  </div>
    <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--6-col-tablet mdl-cell--6-col-phone">
      <div class="mdl-card grey_card mdl-shadow--2dp pie-chart" >
          <div class="mdl-card__title" style="display:block;">
              <h2 class="mdl-card__title-text">Course</h2>
              <div class="mdl-card__subtitle-text">Your recent Course Enrol</div>
          </div>
          <div class="mdl-card__supporting-text" style="width: 100%;">
            <ul class="demo-list-three mdl-list">
                <?php if (count($list_course) != 0): ?>
                    <?php foreach($list_course as $c){ ?>
                  <a class="lst" href="<?php echo base_url().'siswa/course/log/'.$c->crs_id ?>">
                  <li class="mdl-list__item mdl-list__item--three-line lst point" style="padding-top: 16px;padding-bottom: 0px;height: 58px;">
                    <span class="mdl-list__item-primary-content">
                      <i class="fa fa-circle mdl-list__item-icon"></i>
                      <span>[<?php echo $c->crs_code ?>] <?php echo $c->crs_name ?></span>
                      <span class="mdl-list__item-text-body">
                        diambil pada :<?php echo $c->enr_timecreated ?>
                      </span>
                    </span>
                  </li>
                  </a>
                  <?php } ?>
                <?php else :?>
                    <h3>Data tidak ada</h3>
                <?php endif;?>
            </ul>
          </div>
      </div>
    </div>
    <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--6-col-tablet mdl-cell--6-col-phone">
      <div class="mdl-card darkgreen_card mdl-shadow--2dp pie-chart">
          <div class="mdl-card__title" style="display:block;">
              <h2 class="mdl-card__title-text">Assesment</h2>
              <div class="mdl-card__subtitle-text">Your recent assesment</div>
          </div>
          <div class="mdl-card__supporting-text" style="width: 100%;">
            <ul class="demo-list-three mdl-list">
                <?php if (count($ansStd) != 0): ?>
                  <?php
                  $i = 0;
                  foreach($ansStd as $c){ ?>
                  <a class="lst" href="<?php echo base_url().'siswa/result/'.$c->ass_id ?>">
                  <li class="mdl-list__item mdl-list__item--three-line lst" style="padding-top: 16px;padding-bottom: 0px;height: 58px;">
                    <span class="mdl-list__item-primary-content">
                      <i class="fa fa-circle mdl-list__item-icon"></i>
                      <span>[<?php echo $listAss[$i]->ass_tipe ?>] <?php echo $listAss[$i]->ass_name ?></span>
                      <span class="mdl-list__item-text-body">
                        Nilai : <?php echo number_format($c->nilai,2) ?>
                      </span>
                    </span>
                  </li>
                  </a>
                  <?php $i++; } ?>
                <?php else :?>
                    <h3>Data tidak ada</h3>
                <?php endif;?>
            </ul>
          </div>
      </div>
    </div>
  </div>

    <div class="mdl-grid">
      <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
          <div class="">
              <div class="">
                  <h2 style="color:white; font-size: 28px">Forum Activity
                  <br>Latest forum topic & comments</br>
                  </h2>
              </div>
          </div>
      </div>

        <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--6-col-tablet mdl-cell--6-col-phone">
            <div class="mdl-card grey_card mdl-shadow--2dp pie-chart" >
                <div class="mdl-card__supporting-text" style="width: 100%;">
                    <ul class="demo-list-three mdl-list">
                        <?php if (count($list_thread) != 0): ?>
                            <?php foreach($list_thread as $forum){ ?>
                                <a class="lst" href="<?php echo base_url().'siswa/thread/log_detailThread/'.$forum->cft_id ?>">
                                    <li class="mdl-list__item mdl-list__item--three-line lst point" style="padding-top: 16px;padding-bottom: 0px;height: 58px;">
                                        <span class="mdl-list__item-primary-content">
                                          <i class="fa fa-circle mdl-list__item-icon"></i>
                                          <span>[Forum: <?php echo strip_tags($forum->cfr_desc);?>] <?php echo $forum->cft_title ?></span>
                                          <span class="mdl-list__item-text-body">
                                            dibuat pada :<?php echo $forum->cft_timecreated ?>
                                          </span>
                                        </span>
                                    </li>
                                </a>
                            <?php } ?>
                        <?php else :?>
                            <h3>Data tidak ada</h3>
                        <?php endif;?>
                    </ul>
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


