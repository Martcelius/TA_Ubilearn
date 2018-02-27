<main class="mdl-layout__content">
  <div class="mdl-grid cover-main">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
      <div class="">
          <div class="">
              <h2 style="color:white">Edit Assessment "<?php echo $ass_obj->ass_name ?>"</h2>
          </div>
      </div>
    </div>
  </div>
   <div class="mdl-grid">

   <!-- FLash Data -->
   <?php if ($this->session->flashdata('qst_delete_success') == TRUE): ?>
    <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet  mdl-cell--12-col-phone"> 
        <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
        </button>
        <p><?php echo $this->session->flashdata('qst_delete_success')?></p>
    </div>
    <?php endif; ?>

   <?php if ($this->session->flashdata('ass_update_success') == TRUE): ?>
    <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet  mdl-cell--12-col-phone"> 
        <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
        </button>
        <p><?php echo $this->session->flashdata('ass_update_success')?></p>
    </div>
    <?php endif; ?>
    <!-- End Of Flash Data -->

    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
      <div class="mdl-card mdl-shadow--2dp pie-chart">
          <div class="mdl-card__title" style="display:block;">
              <h2 class="mdl-card__title-text">Form</h2>
              <div class="mdl-card__subtitle-text">Edit assessment "<?php echo $ass_obj->ass_name ?>"</div>
          </div>
          <div class="mdl-card__supporting-text" style="font-size: unset;" >
            <form class="form-horizontal" method="post">
            <!-- Hidden Input ID -->
            <input type="text" hidden name="ass_id" value="<?php echo $ass_obj->ass_id ?>">
            <input type="text" hidden name="crs_id" value="<?php echo $ass_obj->crs_id ?>">
            <input type="text" hidden name="jumSoalOld" value="<?php echo $jumSoal ?>">
            <!-- End Hidden -->
			  <div class="form-group">
			    <label class="control-label col-sm-2" >Nama Assessment :</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="nama" name="nama" required placeholder="Masukkan Nama Assessment" value="<?php echo $ass_obj->ass_name ?>">
			    </div>
			  </div>
         <div class="form-group">
          <label class="control-label col-sm-2">Tipe Assesment :</label>
          <div class="col-sm-10">
          <select class="form-control" id="tipe" name="tipe">
          <?php 
          $dtOpt = array('Kuis','Pre-test','Remedial','Exercise');
          $ix = 0;
          while($ix < 4){
            if($dtOpt[$ix] == $ass_obj->ass_tipe){
              $tipeSl = 'selected';
            }else{
              $tipeSl = '';
            }
            echo '<option '.$tipeSl.' >'.$dtOpt[$ix].'</option>';
            $ix++;
          } 
          ?>
          </select>
          </div>
        </div> 
			  <div class="form-group">
			    <label class="control-label col-sm-2" >Deskripsi :</label>
			    <div class="col-sm-10"> 
			      <textarea type="text" class="form-control" rows="5" id="desc" name="desc" placeholder="Masukkan Deskripsi Assessment"><?php echo htmlspecialchars($ass_obj->ass_desc) ?></textarea>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="control-label col-sm-2" >Waktu Mulai :</label>
			    <div class="input-group date form_datetime col-sm-6" style="padding-left: 15px;padding-right: 15px;"  data-link-field="dtp_input1">
                    <input class="form-control" size="16" type="text" name="wmulai" value="<?php echo $ass_obj->ass_timeopen ?>" required >
					<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                </div>
			  </div>
			  <div class="form-group">
			    <label class="control-label col-sm-2" >Waktu Selesai :</label>
			    <div class="input-group date form_datetime col-sm-6" style="padding-left: 15px;padding-right: 15px;"  data-link-field="dtp_input1">
                    <input class="form-control" size="16" type="text" name="wselesai" value="<?php echo $ass_obj->ass_timeclose ?>" required>
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
                 		<input readonly="" class="form-control" name="currNum" id="currNum" max="100" min="0" type="Number" value="<?php echo $jumSoal ?>" >
                 	</span>
                 	<label class="control-label pull-right" style="margin-right: 5px;">Jumlah Soal</label>
                 </div>
			  </div>
        <div class="row" id="bodyRow">

        <?php 
          $i = 0;
          foreach($qst as $c){ 
        ?>
			  
          <div class="col-md-12" id="s<?php echo $i+1 ?>">
          <hr/>
          <div class="form-group">
            <label class="control-label col-sm-2">Learning Outcomes :</label>
            <div class="col-sm-10">
            <select class="form-control" name="loc1" >
              <?php 
              foreach($listLo as $d){
                if($d->loc_id == $c->loc_id){
                  $sl = 'selected';
                }else{
                  $sl ='';
                }
                echo '<option '.$sl.' value="'.$d->loc_id.'" >'.$d->loc_desc.'</option>';
              } ?>
            </select>
            </div>
          </div>
          <!-- Hidden input ID -->
          <input type="text" hidden name="qst_id<?php echo $i+1 ?>" value="<?php echo $c->qst_id ?>">
          <!-- End Hidden -->
          	<div class="form-group">
						    <label class="control-label col-sm-2" id="lab<?php echo $i+1 ?>" >Soal No. <?php echo $i+1 ?> :
                  <hr/>
                  <span class="col-sm-6">
                    Poin Soal
                  </span>
                  <span class="col-sm-6">
                    <input class="form-control" name="poin<?php echo $i+1 ?>" max="100" min="0" placeholder="0" value="<?php echo $qst_ans[$i]->sum('ans_point') ?>" required>
                  </span>
                </label>
						    <div class="col-sm-10">
                <a class="btn btn-danger pull-right" style="padding: 26px;" onclick="deleteSoal(<?php echo $i+1 ?>)" id="del<?php echo $i+1 ?>">(X) Hapus Soal</a> 
						      <textarea type="text" class="form-control" rows="5" name="soal<?php echo $i+1 ?>">
                <?php echo $c->qst_text ?>      
                  </textarea>
						    </div>
						  </div>
      
                  <span class="form-horizontal"> 
                  <div class="form-group">      
                    <label class="col-sm-2"></label>
                    <div class="col-sm-10">
                    <?php 
                    //Cari checked option
                    $x = 0;
                    $hrf = array('A','B','C','D','E');
                    foreach($qst_ans[$i] as $d){
                      $check = '';
                      if($d->ans_point != 0){
                        $check = 'checked';
                      }
                      $k = $i + 1;
                      ?>

                        <div class="radio">
                          <!-- Hidden input ID -->
                          <input type="text" hidden name="ans_id<?php echo $k.'-'.$x ?>" value="<?php echo $d->ans_id ?>">
                          <!-- End Hidden -->
                          <label style="display: inline-flex;"><input type="radio" value="<?php echo $x ?>" <?php echo $check ?> name="opt<?php echo $k ?>">
                          <div class="col-sm-10">
                          	<input type="text" name="<?php echo $hrf[$x].$k ?>" class="form-control" style="width:580px;" placeholder="Pilihan Jawaban <?php echo $hrf[$x] ?>" value="<?php echo $qst_ans[$i][$x]->ans_text ?>">
                          </div>
                          </label>
                        </div>

                    <?php 
                      $x++; 
                    }
                    ?> 
                    </div>
                  </div>
                  </span>
            </div>
          
          <?php 
            $i++;
            }
          ?>
        </div>
                
			  <div class="form-group pull-right"> 
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" formaction="<?php echo base_url().'instruktur/Assesment/update_assesment/' ?>" class="btn btn-lg btn-primary">Submit</button>
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
        format: "yyyy-mm-dd hh:ii",
        pickerPosition: "top-left",
    });

    $(function () {
	    var idx_soal = 1;
      while(idx_soal <= <?php echo $jumSoal ?>){
        ck('soal'+idx_soal);
        idx_soal++;
      }
	  });
</script>
<script type="text/javascript">
	var currNum = <?php echo $jumSoal ?>;

  $('#addSlideBtn').click(function(event){
     event.preventDefault();
      var jumSlide = $('#stepper').val();
      var i = 0;
      while(i < jumSlide){
        currNum++;
        text = `
        <div class="col-md-12" id="s`+currNum+`">
        <hr/>
        <div class="form-group">
            <label class="control-label col-sm-2">Learning Outcomes :</label>
            <div class="col-sm-10">
            <select class="form-control" name="loc`+currNum+`" >
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
        var qst_id = $('[name="qst_id'+N+'"]').val();
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
        if(qst_id != null){
          window.location.href = '<?php echo base_url().'instruktur/Assesment/delete_qst/'?>'+qst_id ;
        }
    }
    else{
      //Do Nothing
    }
  }

</script>  