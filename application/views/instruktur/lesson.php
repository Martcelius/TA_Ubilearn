<main class="mdl-layout__content">
    <div class="mdl-grid cover-main">
        <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
            <div class="">
                <div class="">
                </div>
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

        <div class="mdl-cell mdl-cell--9-col">
            <div class="mdl-grid">
                <!-- FLASH DATA -->
                <?php if ($this->session->flashdata('data_tersimpan') == TRUE): ?>
                    <div role="alert"
                         class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                        <button aria-label="Close" data-dismiss="alert" class="close" type="button">
                            <span
                                    aria-hidden="true" class="fa fa-times"></span>
                        </button>
                        <p><?php echo $this->session->flashdata('data_tersimpan') ?></p>
                    </div>
                <?php endif; ?>
                <?php if ($this->session->flashdata('data_lesson') == TRUE): ?>
                    <div role="alert"
                         class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                        <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span
                                    aria-hidden="true" class="fa fa-times"></span>
                        </button>
                        <p><?php echo $this->session->flashdata('data_lesson') ?></p>
                    </div>
                <?php endif; ?>
                <?php if ($this->session->flashdata('ass_delete_success') == TRUE): ?>
                    <div role="alert"
                         class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                        <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span
                                    aria-hidden="true" class="fa fa-times"></span>
                        </button>
                        <p><?php echo $this->session->flashdata('ass_delete_success') ?></p>
                    </div>
                <?php endif; ?>

                <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                    <div class="mdl-card mdl-shadow--2dp">
                        <div class="mdl-card__title" style="display: block">
                            <div>
                                <a href="<?php echo site_url('instruktur/add_lesson/' . $id) ?>">
                                    <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">
                                        Tambah
                                    </button>
                                </a>
                                <button class="btn-dd" style="float: right;" type="button" data-toggle="collapse"
                                        data-target="#demo"><i class="fa fa-bars"></i></button>
                            </div>
                            <div class="mdl-grid">
                                <div class="mdl-cell mdl-cell--1-col">
                                    <div id="icon">
                                        <img src="<?php echo base_url(); ?>res/assets/images/lesson.png">
                                    </div>
                                </div>
                                <div class="mdl-cell mdl-cell--11-col">
                                    <h2 class="mdl-card__title-text">Lesson</h2>
                                    <hr style="background-color: white;">
                                    <p style="color: white;">Materi pembelajaran di
                                        course untuk siswa</p>
                                </div>
                            </div>
                        </div>
                        <div id="demo" class="collapse">
                            <div class="mdl-card__supporting-text">
                                <ul class="demo-list-icon mdl-list">
                                    <?php
                                    $num = 1;
                                    foreach ($datalesen as $lesen) : ?>
                                        <li class="mdl-list__item">
                                    <span class="mdl-list__item-primary-content">
                                        <span style="margin-right: 25px;"><?php echo $num++ ?> </span>
                                        <i class="material-icons mdl-list__item-icon">label</i>
                                        <?php echo 'Materi - ' . $lesen->lsn_name; ?>
                                    </span>
                                            <b class="mdl-list__item-secondary-action" style="margin-right:50px"></b>
                                            <a href="<?php echo site_url('instruktur/content/' . $lesen->lsn_id) ?>">
                                                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue"
                                                        style="margin:2px;">
                                                    <i class="material-icons">add</i>
                                                    Masuk
                                                </button>
                                            </a>
                                            <a href="<?php echo site_url('instruktur/edit_lesson/' . $lesen->lsn_id) ?>">
                                                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-yellow"
                                                        style="margin:2px;">
                                                    <i class="material-icons">drafts</i>
                                                    Edit
                                                </button>
                                            </a>
                                            <a href="<?php echo site_url('instruktur/delete_lesson/' . $lesen->lsn_id) ?>">
                                                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-red"
                                                        style="margin:2px;"
                                                        onclick="return confirm('Anda yakin untuk menghapus?');">
                                                    <i class="material-icons">delete</i>
                                                    Hapus
                                                </button>
                                            </a>
                                        </li>
                                    <?php endforeach; ?>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <div class="mdl-card mdl-shadow--2dp">
                    <div class="mdl-card__title" style="display: block">
                        <div>
                            <a href="<?php echo site_url('instruktur/add_assesment/' . $id) ?>">
                                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">
                                    Tambah
                                </button>
                            </a>
                            <button class="btn-dd" style="float: right;" type="button" data-toggle="collapse"
                                    data-target="#demo2"><i class="fa fa-bars"></i></button>
                        </div>
                        <div class="mdl-grid">
                            <div class="mdl-cell mdl-cell--1-col">
                                <div id="icon">
                                    <img src="<?php echo base_url(); ?>res/assets/images/assesment.png">
                                </div>
                            </div>
                            <div class="mdl-cell mdl-cell--11-col">
                                <h2 class="mdl-card__title-text">Assessment</h2>
                                <hr style="background-color: white;"/>
                                <p style="color: white">Assessment terdiri dari Kuis, Pre-test, Remedial dan
                                    Exercise</p>
                            </div>
                        </div>
                    </div>
                    <div id="demo2" class="collapse">
                        <div class="mdl-card__supporting-text">
                            <ul class="demo-list-icon mdl-list">
                                <?php
                                $num = 1;
                                $i = 0;
                                foreach ($listAss as $ass) : ?>
                                    <li class="mdl-list__item">
                                    <span class="mdl-list__item-primary-content">
                                        <span style="margin-right: 25px;"><?php echo $num++ ?> </span>
                                        <i class="material-icons mdl-list__item-icon mdl-badge mdl-badge--overlap"
                                           data-badge="<?php echo $jumSoal[$i] ?>" title="Jumlah Soal">description</i>
                                        <?php echo $ass->ass_tipe . ' - ' . $ass->ass_name; ?>
                                    </span>
                                        <b class="mdl-list__item-secondary-action" style="margin-right:50px"></b>
                                        <a href="<?php echo site_url('instruktur/assesment/result_siswa_assesment/' . $ass->ass_id) ?>">
                                            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue"
                                                    style="margin:2px;">
                                                <i class="material-icons">add</i>
                                                Masuk
                                            </button>
                                        </a>
                                        <a href="<?php echo site_url('instruktur/edit_assesment/' . $ass->ass_id) ?>">
                                            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-yellow"
                                                    style="margin:2px;">
                                                <i class="material-icons">drafts</i>
                                                Edit
                                            </button>
                                        </a>
                                        <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-red"
                                                style="margin:2px;" onclick="deleteAss(<?php echo $ass->ass_id ?>)">
                                            <i class="material-icons">delete</i>
                                            Hapus
                                        </button>

                                    </li>
                                    <?php $i++; endforeach; ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <div class="mdl-card mdl-shadow--2dp">
                    <div class="mdl-card__title" style="display: block">
                        <div>
                            <a href="<?php echo site_url('instruktur/add_assignment/' . $id) ?>">
                                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">
                                    Tambah
                                </button>
                            </a>
                            <button class="btn-dd" style="float: right;" type="button" data-toggle="collapse"
                                    data-target="#demo3"><i class="fa fa-bars"></i></button>
                        </div>
                        <div class="mdl-grid">
                            <div class="mdl-cell mdl-cell--1-col">
                                <div id="icon">
                                    <img src="<?php echo base_url(); ?>res/assets/images/assignment.png">
                                </div>
                            </div>
                            <div class="mdl-cell mdl-cell--11-col">
                                <h2 class="mdl-card__title-text">Assignment</h2>
                                <hr style="background-color: white;"/>
                                <p style="color: white">Tugas dikerjakan sesuai dengan tenggat waktu yang diberikan</p>
                            </div>
                        </div>
                    </div>
                    <div id="demo3" class="collapse">
                        <div class="mdl-card__supporting-text">
                            <ul class="demo-list-icon mdl-list">
                                <?php
                                $num = 1;
                                foreach ($dataasing as $asing) : ?>
                                    <li class="mdl-list__item">
                                      <span class="mdl-list__item-primary-content">
                                          <span style="margin-right: 25px;"><?php echo $num++ ?> </span>
                                          <i class="material-icons mdl-list__item-icon">label</i>
                                          <?php echo 'Materi - ' . $asing->asg_name ?>
                                  </span>
                                        <b class="mdl-list__item-secondary-action" style="margin-right:50px"></b>
                                        <a href="<?php echo site_url('instruktur/assignment/result_siswa_assignment/' . $asing->asg_id) ?>">
                                            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue"
                                                    style="margin:2px;">
                                                <i class="material-icons">add</i>
                                                Masuk
                                            </button>
                                        </a>
                                        <a href="<?php echo site_url('instruktur/edit_assignment/' . $asing->asg_id) ?>">
                                            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-yellow"
                                                    style="margin:2px;">
                                                <i class="material-icons">drafts</i>
                                                Edit
                                            </button>
                                        </a>
                                        <a href="<?php echo site_url('instruktur/delete_assignment/' . $asing->asg_id) ?>">
                                            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-red"
                                                    style="margin:2px;"
                                                    onclick="return confirm('Anda yakin untuk menghapus?');">
                                                <i class="material-icons">delete</i>
                                                Hapus
                                            </button>
                                        </a>
                                    </li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="mdl-cell mdl-cell--3-col">
            <div class="mdl-card mdl-shadow--2dp trending">
                <div class="mdl-card__title">
                    <h2 class="mdl-card__title-text">Informasi Course</h2>
                </div>
                <div class="mdl-card__supporting-text">
                    <ul class="mdl-list">
                        <li class="mdl-list__item">
                            Course : <?php echo $dataInstruktur->crs_name ?>
                        </li>
                        <li class="mdl-list__item">
                            Instruktur
                            : <?php echo $dataInstruktur->usr_firstname ?> <?php echo $dataInstruktur->usr_lastname ?>
                        </li>
                        <li class="mdl-list__item">
                            Jumlah siswa: <?php echo $jumlah_siswa ?>
                        </li>
                        <li class="mdl-list__item">
                            Jumlah lesson: <?php echo $jumlah ?>
                        </li>
                    </ul>

                    <hr style="background-color: white;">
                    <h4 style="color: white;margin-left: 10px;">Siswa dalam Course:</h4>
                    <ul class="mdl-list">
                        <?php foreach ($dataSiswa as $siswa): ?>
                            <li class="mdl-list__item">
                                <?php echo $siswa->usr_firstname . " " . $siswa->usr_lastname ?>
                            </li>
                        <?php endforeach; ?>
                        </span>
                    </ul>
                </div>
            </div>
            <?php if ($cek->count() != 0): ?>
                <div class="mdl-card mdl-shadow--2dp trending" style="margin-top: 10px;">
                    <div class="mdl-card__title">
                        <h2 class="mdl-card__title-text">Learner</h2>
                    </div>
                    <div class="mdl-card__supporting-text">
                        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-search"></i>
                                </div>
                                <input type="text" class="form-control" id="myInput" onkeyup="myFunction()"
                                       placeholder="Search for names.." title="Type in a name">
                            </div>

                            <table id="myTable" class="mdl-data-table mdl-js-data-table mdl-shadow--2dp"
                                   style="text-align:center;">
                                <thead>
                                <tr style="text-align:center;">
                                    <th style="text-align:center;">Nama Siswa</th>
                                    <th style="text-align:center;">Status</th>

                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                foreach ($ar as $c): ?>
                                    <tr class="odd gradeX" style="background-color: #363636;">
                                        <td style="text-align:center;"><?php echo $c->usr_firstname . " " . $c->lastname ?></td>
                                        <td style="text-align:center;">
                                            <a href="<?php echo site_url('instruktur/at_risk/' . $c->crs_id . '/' . $c->usr_id) ?>">
                                                <button class="btn btn-info" style="margin:2px;">
                                                    Lihat
                                                </button>
                                            </a></td>
                                    </tr>
                                <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            <?php endif ?>

        </div>

</main>
<script type="text/javascript">
    function deleteAss(ass_id) {
        if (confirm("Anda yakin ingin menghapusnya ?")) {
            window.location.href = '<?php echo base_url() . 'instruktur/Assesment/delete_assesment/'?>' + ass_id;
        }
        else {
        }
    }
</script>
<script>
    function myFunction() {
        var input, filter, table, tr, td, i;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
</script>


