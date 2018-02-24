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
    <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--6-col-tablet mdl-cell--6-col-phone">
      <div class="mdl-card mdl-shadow--2dp pie-chart" >
          <div class="mdl-card__title" style="display:block;">
              <h2 class="mdl-card__title-text">Courses</h2>
              <div class="mdl-card__subtitle-text">Your recent courses test</div>
          </div>
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
      <div class="mdl-card mdl-shadow--2dp pie-chart">
          <div class="mdl-card__title" style="display:block;">
              <h2 class="mdl-card__title-text">Quizzes</h2>
              <div class="mdl-card__subtitle-text">Your recent performance</div>
          </div>
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
        <div class="mdl-card mdl-shadow--2dp pie-chart">
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
        <div class="mdl-card mdl-shadow--2dp pie-chart">
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


