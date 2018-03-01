<main class="mdl-layout__content">
    <div class="mdl-grid cover-main"  >
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="">
                <div class="">
                    <h2 style="color:white; text-align:center;"><?php echo $course->crs_name?></h2>
                    <div style="text-align:center">
                        <img src="<?php echo base_url();?>/res/assets/images/uploads/<?php echo $course->usr_picture;?>" class="material-icons mdl-list__item-avatar" style="width: 100px; height: 100px;">
                        <h3 style="color:white;"><?php echo $course->usr_firstname." ".$course->usr_lastname?></h3>
                        <p style="color:white;"><?php $converted = date('d M Y h.i.s A', strtotime($assignment->asg_timecreated));
                            $reversed = date('Y-m-d', strtotime($converted));
                            echo $reversed;
                        ?>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="mdl-grid">
        <?php if ($this->session->flashdata('on_time') == TRUE): ?>
            <div role="alert"  class="alert alert-warning alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
                </button>
                <p><?php echo '<strong>'.$this->session->flashdata('on_time').'</strong>'?></p>
            </div>

        <?php elseif ($this->session->flashdata('out_time') == TRUE): ?>
            <div role="alert"  class="alert alert-danger alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
                </button>
                <p><?php echo '<strong>'.$this->session->flashdata('out_time').'</strong>'?></p>
            </div>
        <?php elseif ($this->session->flashdata('done') == TRUE): ?>
            <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
                </button>
                <p><?php echo '<strong>'.$this->session->flashdata('done').'</strong>'?></p>
            </div>
        <?php endif; ?>

        <?php if ($this->session->flashdata('submit') == TRUE): ?>
            <div role="alert"  class="alert alert-danger alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
                </button>
                <p><?php echo '<strong>'.$this->session->flashdata('submit').'</strong>'?></p>
            </div>
        <?php endif; ?>
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text"><?php echo $assignment->asg_name;?></h2>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <form class="form-horizontal" action="<?php echo site_url('siswa/assignment/upload_assignment/'.$assignment->asg_id); ?>" method="post" enctype="multipart/form-data">
                            <div class="mdl-card__supporting-text">
                                <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--9-col-tablet mdl-cell--2-col-phone" >
                                    <p>Batas Pengumpulan : <?php echo $newDateTime = date('d-M-y h:i A', strtotime($assignment->asg_duedate));?></p>
                                    <p>
                                        <?php echo $assignment->asg_text;?>
                                    </p>
                                    <hr>
                                    <div>
                                        <input type='file' class="input-file" name='asg_attachment' onchange="readURL(this);" required/>
                                    </div>
                                    <div class="form__action">
                                        <button id="submit_button" type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored-blue" style="width: 100px">
                                            UPLOAD
                                        </button>
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--    <div class="col-md-2 hidden-xs">-->
<!--        <img src="--><?php //echo base_url();?><!--res/assets/images/uploads/avatar_default.jpg" class="img-responsive img-thumbnail" id="blah">            </div>-->
<!--    </div>-->

</main>
<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah')
                    .attr('src', e.target.result);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
</script>

