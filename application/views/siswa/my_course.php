<main class="mdl-layout__content">
    <div class="col-sm-12 cover-main">
        <div class="mdl-grid">
            <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <div>
                    <h2 style="color:white">My Course</h2>
                    <h3 style="color:white">Browse Course</h3>
                </div>
                <div>
                    <P style="color: white">
                        <b>Learning Goals </b><sub style="color:#44efe2">(What do you want to learn ?)</sub>
                    </P>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-12">
        <?php if ($this->session->flashdata('data_enroll') == TRUE): ?>
            <div role="alert" class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
                </button>
                <p><?php echo $this->session->flashdata('data_enroll')?></p>
            </div>
        <?php endif; ?>
    </div>
    <div class=" col-sm-12 " >
        <div class="mdl-grid">
            <?php foreach($my_course as $mycourse): ?>
                <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--4-col-tablet mdl-cell--4-col-phone">

                    <div class="mdl-card mdl-shadow--2dp cotoneaster">
                        <div class="mdl-card__title mdl-card--expand">
                        </div>
                        <div class="mdl-card__supporting-text">
                            <h4 style="text-transform: uppercase;"><?php echo $mycourse->crs_name; ?> </h4> <hr style="background-color: white;">
                            <span> <?php echo $mycourse->usr_firstname.' '.$mycourse->usr_lastname;?> </span>
                        </div>
                        <div class="mdl-card__actions">
                            <a href="<?php echo site_url('siswa/course/log/'.$mycourse->crs_id) ?>"><button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue" >
                                    Masuk
                                </button></a>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</main>