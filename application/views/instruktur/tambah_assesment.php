<main class="mdl-layout__content">
  <div class="mdl-grid cover-main">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
      <div class="">
          <div class="">
              <h2 style="color:white">Tambah Assesment Baru</h2>
          </div>
      </div>
    </div>
  </div>
   <div class="mdl-grid">

   <!-- FLash Data -->
   <?php if ($this->session->flashdata('ass_simpan') == TRUE): ?>
    <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet  mdl-cell--12-col-phone"> 
        <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
        </button>
        <p><?php echo $this->session->flashdata('ass_simpan')?></p>
    </div>
    <?php endif; ?>
    <!-- End Of Flash Data -->

    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
      <div class="mdl-card mdl-shadow--2dp pie-chart">
          <div class="mdl-card__title" style="display:block;">
              <h2 class="mdl-card__title-text">Form</h2>
              <div class="mdl-card__subtitle-text">menambahkan assesment baru</div>
          </div>
          <div class="mdl-card__supporting-text" style="font-size: unset;" >
            <form class="form-horizontal" action="<?php echo base_url().'instruktur/Assesment/insert_assesment/'.$crs_id?>" method="post">
			  <div class="form-group">
			    <label class="control-label col-sm-2" >Nama Assesment :</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="nama" name="nama" required placeholder="Masukkan Nama Assessment">
			    </div>
			  </div>
         <div class="form-group">
          <label class="control-label col-sm-2">Tipe Assesment :</label>
          <div class="col-sm-10">
          <select class="form-control" id="tipe" name="tipe">
            <option>Kuis</option>
            <option>Pre-test</option>
            <option>Remedial</option>
            <option>Exercise</option>
          </select>
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
                    <input class="form-control" size="16" type="text" name="wmulai" value="" required >
					<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                </div>
			  </div>
			  <div class="form-group">
			    <label class="control-label col-sm-2" >Waktu Selesai :</label>
			    <div class="input-group date form_datetime col-sm-6" style="padding-left: 15px;padding-right: 15px;"  data-link-field="dtp_input1">
                    <input class="form-control" size="16" type="text" name="wselesai" value="" required>
					<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                </div>
			  </div>
			  <hr/>
			  <div class="form-group">
			    <label class="control-label col-sm-2" >Tambah Soal :</label>
			    <div class="col-sm-1">
                    <input class="form-control" id="stepper" max="100" min="0" type="Number" value="1" >
                 </div>
                 <div class="col-sm-9">
                    <button class="btn btn-success" id="addSlideBtn" ><i class="fa fa-plus"></i></button>
                 	<span class="pull-right">	
                 		<input readonly="" class="form-control" name="currNum" id="currNum" max="100" min="0" type="Number" value="1" >
                 	</span>
                 	<label class="control-label pull-right" style="margin-right: 5px;">Jumlah Soal</label>
                 </div>
			  </div>
			  <div class="row" id="bodyRow">
          <div class="col-md-12" id="s1">
          <hr/>
          <div class="form-group">
            <label class="control-label col-sm-2">Learning Outcomes :</label>
            <div class="col-sm-10">
            <select class="form-control" name="loc1" >
            <option disable>>-Pilih Learning Outcome-<</option>
              <?php 
              foreach($listLo as $c){
                echo '<option value="'.$c->loc_id.'" >'.$c->loc_desc.'</option>';
              } ?>
            </select>
            </div>
          </div> 
          	<div class="form-group">
						    <label class="control-label col-sm-2" id="lab1" >Soal No. 1 :
                  <hr/>
                  <span class="col-sm-6">
                    Poin Soal
                  </span>
                  <span class="col-sm-6">
                    <input class="form-control" name="poin1" max="100" min="0" placeholder="0" required>
                  </span>
                </label>
						    <div class="col-sm-10">
                <a class="btn btn-danger pull-right" style="padding: 26px;" onclick="deleteSoal(1)" id="del1">(X) Hapus Soal</a> 
						      <textarea style="width: 100%;" name="soal1"></textarea>
						    </div>
						  </div>
                <span class="form-horizontal"> 
                <div class="form-group">      
                  <label class="col-sm-2"></label>
                  <div class="col-sm-10" sty>
                      <div class="radio">
                        <label style="display: inline-flex;"><input type="radio" value="0" checked name="opt1">
                        <div class="col-sm-10">
                        	<input type="text" name="A1" class="form-control" style="width:580px;" placeholder="Pilihan Jawaban A">
                        </div>
                        </label>
                      </div>
                      <div class="radio">
                        <label style="display: inline-flex;"><input type="radio" value="1" name="opt1">
                        <div class="col-sm-10">
                        	<input type="text" name="B1" class="form-control" style="width: 580px" placeholder="Pilihan Jawaban B">
                        	</div>
                        </label>
                      </div>
                      <div class="radio">
                        <label style="display: inline-flex;"><input type="radio" value="2" name="opt1">
                        <div class="col-sm-10">
                        	<input type="text" name="C1" class="form-control" style="width: 580px" placeholder="Pilihan Jawaban C">
                        </div>
                        </label>
                      </div>
                      <div class="radio">
                        <label style="display: inline-flex;"><input type="radio" value="3" name="opt1">
                        <div class="col-sm-10">
                        	<input type="text" name="D1" class="form-control" style="width: 580px" placeholder="Pilihan Jawaban D">
                        </div>
                        </label>
                      </div>
                      <div class="radio">
                        <label style="display: inline-flex;"><input type="radio" value="4" name="opt1">
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
			      <button class="btn btn-lg btn-primary" onclick="return cek()">Submit</button>
			    </div>
			  </div>
			</form>
          </div>
     </div>
    </div>
   </div>
</main>
<script type="text/javascript">
        $('.form_datetime').datetimepicker({
        //language:  'fr',
        autoclose: true,
        todayBtn: true,
        format: "yyyy-mm-dd hh:ii",
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
        text =` 
        <div class="col-md-12" id="s`+currNum+`">
        <hr/>
        <div class="form-group">
            <label class="control-label col-sm-2">Learning Outcomes :</label>
            <div class="col-sm-10">
            <select class="form-control" name="loc`+currNum+`" >
            <option disable>>-Pilih Learning Outcome-<</option>
              <?php 
              foreach($listLo as $c){
                echo '<option value="'.$c->loc_id.'" >'.$c->loc_desc.'</option>';
              } ?>
            </select>
            </div>
          </div> 
             <div class="form-group">
						    <label class="control-label col-sm-2" id="lab`+currNum+`" >Soal No. `+currNum+` :
                  <hr/>
                  <span class="col-sm-6">
                    Poin Soal
                  </span>
                  <span class="col-sm-6">
                    <input class="form-control" name="poin`+currNum+`" max="100" min="0" placeholder="0" required>
                  </span>
                </label>
						    <div class="col-sm-10"> 
                  <a class="btn btn-danger pull-right" style="padding: 26px;" onclick="deleteSoal(`+currNum+`)" id="del`+currNum+`">(X) Hapus Soal</a> 
						      <textarea type="text" class="form-control" rows="5" name="soal`+currNum+`"></textarea>
						    </div>
						  </div>
                          <span class="form-horizontal"> 
                          <div class="form-group">
                          	<label class="col-sm-2"></label> 
                            <div class="col-sm-10">
                                <div class="radio">
                                  <label style="display: inline-flex;"><input type="radio" value="0" checked name="opt`+currNum+`">
                                  <div class="col-sm-10">
                                  	<input type="text" name="A`+currNum+`" class="form-control" style="width:580px;" placeholder="Pilihan Jawaban A">
                                  </div>
                                  </label>
                                </div>
                                <div class="radio">
                                  <label style="display: inline-flex;"><input type="radio" value="1" name="opt`+currNum+`">
                                  <div class="col-sm-10">
                                  	<input type="text" name="B`+currNum+`" class="form-control" style="width: 580px" placeholder="Pilihan Jawaban B">
                                  	</div>
                                  </label>
                                </div>
                                <div class="radio">
                                  <label style="display: inline-flex;"><input type="radio" value="2" name="opt`+currNum+`">
                                  <div class="col-sm-10">
                                  	<input type="text" name="C`+currNum+`" class="form-control" style="width: 580px" placeholder="Pilihan Jawaban C">
                                  </div>
                                  </label>
                                </div>
                                <div class="radio">
                                  <label style="display: inline-flex;"><input type="radio" value="3" name="opt`+currNum+`">
                                  <div class="col-sm-10">
                                  	<input type="text" name="D`+currNum+`" class="form-control" style="width: 580px" placeholder="Pilihan Jawaban D">
                                  </div>
                                  </label>
                                </div>
                                <div class="radio">
                                  <label style="display: inline-flex;"><input type="radio" value="4" name="opt`+currNum+`">
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

    function deleteSoal(N){
    if(confirm("Anda yakin ingin menghapus soal nomor "+N+" ?")){
      if(N == currNum){
        $("#bodyRow").children().slice(N-1).remove();
        currNum--;
        $('#currNum').val(currNum);
      }
      else if(N < currNum){
        $("#bodyRow").children().slice(N-1).remove();
        currNum = N - 1;
        $('#currNum').val(currNum);
      }
/*      id = "#s"+N;
      $(id).remove();
      currNum--;
      $('#currNum').val(currNum);
      if(N < currNum){
        while(N <= currNum){
          N++;
          $("textarea[name='soal"+N+"']").prop('name','soal'+N-1);
          $("#lab"+N).text("Soal No. "+N-1);
          $("#lab"+N).prop('id','lab'+N-1);
          $("#del"+N).prop('onclick','deleteSoal('+N-1+')');
          $("#del"+N).prop('id','del'+N-1);
          $("input[name='opt"+N+"']").prop('name','opt'+N-1);
          $("input[name='A"+N+"']").prop('name','A'+N-1);
          $("input[name='B"+N+"']").prop('name','B'+N-1);
          $("input[name='C"+N+"']").prop('name','C'+N-1);
          $("input[name='D"+N+"']").prop('name','D'+N-1);
          $("input[name='E"+N+"']").prop('name','E'+N-1);
        }  
      }*/
    }
    else{
      //Do Nothing
    }
  }

  function cek(){
    var i = 1;
    var temp = 0;
    while(i <= currNum){
      var a = $('[name=poin'+i+']').val();
      temp = temp + parseInt(a);
      i++;
    }
    var bool = false;
    if(temp == 100){
      bool = true;
    }
    else{
      bool = false;
      alert('Jumlah Poin tidak sama dengan 100 !');
    }
    return bool;
  }

</script>  