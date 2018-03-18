<main class="mdl-layout__content">
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
    <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--6-col-tablet mdl-cell--6-col-phone">
      <div class="mdl-card grey_card mdl-shadow--2dp pie-chart" >
          <div class="mdl-card__title" style="display:block;">
              <h2 class="mdl-card__title-text">Courses</h2>
              <div class="mdl-card__subtitle-text">Your recent courses test</div>
          </div>
          <div class="mdl-card__supporting-text" style="width: 100%;">
            <ul class="demo-list-three mdl-list">
              <?php foreach($list_course as $c){ ?>
              <a class="lst" href="<?php echo base_url().'siswa/course_detail/'.$c->crs_id ?>">
              <li class="mdl-list__item mdl-list__item--three-line lst point" style="padding-top: 16px;padding-bottom: 0px;height: 58px;">
                <span class="mdl-list__item-primary-content">
                  <i class="fa fa-circle mdl-list__item-icon"></i>
                  <span>[<?php echo $c->crs_code ?>] <?php echo $c->crs_name ?></span>
                  <span class="mdl-list__item-text-body">
                    taken on <?php echo $c->enr_timecreated ?>
                  </span>
                </span>
              </li>
              </a>
              <?php } ?>
            </ul>
          </div>
          <div class="mdl-card__actions" >
            <a href="<?php echo site_url('siswa/my_course')?>" style="float:right"><button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-light-blue"  >
                Lihat My Course
            </button></a>                    
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
            </ul>
          </div>
          <div class="mdl-card__actions" >
            <a href="<?php echo site_url('')?>" style="float:right"><button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-light-blue"  >
                Lihat
            </button></a>                      
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
        <div class="mdl-card red_card mdl-shadow--2dp pie-chart">
            <div class="mdl-card__supporting-text">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit ab aperiam, corporis molestiae quia nulla fuga magnam repellat iusto, iure veritatis accusamus, alias ea doloribus! Ea modi dolorum culpa quia.
            </div>
            <div class="mdl-card__actions" >
              <a href="<?php echo site_url('')?>" style="float:right"><button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-light-blue"  >
                Lihat
              </button></a>                      
            </div>
        </div>
      </div>
      <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--6-col-tablet mdl-cell--6-col-phone">
        <div class="mdl-card darkred_card mdl-shadow--2dp pie-chart">
            <div class="mdl-card__supporting-text">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit ab aperiam, 
            corporis molestiae quia nulla fuga magnam repellat iusto, 
            iure veritatis accusamus, alias ea doloribus! Ea modi dolorum culpa quia. <br>Course : IT Managemen Project</br>
            <hr>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit ab aperiam, 
            corporis molestiae quia nulla fuga magnam repellat iusto, 
            iure veritatis accusamus, alias ea doloribus! Ea modi dolorum culpa quia. <br>Course : IT Managemen Project</br>
            <hr>

          </div>
            <div class="mdl-card__actions" >
              <a href="<?php echo site_url('')?>" style="float:right"><button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-light-blue"  >
                  Lihat
              </button></a>                      
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
<!-- <script type="text/javascript">
  $('.lst').hover( function(){
     $(this).css({
         'font-size' : '10px',
         'width' : '30px',
         'height' : '10px'
      });
  },
</script> -->


