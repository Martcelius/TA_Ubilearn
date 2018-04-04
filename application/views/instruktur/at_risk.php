<main class="mdl-layout__content">
    <div class="mdl-grid cover-main">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <h2 style="color:white; text-align:center;"><?php echo $instruktur->crs_name?></h2>
            <div style="text-align:center">
                <img src="<?php echo base_url();?>/res/assets/images/uploads/<?php echo $instruktur->usr_picture;?>" class="material-icons mdl-list__item-avatar" style="width: 100px; height: 100px;">
                <h3 style="color:white;"><?php echo $instruktur->usr_firstname." ".$instruktur->usr_lastname?></h3>
            </div>
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
            <div class="mdl-card mdl-shadow--2dp">
                <div class="mdl-card__title" style="display: block">
                    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone" >
                        <table id="dataTables-example" style="text-align:center;">
                            <thead>
                            <tr style="text-align:center;">
                                <th style="text-align:center;">Nama Siswa</th>
                                <th style="text-align:center;">Jenis Kelamin</th>
                                <th style="text-align:center;">Usia</th>
                                <th style="text-align:center;">IPK</th>
                                <?php
                                $j=1;
                                foreach($ar_kuis as $z):
                                ?>
                                <th style="text-align:center;">Kuis <?php echo $j; ?></th>
                                <?php $j++;
                                endforeach ?>

                                <th style="text-align:center;">Learner Activity Counter (temp)</th>
                                <th style="text-align:center;">Status</th>

                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            foreach($ar as $c): ?>
                                <tr class="odd gradeX" style="background-color: #363636;">
                                    <td style="text-align:center;"><?php echo $c->usr_firstname." ". $c->usr_lastname?></td>
                                    <td style="text-align:center;"><?php if($c->usr_jk == "1") {
                                            echo "Pria";
                                        } elseif ($c->usr_jk == "2"){
                                            echo "Wanita";
                                        }?>
                                    </td>
                                    <td style="text-align:center;"><?php
                                                $from = new DateTime($c->usr_tgllahir);
                                                $to   = new DateTime('today');
                                                echo $from->diff($to)->y;?>
                                    </td>
                                    <td style="text-align:center;"><?php if($c->usr_gpa != NULL) {
                                            echo $c->usr_gpa;
                                        } elseif ($c->usr_gpa == NULL){
                                            echo "-";
                                        }?></td>
                                    <?php
                                    $k=1;
                                    foreach($ar_kuis as $s):
                                    ?>
                                    <td style="text-align:center;"><?php echo $s->ass_result;?></td>
                                    <?php endforeach ?>

                                    <td style="text-align:center;"><?php echo $total;?></td>
                                    <td style="text-align:center;"><?php
                                            if ($count != 3){
                                                if($c->usr_gpa == NULL){
                                                    echo 'Belum dapat diprediksi, IPK siswa kosong';
                                                }else{
                                                    echo 'Belum dapat diprediksi, jumlah kuis harus > 2';
                                                }
                                            } else {
                                                echo 'panggil fungsi naive bayes';
                                            }
                                        ?>
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
