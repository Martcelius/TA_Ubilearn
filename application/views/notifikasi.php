<?php use Illuminate\Database\Capsule\Manager as DB;?>
<main class="mdl-layout__content">
<div class="mdl-grid cover-main">
    <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
            <div class="">
                <div class="">
                    <h2 style="color:white">Notifikasi</h2>
                    <h3 style="color:white"><?php echo $this->session->userdata('firstname')." ".$this->session->userdata('lastname')?></h3>
                </div>
            </div>
    </div>
</div>    
    <!-- Table-->
    <?php
        $notifs = M_Notification::where('usr_id', '=', $this->session->userdata('id'))->get();
    ?>
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--4-col-phone ">
            <table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp projects-table">
                <thead>
                    <tr>
                        <th class="mdl-data-table__cell--non-numeric">Semua Notifikasi</th>
                    </tr>
                </thead>
                <tbody>
                <?php foreach($notifs as $notif): ?>
                    <tr>
                        <td class="mdl-data-table__cell--non-numeric"><?php echo time_ago($notif->ntf_time->format('U'))."&nbsp;&nbsp;&nbsp;&nbsp;". $notif->ntf_instructor." ".$notif->ntf_message?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</main>