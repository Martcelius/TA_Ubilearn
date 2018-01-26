<main class="mdl-layout__content">
    <div class="mdl-grid" style="background-color:#4e4e4e; margin-bottom:50px" >
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
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
      <div class="">
          <div>
            <p style="color:white">Manajemen proyek adalah suatu penerapan ilmu pengetahuan, keahlian dan 
                                   juga ketrampilan, cara teknis yang terbaik serta dengan sumber daya yang 
                                   terbatas untuk mencapai sasaran atau tujuan yang sudah ditentukan agar mendapatkan 
                                   hasil yang optimal dalam hal kinerja, waktu, mutu dan keselamatan kerja.</p>
          </div>
          <div>
            <p style="color:white">Diupload ke Google Classroom. Upload hanya sekali (satu file saja).
                                   <br>File harus dalam format PDF. 
                                   <br>Nama file harus: "(NIM) (Nama) Tugas Menulis 2"
                                   <br>Deadline 17 Des.</p>
          </div>
        </div>
        </div>

        <div class="mdl-card mdl-shadow--2dp employer-form" action="#">
        <div class="mdl-card__title">
            <h2>Pekerjaan Anda</h2>
            <div class="mdl-card__subtitle">File yang Anda tambahkan atau buat dapat dilihat dan diedit oleh dosen anda</div>
        </div>
        <div class="mdl-card__supporting-text">
        <div style="text-align:center"> 
                        <span style="color:white;">Belum Selesai</span>
                    </div>
            <div class="form__action">
            <input type='file' onchange="readURL(this);" />
        <button id="submit_button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
            Submit
        </button>
    </div>
        </div>
        </div>
        <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--6-col-tablet mdl-cell--3-offset-tablet mdl-cell--12-col-phone">
        <form role="form" method="POST" action="#." style="width: 100%">
            <div>
            <textarea id="textarea-char-counter" name="isi_forum" class="mdl-textfield_input" ></textarea></textarea>
            </div>
            <input type="text" id="form1" class="form-control" value="bagi" name="kategori" hidden>
            <input type="text" id="form1" class="form-control" value="{{Auth::user()->id}}" name="id_user" hidden>

            <!--Yellow-->
            <input class="btn btn-cyan" type="submit" value="Sumbit">
                              <!-- <
                            <hr>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius totam, officiis doloremque
                                velit nobis dolor nulla unde architecto alias praesentium, soluta error omnis sint, impedit,
                                delectus ipsam eveniet debitis nemo.</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius totam, officiis doloremque
                                velit nobis dolor nulla unde architecto alias praesentium, soluta error omnis sint, impedit,
                                delectus ipsam eveniet debitis nemo.</p>
                        </div>
                        <!--Product-->
                            </form>
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
<script src="https://cdn.ckeditor.com/4.7.1/basic/ckeditor.js" type="text/javascript"></script>
<script>
        CKEDITOR.replace( 'textarea-char-counter' );
    </script>