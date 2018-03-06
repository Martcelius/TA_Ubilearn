<main class="mdl-layout__content mdl-color--grey-100">
    <div class="mdl-grid cover-main">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <!--            <div>-->
            <!--                <h2 style="color:white">--><?php //echo $assesment->ass_name?><!--</h2>-->
            <!--                <h3 style="color:white">Tipe : --><?php //echo $assesment->ass_tipe?><!--</h3>-->
            <!--            </div>-->
            <!--            <div>-->
            <!--                <h4 style="color:white">--><?php //echo $assesment->ass_name?><!--</h4>-->
            <!--            </div>-->
        </div>
    </div>
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp ">
                <div class="mdl-card__title">
                    <h2>Assessment Info</h2>
                </div>
                <div class="mdl-card__supporting-text">
                    <div class="container">
                        <p class="glyphicon glyphicon-file"> Dibuat Oleh
                            : <?php echo $course->usr_firstname . " " . $course->usr_lastname . " pada tanggal " . $newDateTime = date('d-M-y h:i A', strtotime($assesment->ass_timecreated));; ?></p>

                        <h2 style="color:white"><?php echo $assesment->ass_name ?></h2>
                        <h3 style="color:white">Tipe : <?php echo $assesment->ass_tipe ?></h3>
                        <p>
                            <?php echo $assesment->ass_desc ?>
                        </p>
                        <hr>
                        <p style="color:white">Time Open
                            : <?php echo $tmp1 = date("d-M-Y H:i",strtotime($assesment->ass_timeopen));
                            ; ?></p>
                        <p style="color:white">Time Close
                            : <?php echo $tmp2 = date("d-M-Y H:i",strtotime($assesment->ass_timeclose));; ?>
                        </p>

                        <?php
                        $dt = date('Y-m-d H:i:s');
                        if ($assesment->ass_timeopen <= $dt && $dt <= $assesment->ass_timeclose) {
                            echo '<a href="' . site_url('siswa/assesment_doing/' . $assesment->ass_id . '') . '"><div class="form-group">
                                <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">AMBIL ASSESSMENT</button>
                                </div></a>';

                        } else {
                            echo "<fieldset disabled>
                                <div class=\"form-group\">
                                    <button type=\"submit\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-gray\">AMBIL ASSESSMENT</button>
                                    <p>*Anda belum dapat mengambil assessment ini.</p>
                                </div>
                                </fieldset>";

                        }
                        ?>
                    </div>

                </div>

            </div>
        </div>
    </div>
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