<main class="mdl-layout__content">
    <div class="mdl-grid">
      <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
        <div class="">
            <div class="">
                <h2 style="color:white">My Course</h2>
                <h3 style="color:white"><?php echo $nama_instruktur->usr_firstname.' '.$nama_instruktur->usr_lastname;?></h3>
            </div>
        </div>
      </div>
    </div>
    <div class="mdl-grid">
      <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
      <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">
          <i class="material-icons">create</i>
          Buat Course
      </button>
      </div>
    </div>
    <!-- <div class="mdl-grid">
      <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
        <div class="mdl-card mdl-shadow--2dp ui-buttons">
            <div class="mdl-card__title">
                <h2 class="mdl-card__title-text">Welcome to TEL-C U-Learning</h2>
            </div>
        </div>
      </div>
    </div> -->
    <div class="mdl-grid">

      <?php foreach ($courses as $course):?>

      <div onclick="alert('<?php echo $course->crs_id;?>')" class="mdl-cell mdl-cell--4-col-desktop mdl-cell--4-col-tablet mdl-cell--6-col-phone">
        <div class="mdl-card mdl-shadow--2dp cotoneaster">
            <div class="mdl-card__title mdl-card--expand">
            </div>
            <div class="mdl-card__supporting-text">
                <h4 style="text-transform: uppercase;"><?php echo $course->crs_name;?> </h4> <hr/>
                <span><?php echo $nama_instruktur->usr_firstname.' '.$nama_instruktur->usr_lastname;?></span>
            </div>
            <div class="mdl-card__actions">
              <button class="mdl-button mdl-js-button mdl-js-ripple-effect" style="float: right;">Masuk</button>                    
            </div>
        </div>
      </div>

      <?php endforeach;?>

    </div>
</main>


