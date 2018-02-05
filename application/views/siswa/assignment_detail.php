<main class="mdl-layout__content">
    <div class="mdl-grid cover-main"  >
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="">
                <div class="">
                    <h3 style="color:white; text-align:center;">Manajemen Proyek TIK</h3>
                    <div style="text-align:center">
                        <img src="<?php echo base_url();?>/res/assets/images/Icon_header.png" alt="">
                        <span style="color:white;">Nungki Selviandro</span>
                        <p style="color:white;">Januari 29, 2018</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">Nungki Selviandro</h2>
                    <div class="mdl-card__subtitle-text">Dec 12,2016</div>
                </div>
                <div class="mdl-card__supporting-text">
                    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--9-col-tablet mdl-cell--2-col-phone" >
                        <p>Due Dec 19,2016, 2.95PM</p>
                        <p>
                            1.Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur harum modi hic blanditiis mollitia, consequuntur, eligendi distinctio ullam ratione eius voluptas aliquid nesciunt qui. Ea ullam eos possimus voluptate tempora.
                            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nostrum nesciunt officia, debitis in vel accusantium officiis itaque? Obcaecati, voluptas. Veniam consectetur aperiam ut illum quae laudantium? Hic ea voluptatem asperiores.
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto porro nostrum voluptate nesciunt commodi? Dignissimos, nisi veritatis. Harum earum nulla quas itaque ipsa, cupiditate ex expedita commodi, consectetur omnis vitae.
                        </p>
                        <p>
                            2.Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur harum modi hic blanditiis mollitia, consequuntur, eligendi distinctio ullam ratione eius voluptas aliquid nesciunt qui. Ea ullam eos possimus voluptate tempora.
                        </p>
                        <p>
                            3.Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur harum modi hic blanditiis mollitia, consequuntur, eligendi distinctio ullam ratione eius voluptas aliquid nesciunt qui. Ea ullam eos possimus voluptate tempora.
                        </p>
                        <hr>
                        <div>
                            <p style="color:white">Diupload ke Google Classroom. Upload hanya sekali (satu file saja).
                                <br>File harus dalam format PDF.
                                <br>Nama file harus: "(NIM) (Nama) Tugas Menulis 2"
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <input type="file" style="color:white; padding: 9px" onchange="readURL(this);">
                            </div>
                            <img src="https://thumbs.dreamstime.com/b/flat-download-upload-icon-vector-load-symbol-illustration-button-background-49638971.jpg" style="width: 170px; height: 170px" class="img-responsive img-thumbnail" style="margin: 4px;" id="blah">
                        </div>
                        <div class="col-sm-8">
                            <a href="#" style="float: right;">
                                <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">
                                    Selesai
                                </button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="form__action">
<!--        injeksi komentar-->
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

