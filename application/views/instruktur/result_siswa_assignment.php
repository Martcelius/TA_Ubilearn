<main class="mdl-layout__content">
    <div class="mdl-grid cover-main">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <h2 style="color:white; text-align:center;"><?php echo $assignment->crs_name?></h2>
            <div style="text-align:center">
                <img src="<?php echo base_url();?>/res/assets/images/uploads/<?php echo $assignment->usr_picture;?>" class="material-icons mdl-list__item-avatar" style="width: 100px; height: 100px;">
                <h3 style="color:white;"><?php echo $assignment->usr_firstname." ".$assignment->usr_lastname?></h3>
                <p style="color:white;"><?php $converted = date('d M Y h.i.s A', strtotime($assignment->asg_timecreated));
                    $reversed = date('Y-M-d', strtotime($converted));
                    echo $reversed;
                    ?>
                </p>
                <p style="color:white;"><?php echo $assignment->asg_name?></p>
            </div>
        </div>
    </div>
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="mdl-card mdl-shadow--2dp">
                <div class="mdl-card__title" style="display: block">
                    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone" >
                        <table id="dataTables-example" style="text-align:center;">
                            <thead>
                            <tr style="text-align:center;">
                                <th style="text-align:center;">No</th>
                                <th style="text-align:center;">Nama Siswa</th>
                                <th style="text-align:center;">Berkas</th>
                                <th style="text-align:center;">Status</th>


                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $i = 1;
                            foreach($assignment_siswa as $c): ?>
                            <tr class="odd gradeX" style="background-color: #363636;">
                                <td style="text-align:center;"><?php echo $i++;?></td>
                                <td style="text-align:center;"><?php echo $c->usr_firstname." ".$c->usr_lastname?></td>
                                <td style="text-align:center;">
                                    <a href="<?php echo base_url();?>res/assets/file_siswa/<?php echo $c->sub_attachment;?>" target="_blank">
                                        <p style="color: white;">
                                            <?php echo $c->sub_attachment?>
                                        </p>
                                    </a>
                                </td>
                                <td style="text-align:center;">
                                    <?php if($c->sub_timecreated <= $c->asg_duedate):?>
                                        <p>ontime</p>
                                    <?php elseif($c->sub_timecreated >= $c->asg_duedate):?>
                                        <p>late</p>
                                    <?php endif ?>
                                </td>
                            </tr>
                            <?php endforeach;?>


                            </tbody>
                        </table>
                    </div>
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

<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable();
    });
</script>