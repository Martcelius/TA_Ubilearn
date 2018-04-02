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
            
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet">
        <div class="mdl-card mdl-shadow--2dp pie-chart">
            <div class="mdl-card__supporting-text">  
<div id="chart_div"></div>
<h6>Learning style anda adalah 'active' yang artinya.......</h6>
</div>
</div>
</div>

<div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet">
        <div class="mdl-card mdl-shadow--2dp pie-chart">
            <div class="mdl-card__supporting-text">  
<div id="chart_div1"></div>
<h6>Learning style anda adalah 'verbal' yang artinya.......</h6>
</div>
</div>
</div>

<div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet">
        <div class="mdl-card mdl-shadow--2dp pie-chart">
            <div class="mdl-card__supporting-text">  
<div id="chart_div2"></div>
<h6>Learning style anda adalah 'sensing' yang artinya.......</h6>
</div>
</div>
</div>

<div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet">
        <div class="mdl-card mdl-shadow--2dp pie-chart">
            <div class="mdl-card__supporting-text">  
<div id="chart_div3"></div>
<h6>Learning style anda adalah 'Global' yang artinya.......</h6>
</div>
</div>
</div>

</div>

<script>
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawAxisTickColors);

function drawAxisTickColors() {
      var data = google.visualization.arrayToDataTable([
        ['Learning Style', 'Active', 'Reflective'],
        ['Active/Reflective', 9,2]
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
        ['Verbal/Visual', 8,3 ]
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
        ['Sensing/Intuitive', 6,5 ]
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
        ['Learning Style', 'Sequence', 'Global'],
        ['Verbal/Visual', 1,10 ]
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