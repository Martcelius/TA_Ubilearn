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
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text"><?php echo $datalesson->lsn_name;?></h2>
                </div>
                <div class="mdl-card__supporting-text" style="font-size: unset;" >
                    <table  id="dataTables-example">
                        <thead>
                            <tr>
                            <th style="text-align: center; display:none; ">No.</th>
                            <th style="text-align: center;">Nama Forum</th>
                            <th style="text-align: center;">Deskripsi</th>
                            <th style="text-align: center;">Jumlah Thread</th>
                            <th style="text-align: center;">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                        $num = 1;
                        foreach ($datadashboardforum as $forum):?>
                            <tr>
                                <td style="text-align: center; display:none; "><?php echo $num?></td>
                                <td style="text-align: center;"><?php echo $forum->cfr_title?></td>
                                <td style="text-align: center;"><?php echo $forum->cfr_desc?></td>
                                <td style="text-align: center;"><?php echo $jumlah[$num];?></td>
                                <td style="text-align: center;">
                                  <a href="<?php echo site_url('siswa/list_thread_siswa/'.$forum->cfr_id)?>">
                                    <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">Masuk Forum</button>
                                  </a>
                                </td>
                            </tr>
                         <?php $num++;?>
                        <?php endforeach;?>
                        </tbody>
                    </table>
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
  </style>

<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable();
    });
</script>


