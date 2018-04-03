<main class="mdl-layout__content">
    <div class="mdl-grid cover-main">
      <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
          <div class="">
              <div class="">
                  <h2 style="color:white"><?php echo $course->crs_name?></h2>
                  <h3 style="color:white"><?php echo $ass_obj->ass_name;?></h3>
                  <p class="glyphicon glyphicon-file" style="color: white;padding: 6px;border-radius: 12px;background: #558d43;"> Dibuat Oleh : <?php echo $course->usr_firstname." ".$course->usr_lastname." pada tanggal ".$time = date("d-M-Y h:i A",strtotime($ass_obj->ass_timecreated));?></p>
              </div>
          </div>
      </div>
    </div>
    <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--3-col-tablet mdl-cell--6-col-phone" style="position: absolute;top: 20%;right: 1%;" >
            <div class="mdl-card mdl-shadow--2dp pie-chart timeBox" style="background: #4ea0ab;">
                <div class="mdl-card__supporting-text" style="text-align: center;font-size: unset;margin-left: 13px;color: white;" >
                <label>Waktu Tersisa</label>
                <br/>
                <label id="demo"></label>
                </div>
            </div>
        </div>
    <form method="post" action="<?php echo site_url('siswa/assesment/calc_ass/'.$ass_obj->ass_id) ?>">   
    <?php
    $i = 0; 
    foreach($qst as $c){

    ?>
    <div class="mdl-grid" >
        <div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--2-col-tablet mdl-cell--6-col-phone" >
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__supporting-text" style="text-align: center;" >
                <p>Pertanyaan <?php echo $i+1 ?></p>
                <p style="color:#ff5151" id="soal<?php echo $i+1 ?>" >Belum Terjawab</p>
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
                    ?>
                    <p>
                        <input type="radio" value="<?php echo $d->ans_id ?>" name="jawaban<?php echo $i+1 ?>" onclick="pilih(<?php echo $i+1 ?>)" required>
                        <label><?php echo $d->ans_text ?></label>
                    </p>
                    <?php $j++; } ?>
                </div>
            </div>
        </div>
    </div>
    <?php $i++; } ?>
    <!-- Hidden Input Jumlah Soal -->
    <input hidden type="number" name="jumSoal" value="<?php echo $i ?>">
    <input hidden type="number" name="timeTaken" id="timeTaken">
    <!-- End Hidden -->

    <div style="text-align:center;margin-bottom: 20px;">
        <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored-blue" type="submit" id="submitBtn" onclick="return setTimeTaken()">
            Selesai Mengerjakan
        </button>

    </div>
    </form>
</main>
<script type="text/javascript">
    function pilih(no){
        $("#soal"+no).text('Sudah Terjawab');
        $("#soal"+no).css('color','#57f357');
    }

    $(document).ready(function(){
        $( window ).bind('beforeunload', function()
         {
           return 'It is going to be refreshed'; 
        });
        window.onhashchange = function() {
            
        }
    });
</script>

<script>
var timeTaken = 0;
var ass_id = <?php echo $ass_obj->ass_id ?>;
var peringatan = false;
var sumOnline = 0;
// Set the date we're counting down to
var countDownDate = new Date("<?php echo $ass_obj->ass_timeclose ?>").getTime();
/*var countDownDate = new Date("2018-02-28 13:50:5").getTime();*/

// Update the count down every 1 second
var x = setInterval(function() {

  timeTaken = timeTaken + 1;
  var online = navigator.onLine;
  // Get todays date and time
  var now = new Date().getTime();

  // Find the distance between now an the count down date
  var distance = countDownDate - now;

  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Display the result in the element with id="demo"
  document.getElementById("demo").innerHTML = days + "d " + hours + "h "
  + minutes + "m " + seconds + "s ";

  // If the count down is finished, write some text
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "EXPIRED";
    alert('Waktu Anda Sudah Habis');
    $('#submitBtn').click();
  }
  else if(minutes <= 4 && peringatan == false && hours == 0 && days == 0){
    alert('Waktu 5 Menit lagi');
    peringatan = true;
    $('.timeBox').css('background','#e92a2a');
  }

  if (!online) {
    sumOnline++;
  } else{
    sumOnline = 0;
  }

  if(sumOnline >= 8){
    alert('Koneksi Terputus !');
    sumOnline = 0;
  }

}, 1000);

function setTimeTaken(){
    var online = navigator.onLine;
    if(!online){
      alert('Koneksi Terputus !');
      $a = false;
    }
    else{
      $('#timeTaken').val(timeTaken);
      $(window).off('beforeunload');
      $a = true;
    }
    return $a;
}
</script>


