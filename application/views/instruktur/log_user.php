<main class="mdl-layout__content">
    <div class="mdl-grid cover-main">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="">
                <div class="">
                    <h2 style="color:white">History User</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
        </div>
    </div>
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
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
                <div class="mdl-card__title" style="display:block;">
                    <h2 class="mdl-card__title-text">History User</h2>
                </div>
                <div class="mdl-card__supporting-text" style="font-size: unset;" >
                    <table id="dataTables-example" style="text-align:center;">
                        <thead>
                        <tr>
                            <th style="text-align: center;white-space: nowrap">No.</th>
                            <th style="text-align: center;white-space: nowrap">Log Time</th>
                            <th style="text-align: center;white-space: nowrap">ID User</th>
                            <th style="text-align: center;white-space: nowrap">Nama User</th>
                            <th style="text-align: center;white-space: nowrap">Event Context</th>
                            <th style="text-align: center;white-space: nowrap">Log Referre</th>
                            <th style="text-align: center;white-space: nowrap">Log Name</th>
                            <th style="text-align: center;white-space: nowrap">Log Origin</th>
                            <th style="text-align: center;white-space: nowrap">Log Description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $num = 1;
                        foreach($log_user as $log):?>
                            <tr>
                                <td style="text-align: center;white-space: nowrap"><?php echo $num++?></td>
                                <td style="text-align: center;white-space: nowrap"><?php echo $log->log_time?></td>
                                <td style="text-align: center;white-space: nowrap"><?php echo $log->usr_id?></td>
                                <td style="text-align: center;white-space: nowrap"><?php echo $log->usr_firstname?></td>
                                <td style="text-align: center;white-space: nowrap"><?php echo $log->log_event_context?></td>
                                <td style="text-align: center;white-space: nowrap"><?php echo $log->log_referrer?></td>
                                <td style="text-align: center;white-space: nowrap"><?php echo $log->log_name?></td>
                                <td style="text-align: center;white-space: nowrap"><?php echo $log->log_origin?></td>
                                <td style="text-align: center;white-space: nowrap"><?php echo $log->log_desc?></td>
<!--                                <td style="text-align: center;">-->
<!--                                    <a href="--><?php //echo site_url('instruktur/edit_lo/'.$lo->loc_id)?><!--">-->
<!--                                        <button style="margin-bottom: 5px;background-color: green;" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab" title="Ubah">-->
<!--                                            <i class="material-icons">edit</i>-->
<!--                                        </button>-->
<!--                                    </a>-->
<!--                                    <a href="--><?php //echo site_url('instruktur/delete_lo/'.$lo->loc_id)?><!--">-->
<!--                                        <button style="margin-bottom: 5px;background-color: red;" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab " title="Hapus" onclick="return confirm('Anda yakin untuk menghapus?');">-->
<!--                                            <i class="material-icons">delete</i>-->
<!--                                        </button>-->
<!--                                    </a>-->
<!--                                </td>-->
                            </tr>
                        <?php endforeach ;?>
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
<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable({
            "scrollX" : true,
            "bJQueryUI": true,
        });
    });
</script>

