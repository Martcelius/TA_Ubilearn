
<main class="mdl-layout__content">
    <div class="mdl-grid cover-main">
      <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
        <<div class="">
              <div class="">
                  <h2 style="color:white"><?php echo $course->crs_name?></h2>
                  <h3 style="color:white"><?php echo $assesment->ass_name;?></h3>
                  <p class="glyphicon glyphicon-file" style="color: white;"> Dibuat Oleh : <?php echo $course->usr_firstname." ".$course->usr_lastname." pada tanggal ".$assesment->ass_timecreated?></p>

              </div>
          </div>
      </div>
    </div>

    <!-- FLash Data -->
   <?php if ($this->session->flashdata('ast_done') == TRUE): ?>
    <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet  mdl-cell--12-col-phone"> 
        <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
        </button>
        <p><?php echo $this->session->flashdata('ast_done')?></p>
    </div>
    <?php endif; ?>

    <div class="mdl-grid" >
        <div class="mdl-cell mdl-cell--6-offset-desktop mdl-cell--4-offset-tablet mdl-cell--6-offset-phone mdl-cell--8-col-phone" >
            <table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp" style="width: 100%">
                <tbody>
                <tr>
                    <td class="mdl-data-table__cell--non-numeric">Waktu Mulai</td>
                    <td><?php echo $ass_obj->ass_timeopen ?></td>
                </tr>
                <tr>
                    <td class="mdl-data-table__cell--non-numeric">State</td>
                    <td>Finished</td>
                </tr>
                <tr>
                    <td class="mdl-data-table__cell--non-numeric">Completed on</td>
                    <td><?php echo $currDate ?></td>
                </tr>
                <tr>
                    <td class="mdl-data-table__cell--non-numeric">Time taken</td>
                    <td><?php echo $timeTaken ?></td>
                </tr>
                <tr>    
                    <td class="mdl-data-table__cell--non-numeric">Marks</td>
                    <td><?php echo array_sum($hasilBS) ?>/<?php echo $jumSoal ?></td>
                </tr>
                <tr>
                    <td class="mdl-data-table__cell--non-numeric">Grade</td>
                    <td><?php echo $nilaiAkhir ?> out of 100</td>
                </tr>
                </tbody>
            </table>
        </div>    
    </div>

    <?php
    $i = 0; 
    foreach($list_qst as $c){
        if($hasilBS[$i] == 0){
            $txtBS = '<p>Jawaban Salah</p>';
            $clBS = 'background-color: #c92626;';
            $colorJwb = 'color: #ff6060;';
            $bnr = false;
        }
        else{
            $txtBS = '<p>Jawaban Benar</p>';
            $clBS = 'background-color: #31b631;';
            $colorJwb = 'color: #57f357;';
            $bnr = true;   
        }
    ?>
    <div class="mdl-grid" >
        <div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--2-col-tablet mdl-cell--6-col-phone" >
            <div class="mdl-card mdl-shadow--2dp pie-chart" style="<?php echo $clBS ?>">
                <div class="mdl-card__supporting-text" style="text-align: center;" >
                <p>Question <?php echo $i+1 ?></p>
                <?php echo $txtBS; ?>
                <p>Nilai <?php echo $qst_ans[$i]->sum('ans_point') ?></p>
                </div>
            </div>
        </div>
        <div class="mdl-cell mdl-cell--8-col-desktop mdl-cell--10-col-tablet mdl-cell--6-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__supporting-text">
                    <p><?php echo $c->qst_text ?></p>
                    <?php 
                    $j = 0;
                    foreach($qst_ans[$i] as $d){
                        if($d->ans_id == $stdAns[$i]){
                            $sl = 'checked';
                            $cl = $colorJwb;
                        }
                        else{
                            $sl = 'disabled';
                            $cl = '';
                        }

                        if(!$bnr && $d->ans_point > 0){
                            $cl = 'color: #57f357;';
                        }
                    ?>
                    <p>
                        <input <?php echo $sl; ?> type="radio" value="<?php echo $d->ans_id ?>" name="jawaban<?php echo $i+1 ?>" onclick="pilih(<?php echo $i+1 ?>)">
                        <label style="<?php echo $cl ?>" ><?php echo $d->ans_text ?></label>
                    </p>
                    <?php $j++; } ?>
                </div>
            </div>
        </div>
    </div>
    <?php $i++; } ?>

    <div style="text-align:center;margin-bottom: 20px;">
    <a href="<?php echo base_url().'siswa/assesment_info/'.$ass_obj->ass_id ?>">
        <button style="background-color: #387093;" class="mdl-button mdl-js-button mdl-button--raised">
            Selesai Mengerjakan
        </button>
    </a>
    </div>
</main>


