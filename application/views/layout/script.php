<script src="<?php echo base_url(); ?>res/assets/js/d3.js"></script>
<script src="<?php echo base_url(); ?>res/assets/js/getmdl-select.min.js"></script>
<script src="<?php echo base_url(); ?>res/assets/js/material.js"></script>
<script src="<?php echo base_url(); ?>res/assets/js/nv.d3.js"></script>
<script src="<?php echo base_url(); ?>res/assets/js/widgets/employer-form/employer-form.js"></script>
<script src="<?php echo base_url(); ?>res/assets/js/widgets/line-chart/line-chart-nvd3.js"></script>
<script src="<?php echo base_url(); ?>res/assets/js/widgets/pie-chart/pie-chart-nvd3.js"></script>
<script src="<?php echo base_url(); ?>res/assets/js/widgets/table/table.js"></script>
<script src="<?php echo base_url(); ?>res/assets/js/widgets/todo/todo.js"></script>
<script src="<?php echo base_url(); ?>res/assets/js/dataTables/jquery.dataTables.js"></script>
<script src="<?php echo base_url(); ?>res/assets/js/dataTables/dataTables.bootstrap.js"></script>

<script type="text/javascript">
    function textEdit(currNum){
        $('#textEditor'+currNum).summernote({
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
                url: '<?php echo base_url().'instruktur/Content/uplGambar' ?>',
                cache: false,
                contentType: false,
                processData: false,
                success: function(url) {
                    $('#textEditor'+currNum).summernote('editor.insertImage', url);
                },
                error: function(){
                    alert('Error');
                }
            });
        }
    }

    function textEditByClass(className){
        $('.'+className).summernote({
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
                url: '<?php echo base_url().'instruktur/Content/uplGambar' ?>',
                cache: false,
                contentType: false,
                processData: false,
                success: function(url) {
                    $('.'+className).summernote('editor.insertImage', url);
                },
                error: function(){
                    alert('Error');
                }
            });
        }
    }

</script>
<style type="text/css">
    .note-view {
        display: none;
    }
</style> 