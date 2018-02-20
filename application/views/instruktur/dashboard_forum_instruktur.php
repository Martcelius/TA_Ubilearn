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
        <?php if ($this->session->flashdata('data_forum') == TRUE): ?>
            <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
                </button>
                <p><?php echo $this->session->flashdata('data_forum')?></p>
            </div>
        <?php endif; ?>
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
        <a href="<?php echo site_url('instruktur/add_forum/'.$dataCourse->crs_id)?>">
            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">
            <i class="material-icons">create</i>
                Buat Forum
            </button>
        </a>
        </div>
    </div>
  
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text"><?php echo $dataCourse->crs_name;?> (<?php echo $dataCourse->crs_code;?>)</h2>
                </div>
                <div class="mdl-card__supporting-text" style="font-size: unset;" >
                    <table id="Table_mdl">
                        <thead>
                            <tr>
                            <th style="text-align: center;">No.</th>
                            <th style="text-align: center;">Nama Forum</th>
                            <th style="text-align: center;">Deskripsi</th>
                            <th style="text-align: center;">Jumlah Thread</th>
<!--                            <th style="text-align: center;">Jumlah Partisipan</th>-->
                            <th style="text-align: center;">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                        $num = 1;
                        foreach ($dataForum as $forum):?>
                            <tr>
                                <td style="text-align: center;"><?php echo $num?></td>
                                <td style="text-align: center;"><?php echo $forum->cfr_title?></td>
                                <td style="text-align: center;"><?php echo $forum->cfr_desc?></td>
                                <td style="text-align: center;"><?php echo $jumlah[$num];?></td>
<!--                                <td style="text-align: center;">36 Siswa</td>-->
                                <td style="text-align: center;">
                                <a href="<?php echo site_url('instruktur/list_thread_instruktur/'.$forum->cfr_id)?>">
                                    <button style="margin-bottom: 5px;background-color: #067eb7;" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab" title="Lihat">
                                    <i class="material-icons">remove_red_eye</i>
                                    </button>
                                </a>
                                <a href="<?php echo site_url('instruktur/edit_forum/'.$forum->cfr_id.'/'.$dataCourse->crs_id)?>">
                                    <button style="margin-bottom: 5px;background-color: green;" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab" title="Ubah">
                                    <i class="material-icons">edit</i>
                                    </button>
                                </a>
                                <a href="<?php echo site_url('instruktur/delete_forum/'.$forum->cfr_id.'/'.$dataCourse->crs_id);?>">
                                    <button style="margin-bottom: 5px;background-color: red;" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab " title="Hapus">
                                    <i class="material-icons">delete</i>
                                    </button>
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

<script type="text/javascript">
  function ResponsiveCellHeaders(elmID) {
  try {
    var THarray = [];
    var table = document.getElementById(elmID);
    var ths = table.getElementsByTagName("th");
    for (var i = 0; i < ths.length; i++) {
      var headingText = ths[i].innerHTML;
      THarray.push(headingText);
    }
    var styleElm = document.createElement("style"),
      styleSheet;
    document.head.appendChild(styleElm);
    styleSheet = styleElm.sheet;
    for (var i = 0; i < THarray.length; i++) {
      styleSheet.insertRule(
        "#" +
          elmID +
          " td:nth-child(" +
          (i + 1) +
          ')::before {content:"' +
          THarray[i] +
          ': ";}',
        styleSheet.cssRules.length
      );
    }
  } catch (e) {
    console.log("ResponsiveCellHeaders(): " + e);
  }
}
ResponsiveCellHeaders("Table_mdl");
</script>

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



