<main class="mdl-layout__content">
    <div class="mdl-grid cover-main">
    </div>
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">Content</h2>
                    <div class="mdl-card__subtitle-text">Masukan Detail Content</div>
                </div>
                <div class="mdl-card__supporting-text" style="font-size:15px;">
                    <form action="<?php echo site_url('instruktur/insert_content'); ?>" class="form-horizontal" method="post" enctype="multipart/form-data" >
                        <div class="form-group">
                            <label for="inputtext3" class="col-sm-2 control-label">Nama Kontent</label>
                            <div class="col-sm-10">
                                <input name="cnt_name" type="text" class="form-control" id="inputtext3" placeholder="Nama Content">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputtext3" class="col-sm-2 control-label">Deskripsi Content</label>
                            <div class="col-sm-10">
                                <textarea name="cnt_desc" id="textEditor1" style="width: 100%;"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputtext3" class="col-sm-2 control-label">Content Comment</label>
                            <div class="col-sm-10">
                                <textarea name="cnt_comment" class="form-control" id="inputtext3" placeholder="Content Comment"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputtext3" class="col-sm-2 control-label">Tipe Content</label>
                            <div class="col-sm-10">
                                <select id="pilih" class="form-control" name="cnt_type" required>
                                    <option disabled="disabled" selected value="">--Pilih Tipe Content--</option>
                                    <option value="Text">Text</option>
                                    <option value="Video">Video</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group" id="berkas" style="display:none">
                            <label class="col-sm-2 control-label">Attachment</label>
                            <div class="col-sm-10">
                                <input type="file" name="cnt_source" id="uploadberkas" >
                                <span>*Isi bila source pembelajaran berupa file</span>
                            </div>
                        </div>
                        <div class="form-group" id="video" style="display:none">
                            <label for="inputtext3" class="col-sm-2 control-label">Source Video</label>
                            <div class="col-sm-10">
                                <input name="cnt_source" type="text" class="form-control" placeholder="Tipe Content" id="uploadvideo">
                                <span>*Isi bila source pembelajaran berupa link video</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Learning Outcome</label>
                            <div class="col-sm-10">
                                <select name="loc_id" class="form-control">
                                    <option disabled selected>Pilihan Learning Outcome</option>
                                    <?php foreach($dataLO as $LO): ?>
                                        <option value="<?php echo $LO->loc_id ?> "><?php echo $LO->loc_desc ?></option>
                                    <?php endforeach ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                                <input name="lsn_id" class="form-control" id="inputtext3" value="<?php echo $lsn_id?>" style="display:none"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">Selesai</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>

<script>
    $(document).ready(function () {
        $("#pilih").change(function () {
            if ($(this).val() == "Text") {
                $("#berkas").fadeIn();
                $("#uploadberkas").attr("required",true);
                $("#video").hide();
            }else {
                $("#berkas").hide();
                $("#video").fadeIn();
                $("#uploadvideo").attr("required",true);
            }
        });
        textEdit(1);
    });

    $("form").submit(function (e) {
        var a = $('#textEditor1').val();
        if (a == '') {
            alert('Deskripsi Content tidak boleh kosong');
            e.preventDefault();
        }
    });
</script>
<!-- <script>
    CKEDITOR.replace( 'ckedit' );
    $("form").submit( function(e) {
        var messageLength = CKEDITOR.instances['ckedit'].getData().replace(/<[^>]*>/gi, '').length;
        if( !messageLength ) {
            alert( 'Masukkan Deskripsi Content' );
            e.preventDefault();
        };
    });
</script> -->

<!-- <script>
    // Replace the textarea #example with SCEditor
    var textarea = document.getElementById('ckedit');
    sceditor.create(textarea, {
        format: 'xhtml',
        style: '<?php echo base_url() ?>res/assets/SCEditor-master/src/themes/content/default.min.css'
    });
</script> -->

<!-- <script type="text/javascript">
    $(document).ready(function() {
        $('#ckedit').summernote({
            height: 200, // set editor height // set editor height
            minHeight: null, // set minimum height of editor
            maxHeight: null, // set maximum height of editor
            dialogsInBody: true,
            callbacks: {
                onImageUpload: function(files, editor, welEditable) {
                    sendFile(files[0], editor, welEditable);
                }
            }
        });

        function sendFile(file, editor, welEditable) {
            data = new FormData();
            data.append("file", file);//You can append as many data as you want. Check mozilla docs for this
            $.ajax({
                data: data,
                type: "POST",
                url: '<?php // echo base_url().'instruktur/Content/uplGambar' ?>',
                cache: false,
                contentType: false,
                processData: false,
                success: function(url) {
                    $('#ckedit').summernote('editor.insertImage', url);
                },
                error: function(){
                    alert('Error');
                }
            });
        }
    });

    $("form").submit( function(e) {
        var a = $('#ckedit').val();
        if(a == ''){
            alert('Deskripsi Content tidak boleh kosong');
            e.preventDefault();
        }
    });
</script>
<style type="text/css">
    .note-view {
        display: none;
    }
</style>
 -->
<!-- <script type="text/javascript">
    document.getElementsByClassName('note-insert').insertAdjacentHTML('afterend','<p class="sober"><a href="#" data-toggle="modal" data-target="#imageModal"><p>Click here to upoad image</p></i></a></p>');
</script> -->