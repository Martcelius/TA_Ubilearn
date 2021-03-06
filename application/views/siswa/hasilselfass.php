<main class="mdl-layout__content">
<div class="mdl-grid cover-main">
  <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
    <div class="">
          <div class="">
              <center><h1 style="color:white"><?php echo "Self Assesment"?></h1></center>
              <center><h2 style="color:white"><?php echo "Index of Learning Styles Questionnaire"?></h2></center>
              <center><h2 style="color:white"><?php echo "Ubiquitous Learning"?></h2></center>

          </div>
      </div>
  </div>
</div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<div class="mdl-grid" >

  <div role="alert"
     class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone">
    <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
    </button>
    <p>Terima Kasih sudah mengisi data kuesioner</p>
</div>

    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet">
        <div class="mdl-card mdl-shadow--2dp pie-chart">
            <div class="mdl-card__supporting-text">  
<div id="chart_div"></div>
<h6>Pada dimensi ini, berdasarkan hasil dari kuesioner <i>Index of Learning Style</i>(ILS) menunjukkan bahwa learning style anda adalah "<?php echo $hasilKues['AR'] ?>". Menurut Felder-Silverman, dimensi learning style "<?php echo $hasilKues['AR'] ?>" adalah <?php echo $descKues['AR'] ?></h6>
</div>
</div>
</div>

<div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet">
        <div class="mdl-card mdl-shadow--2dp pie-chart">
            <div class="mdl-card__supporting-text">  
<div id="chart_div1"></div>
<h5>Pada dimensi ini, berdasarkan hasil dari kuesioner <i>Index of Learning Style</i>(ILS) menunjukkan bahwa learning style anda adalah "<?php echo $hasilKues['VV'] ?>". Menurut Felder-Silverman, dimensi learning style "<?php echo $hasilKues['VV'] ?>" adalah <?php echo $descKues['VV'] ?></h5>
</div>
</div>
</div>

<div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet">
        <div class="mdl-card mdl-shadow--2dp pie-chart">
            <div class="mdl-card__supporting-text">  
<div id="chart_div2"></div>
<h6>Pada dimensi ini, berdasarkan hasil dari kuesioner <i>Index of Learning Style</i>(ILS) menunjukkan bahwa learning style anda adalah "<?php echo $hasilKues['SI'] ?>". Menurut Felder-Silverman, dimensi learning style "<?php echo $hasilKues['SI'] ?>" adalah <?php echo $descKues['SI'] ?></h6>
</div>
</div>
</div>

<div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet">
        <div class="mdl-card mdl-shadow--2dp pie-chart">
            <div class="mdl-card__supporting-text">  
<div id="chart_div3"></div>
<h6>Pada dimensi ini, berdasarkan hasil dari kuesioner <i>Index of Learning Style</i>(ILS) menunjukkan bahwa learning style anda adalah "<?php echo $hasilKues['SG'] ?>". Menurut Felder-Silverman, dimensi learning style "<?php echo $hasilKues['SG'] ?>" adalah <?php echo $descKues['SG'] ?></h6>
</div>
</div>
</div>

<div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet">
        <div class="mdl-card mdl-shadow--2dp pie-chart">
            <div class="mdl-card__supporting-text">
<h3>Team Role : <strong><i><?php 
  echo $hasilKues2->hasil;
 ?></i></strong></h3> 
 <p><?php echo $hasil2Arti; ?></p> 
</div>
</div>
<center style="margin-top: 15px;" >
  <a href="<?php echo site_url('siswa/dashboard') ?>">
    <button type="button" class="mdl-button mdl-js-button mdl-button--raised" style="background: #4a95b9;">Pergi Ke Dashboard</button>
  </a>
</center>
</div>
</div>

<script>
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawAxisTickColors);

function drawAxisTickColors() {
      var data = google.visualization.arrayToDataTable([
        ['Learning Style', 'Active', 'Reflective'],
        ['Active/Reflective', <?php echo $hasil->Active ?>,<?php echo $hasil->Reflective ?>]
      ]);

      var options = {
        title: 'Hasil ILS Questionnaire',
        chartArea: {width: '50%'},
        hAxis: {
          title: 'Learning Style',
          minValue: 0,
          textStyle: {
            bold: true,
            fontSize: 12,
            color: '#4d4d4d'
          },
          titleTextStyle: {
            bold: true,
            fontSize: 18,
            color: '#4d4d4d'
          }
        },
        vAxis: {
          title: 'Learning Style',
          textStyle: {
            fontSize: 14,
            bold: true,
            color: '#848484'
          },
          titleTextStyle: {
            fontSize: 14,
            bold: true,
            color: '#848484'
          }
        }
      };
      var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    }
</script>

<script>
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawAxisTickColors);

function drawAxisTickColors() {
      var data = google.visualization.arrayToDataTable([
        ['Learning Style', 'Verbal', 'Visual'],
        ['Verbal/Visual', <?php echo $hasil->Verbal ?>,<?php echo $hasil->Visual ?> ]
      ]);

      var options = {
        title: 'Hasil ILS Questionnaire',
        chartArea: {width: '50%'},
        hAxis: {
          title: 'Learning Style',
          minValue: 0,
          textStyle: {
            bold: true,
            fontSize: 12,
            color: '#4d4d4d'
          },
          titleTextStyle: {
            bold: true,
            fontSize: 18,
            color: '#4d4d4d'
          }
        },
        vAxis: {
          title: 'Learning Style',
          textStyle: {
            fontSize: 14,
            bold: true,
            color: '#848484'
          },
          titleTextStyle: {
            fontSize: 14,
            bold: true,
            color: '#848484'
          }
        }
      };
      var chart = new google.visualization.BarChart(document.getElementById('chart_div1'));
      chart.draw(data, options);
    }
</script>

<script>
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawAxisTickColors);

function drawAxisTickColors() {
      var data = google.visualization.arrayToDataTable([
        ['Learning Style', 'Sensing', 'Intuitive'],
        ['Sensing/Intuitive', <?php echo $hasil->Sensing ?>,<?php echo $hasil->Intuitive ?> ]
      ]);

      var options = {
        title: 'Hasil ILS Questionnaire',
        chartArea: {width: '50%'},
        hAxis: {
          title: 'Learning Style',
          minValue: 0,
          textStyle: {
            bold: true,
            fontSize: 12,
            color: '#4d4d4d'
          },
          titleTextStyle: {
            bold: true,
            fontSize: 18,
            color: '#4d4d4d'
          }
        },
        vAxis: {
          title: 'Learning Style',
          textStyle: {
            fontSize: 14,
            bold: true,
            color: '#848484'
          },
          titleTextStyle: {
            fontSize: 14,
            bold: true,
            color: '#848484'
          }
        }
      };
      var chart = new google.visualization.BarChart(document.getElementById('chart_div2'));
      chart.draw(data, options);
    }
</script>

<script>
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawAxisTickColors);

function drawAxisTickColors() {
      var data = google.visualization.arrayToDataTable([
        ['Learning Style', 'Sequential', 'Global'],
        ['Sequential/Global', <?php echo $hasil->Sequential ?>,<?php echo $hasil->Global ?> ]
      ]);

      var options = {
        title: 'Hasil ILS Questionnaire',
        chartArea: {width: '50%'},
        hAxis: {
          title: 'Learning Style',
          minValue: 0,
          textStyle: {
            bold: true,
            fontSize: 12,
            color: '#4d4d4d'
          },
          titleTextStyle: {
            bold: true,
            fontSize: 18,
            color: '#4d4d4d'
          }
        },
        vAxis: {
          title: 'Learning Style',
          textStyle: {
            fontSize: 14,
            bold: true,
            color: '#848484'
          },
          titleTextStyle: {
            fontSize: 14,
            bold: true,
            color: '#848484'
          }
        }
      };
      var chart = new google.visualization.BarChart(document.getElementById('chart_div3'));
      chart.draw(data, options);
    }
</script>

</main>