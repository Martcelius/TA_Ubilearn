<main class="mdl-layout__content">
  <div class="mdl-grid cover-main">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
      <div class="">
          <div class="">
              <h2 style="color:white">Tambah Assessment Baru</h2>
          </div>
      </div>
    </div>
  </div>
   <div class="mdl-grid">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
      <div class="mdl-card mdl-shadow--2dp pie-chart">
          <div class="mdl-card__title" style="display:block;">
              <h2 class="mdl-card__title-text">Form</h2>
              <div class="mdl-card__subtitle-text">menambahkan assessment baru</div>
          </div>
          <div class="mdl-card__supporting-text" style="font-size: unset;" >
            <form class="form-horizontal" action="/action_page.php">
			  <div class="form-group">
			    <label class="control-label col-sm-2" >Nama Assessment :</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="nama" name="nama" required placeholder="Masukkan Nama Assessment">
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="control-label col-sm-2" >Deskripsi :</label>
			    <div class="col-sm-10"> 
			      <textarea type="text" class="form-control" rows="5" id="desc" name="desc" placeholder="Masukkan Deskripsi Assessment"></textarea>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="control-label col-sm-2" >Waktu Mulai :</label>
			    <div class="input-group date form_datetime col-sm-6" style="padding-left: 15px;padding-right: 15px;"  data-link-field="dtp_input1">
                    <input class="form-control" size="16" type="text" value="" required >
					<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                </div>
			  </div>
			  <div class="form-group">
			    <label class="control-label col-sm-2" >Waktu Selesai :</label>
			    <div class="input-group date form_datetime col-sm-6" style="padding-left: 15px;padding-right: 15px;"  data-link-field="dtp_input1">
                    <input class="form-control" size="16" type="text" value="" required>
					<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                </div>
			  </div>
			  <hr/>
			  <div class="form-group">
			    <label class="control-label col-sm-2" >Tambah Soal :</label>
			    <div class="col-sm-1">
                    <input class="form-control" id="stepper" max="100" min="0" type="Number" value="1" >
                 </div>
                 <div class="col-sm-8">
                    <button class="btn btn-success" id="addSlideBtn" ><i class="fa fa-plus"></i></button>
                 	<span class="pull-right">	
                 		<input readonly="" class="form-control" name="currNum" id="currNum" max="100" min="0" type="Number" value="1" >
                 	</span>
                 	<label class="control-label pull-right" style="margin-right: 5px;">Jumlah Soal</label>
                 </div>
			  </div>
			  <div class="row" id="bodyRow">
                    <div class="col-md-12">
                    	<div class="form-group">
						    <label class="control-label col-sm-2" >Soal No. 1 :</label>
						    <div class="col-sm-10"> 
						      <textarea type="text" class="form-control" rows="5" name="soal1"></textarea>
						    </div>
						  </div>
                          <span class="form-horizontal"> 
                          <div class="form-group">      
                            <label class="col-sm-2"></label>
                            <div class="col-sm-10">
                                <div class="radio">
                                  <label><input type="radio" value="A" checked name="opt1">
                                  <div class="col-sm-10">
                                  	<input type="text" name="A1" class="form-control" style="width:580px;" placeholder="Pilihan Jawaban A">
                                  </div>
                                  </label>
                                </div>
                                <div class="radio">
                                  <label><input type="radio" value="B" name="opt1">
                                  <div class="col-sm-10">
                                  	<input type="text" name="B1" class="form-control" style="width: 580px" placeholder="Pilihan Jawaban B">
                                  	</div>
                                  </label>
                                </div>
                                <div class="radio">
                                  <label><input type="radio" value="C" name="opt1">
                                  <div class="col-sm-10">
                                  	<input type="text" name="C1" class="form-control" style="width: 580px" placeholder="Pilihan Jawaban C">
                                  </div>
                                  </label>
                                </div>
                                <div class="radio">
                                  <label><input type="radio" value="D" name="opt1">
                                  <div class="col-sm-10">
                                  	<input type="text" name="D1" class="form-control" style="width: 580px" placeholder="Pilihan Jawaban D">
                                  </div>
                                  </label>
                                </div>
                                <div class="radio">
                                  <label><input type="radio" value="E" name="opt1">
                                  <div class="col-sm-10">	
                                  	<input type="text" name="E1" class="form-control" style="width: 580px" placeholder="Pilihan Jawaban E">
                                  </div>
                                  </label>
                                </div>
                            </div>
                          </div>
                          </span>
                    </div>
                  </div>
                    
			  <div class="form-group pull-right"> 
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" class="btn btn-lg btn-primary">Submit</button>
			    </div>
			  </div>
			</form>
          </div>
     </div>
    </div>
   </div>
</main>

<script src="https://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script>
<script type="text/javascript">
        $('.form_datetime').datetimepicker({
        //language:  'fr',
        autoclose: true,
        todayBtn: true,
        format: "dd mm yyyy - hh:ii",
        pickerPosition: "top-left",
    });

    $(function () {
	    CKEDITOR.replace('soal1');
	  });
</script>
<script type="text/javascript">
	var currNum = 1;

  $('#addSlideBtn').click(function(event){
     event.preventDefault();
      var jumSlide = $('#stepper').val();
      var i = 0;
      while(i < jumSlide){
        currNum++;
        text = `
                    <div class="col-md-12">
                         <div class="form-group">
						    <label class="control-label col-sm-2" >Soal No. `+currNum+` :</label>
						    <div class="col-sm-10"> 
						      <textarea type="text" class="form-control" rows="5" name="soal`+currNum+`"></textarea>
						    </div>
						  </div>
                          <span class="form-horizontal"> 
                          <div class="form-group">
                          	<label class="col-sm-2"></label> 
                            <div class="col-sm-10">
                                <div class="radio">
                                  <label><input type="radio" value="A" checked name="opt`+currNum+`">
                                  <div class="col-sm-10">
                                  	<input type="text" name="A`+currNum+`" class="form-control" style="width:580px;" placeholder="Pilihan Jawaban A">
                                  </div>
                                  </label>
                                </div>
                                <div class="radio">
                                  <label><input type="radio" value="B" name="opt`+currNum+`">
                                  <div class="col-sm-10">
                                  	<input type="text" name="B`+currNum+`" class="form-control" style="width: 580px" placeholder="Pilihan Jawaban B">
                                  	</div>
                                  </label>
                                </div>
                                <div class="radio">
                                  <label><input type="radio" value="C" name="opt`+currNum+`">
                                  <div class="col-sm-10">
                                  	<input type="text" name="C`+currNum+`" class="form-control" style="width: 580px" placeholder="Pilihan Jawaban C">
                                  </div>
                                  </label>
                                </div>
                                <div class="radio">
                                  <label><input type="radio" value="D" name="opt`+currNum+`">
                                  <div class="col-sm-10">
                                  	<input type="text" name="D`+currNum+`" class="form-control" style="width: 580px" placeholder="Pilihan Jawaban D">
                                  </div>
                                  </label>
                                </div>
                                <div class="radio">
                                  <label><input type="radio" value="E" name="opt`+currNum+`">
                                  <div class="col-sm-10">	
                                  	<input type="text" name="E`+currNum+`" class="form-control" style="width: 580px" placeholder="Pilihan Jawaban E">
                                  </div>
                                  </label>
                                </div>
                            </div>
                          </div>
                          </span> 
                    </div>`;
        $("#bodyRow").append(text);
        ck('soal'+currNum);
        i++;
      }
      $('#currNum').val(currNum);
  });

  function ck(id){
    CKEDITOR.replace(id);
  }
</script>  