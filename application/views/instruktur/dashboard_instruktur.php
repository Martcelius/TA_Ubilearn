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
          <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
              <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
              </button>
              <p><?php echo $this->session->flashdata('password_tersimpan')?></p>
          </div>
      <?php endif; ?>
    <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--6-col-tablet mdl-cell--6-col-phone">
        <div class="mdl-card mdl-shadow--2dp pie-chart">
            <div class="mdl-card__title" style="display:block;">
                <h2 class="mdl-card__title-text">My Courses</h2>
                <h3 class="mdl-card__subtitle-text">Jumlah Course : <?php echo count($jum);?></h3>
            </div>
            <div class="mdl-card__supporting-text">
                <div>
                    <div class="row">
                        <?php foreach($course as $c):?>
                        <div class="col-sm-8">
                            <h3><?php echo $c->crs_name?></h3>
                            <p><?php echo $c->crs_univ?></p>

                        </div>
                        <div class="col-sm-4">
                            <a href="<?php echo base_url().'instruktur/lesson/'.$c->crs_id?>" style="float:right">
                                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-light-blue"  >
                                    Lihat
                                </button>
                            </a>
                        </div>
                        <?php endforeach ?>
                    </div>
                </div>
            </div>

        </div>
        </div>
      <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--6-col-tablet mdl-cell--6-col-phone">
          <div class="mdl-card mdl-shadow--2dp pie-chart">
              <div class="mdl-card__title" style="display:block;">
                  <h2 class="mdl-card__title-text">Forum</h2>
                  <h3 class="mdl-card__subtitle-text">Jumlah Forum : </h3>
              </div>
              <div class="mdl-card__supporting-text">
                  <div>
                      <div class="row">
                          <div class="col-sm-8">
                              <p>Judul Forum 1</p>
                              Course : IT Project Management <br>
                              Universitas Telkom
                          </div>
                          <div class="col-sm-4">
                              <a href="list_thread" style="float:right">
                                  <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-light-blue"  >
                                      Lihat
                                  </button>
                              </a>
                          </div>
                      </div>
                      <hr>
                  </div>
                  <div>
                      <div class="row">
                          <div class="col-sm-8">
                              <p>Judul Forum 2</p>
                              Course : IT Project Management <br>
                              Lesson : Intro <br>
                              Universitas Telkom
                          </div>
                          <div class="col-sm-4">
                              <a href="<?php echo site_url('')?>" style="float:right">
                                  <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-light-blue"  >
                                      Lihat
                                  </button>
                              </a>
                          </div>
                      </div>
                      <hr>
                  </div>
              </div>

          </div>
      </div>
  </div>


    </div>
  </div>
</main>


