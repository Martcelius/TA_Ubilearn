<main class="mdl-layout__content">
<div class="mdl-grid cover-main">
    <div class="mdl-cell mdl-cell--12-col">
        <div class="mdl-grid">
            <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
                <h2 style="color:white">Judul Forum</h2>
                <br>
            </div>
        </div>
    </div>
</div>

<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">     
        <form class="navbar-form navbar-left" role="search">
            <div class="input-group">
                <input type="text" name="search" class="form-control" placeholder="Cari..." style="width:320px">
                    <span class="input-group-btn">
                        <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                            <i class="fa fa-search">
                            </i>
                        </button>
                    </span>
            </div>
        </form>
        <div style="text-align : right; margin-top : 5px">
           <a href="<?php echo site_url('siswa/add_thread_siswa')?>"><button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">Buat Thread</button></a>
        </div>
    </div>
</div>

<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <div class="col-md-9" style="color: #ffffff; ">  
                <table class="table table-hover" id="dataTables-example" style="">
                    <thead style="background-color:#3c8dbc;">
                        <tr>
                            <td style="color : #ffffff; font-size: 20px">
                                Judul Lesson : 
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:#ffffff">
                            <td>
                                <ul class="nav nav-pills nav-stacked">
                                    <?php foreach ($dataThread as $thread):?>
                                        <li>
                                            <a href="<?php echo site_url('siswa/detail_thread_siswa')?>">
                                                <?php echo $thread->cft_title?>
                                                <span style="color : #8a8a8a; float:right">
                                                    <?php echo $thread->cft_timecreated?>
                                                </span>
                                                <br>
                                                <span style="color: #00a65a; font-size : 14px">
                                                    Oleh : <?php echo $thread->usr_username?>
                                                </span>
                                                <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab" style="float:right;margin-top:10px; background-color:red;"><i class="material-icons">delete</i></button>
                                                <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--mini-fab" style="float:right;margin-top:10px; margin-right:10px; background-color:green;"><i class="material-icons">edit</i></button>
                                                <br>
                                                <span class="description" style="color : grey; font-size : 14px">
                                                    Kategori : 
                                                    <span class="label label-success">
                                                        Teu Dicalana
                                                    </span>
                                                </span>
                                            </a>
                                        </li>
                                    <?php endforeach;?>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="col-md-3">      
                <div class="box box-solid box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Rekomendasi Learner</h3>
                    </div>
                    <div class="box-footer no-padding">
                        <ul class="nav nav-pills nav-stacked">
                            <li>
                                <a href="#">
                                    <span class="mdl-list__item-primary-content">
                                        <img class="img-circle" style="width:50px;height:50px; float:left" src="../res/assets/images/icon.png" alt="User Image">
                                        <span style="margin-left:20px;color:black;">Atcheng Supratman</span>
                                        <br>
                                        <span style="margin-left:20px;color:black;font-size:14px;">1301140249</span>
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="mdl-list__item-primary-content">
                                        <img class="img-circle" style="width:50px;height:50px; float:left" src="../res/assets/images/icon.png" alt="User Image">
                                        <span style="margin-left:20px;color:black;">Si Belegag</span>
                                        <br>
                                        <span style="margin-left:20px;color:black;font-size:14px;">1301140249</span>
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</main>

<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable();
    });
</script>