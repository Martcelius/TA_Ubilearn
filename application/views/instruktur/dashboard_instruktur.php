<main class="mdl-layout__content">
    <div class="mdl-grid cover-main">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="">
                <div class="">
                    <h2 style="color:white">Dashboard</h2>
                </div>
                <div class="">
                    <h2 style="color:white">Welcome to TelC Learning</h2>
                </div>
            </div>
        </div>
    </div>

    <div class="mdl-grid">
        <?php if ($this->session->flashdata('password_tersimpan') == TRUE): ?>
            <div role="alert"
                 class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true"
                                                                                                  class="fa fa-times"></span>
                </button>
                <p><?php echo $this->session->flashdata('password_tersimpan') ?></p>
            </div>
        <?php endif; ?>
        <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--6-col-tablet mdl-cell--6-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">Recent Courses</h2>
                    <h3 class="mdl-card__subtitle-text">Jumlah Course : <?php echo count($jum); ?></h3>
                </div>
                <div class="mdl-card__supporting-text" style="width: 100%;">
                    <ul class="demo-list-three mdl-list">
                        <?php foreach ($course as $c) { ?>
                            <a class="lst" href="<?php echo base_url() . 'instruktur/lesson/' . $c->crs_id ?>">
                                <li class="mdl-list__item mdl-list__item--three-line lst point"
                                    style="padding-top: 16px;padding-bottom: 0px;height: 58px;">
                                    <span class="mdl-list__item-primary-content">
                                      <i class="fa fa-circle mdl-list__item-icon"></i>
                                      <span><?php echo $c->crs_name ?></span>
                                      <span class="mdl-list__item-text-body">
                                        dibuat pada: <?php echo $c->crs_timecreated ?>
                                      </span>
                                    </span>
                                </li>
                            </a>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
        <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--6-col-tablet mdl-cell--6-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">Forum</h2>
                </div>
                <div class="mdl-card__supporting-text">
                    <ul class="demo-list-three mdl-list">
                        <?php foreach ($list_forum as $list) { ?>
                            <a class="lst" href="<?php echo base_url() . 'instruktur/list_thread_instruktur/' . $list->cfr_id ?>">
                                <li class="mdl-list__item mdl-list__item--three-line lst point"
                                    style="padding-top: 16px;padding-bottom: 0px;height: 58px;">
                                    <span class="mdl-list__item-primary-content">
                                      <i class="fa fa-circle mdl-list__item-icon"></i>
                                      <span><?php echo $list->cfr_title ?></span>
                                      <span class="mdl-list__item-text-body">
                                        dibuat pada: <?php echo $list->cfr_timecreated ?>
                                      </span>
                                    </span>
                                </li>
                            </a>
                        <?php } ?>
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


