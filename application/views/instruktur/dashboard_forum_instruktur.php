<main class="mdl-layout__content">

    <div class="mdl-grid cover-main">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="">
                <div class="">
                    <h2 style="color:white">Forum</h2>
                </div>
            </div>
        </div>
    </div>
  
    <div class="mdl-grid">
      <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">    
          <div class="mdl-card mdl-shadow--2dp">
              <div class="mdl-card__title" style="">
                  <i class="fa fa-book" style="font-size: 30px;"></i>
                  <h3 class="mdl-card__title-text" style="margin-left: 15px;">Daftar Lesson</h3>
              </div> 
              <div class="mdl-card__supporting-text">
                  <ul class="demo-list-icon mdl-list">
                      <?php foreach ($datalessonforum as $datalesson):?>
                          <li class="mdl-list__item" style="padding-top:0px; padding-bottom:0px;">
                              <span class="mdl-list__item-primary-content">
                                  <h4 style="margin-bottom:0px; margin-top:0px"><?php echo $datalesson->lsn_name;?></h4>
                              </span>
                              <span class="mdl-list__item-secondary-action">
                                  <a href="<?php echo site_url('instruktur/detail_dashboard_forum_instruktur/'.$datalesson->lsn_id)?>">
                                  <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">
                                      Masuk Forum
                                  </button>
                                  </a>
                              </span>                    
                          </li>
                          <hr style="margin-left:18px">
                      <?php endforeach;?>
                  </ul>
              </div>     
          </div>
      </div>
  </div>
</main>

<style type="text/css">

      table {
        margin: 1em 0;
        border-collapse: collapse;
         width: 100%; 
      }

      caption {
        text-align: left;
        font-style: italic;
        padding: 0.25em 0.5em 0.5em 0.5em;
      }

      th,
      td {
        padding: 0.8em 0.5em 0.25em 1em;
        padding-bottom: 13px;
        vertical-align: text-top;
        text-align: left;
      }

      th {
        vertical-align: bottom;
        background-color: rgba(0, 0, 0, 0.5);
        color: #fff;
        font-weight: bold;
      }

      td::before {
        display: none;
      }

      tr:nth-child(even) {
        background-color: rgba(255, 255, 255, 0.25);
      }

      tr:nth-child(odd) {
        background-color: rgba(49, 49, 49, 0.5);
      }

      td:nth-of-type(2) {
        font-style: italic;
      }

      th:nth-of-type(3),
      td:nth-of-type(3) {
        text-align: right;
      }

      /* div {
        overflow: auto;
      } */

      @media screen and (max-width: 37em), print and (max-width: 5in) {
        table,
        tr,
        td {
          display: block;
        }
        tr {
          padding: 0.7em 2vw;
        }
        th,
        tr:first-of-type {
          display: none;
        }
        td::before {
          display: inline;
          font-weight: bold;
        }
        td {
          display: grid;
          grid-template-columns: 4em auto;
          grid-gap: 1em 0.5em;
        }
        caption {
          font-style: normal;
          background-color: rgba(0, 0, 0, 0.35);
          color: #fff;
          font-weight: bold;
        }
        td:nth-of-type(3) {
          text-align: left;
        }
        td:nth-of-type(4), td:nth-of-type(5) {
          text-align: right;
          width: 12em;
        }
        td:nth-of-type(4)::before, td:nth-of-type(5)::before {
          text-align: left;
        }
        td:nth-of-type(2)::before {
          font-style: normal;
        }
      }

      @media print {
        table {
          page-break-inside: avoid;
        }
        th {
          color: #000;
          background-color: #fff;
          border-bottom: 1pt solid #000;
        }
        tr {
          border-top: 1pt solid #000;
        }
      }

      @media print and (max-width: 5in) {
        table {
          page-break-inside: auto;
        }
        tr {
          page-break-inside: avoid;
        }
      }

      a:hover{
        background-color:#424242;
      }
  </style>

<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable();
    });
</script>


