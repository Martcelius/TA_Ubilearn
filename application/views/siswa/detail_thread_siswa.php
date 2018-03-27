<?php use Illuminate\Database\Capsule\Manager as DB; ?>

<main class="mdl-layout__content">
<div class="mdl-grid cover-main">
    <div class="mdl-cell mdl-cell--12-col">
        <div class="mdl-grid">
            <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
                <h2 style="color:white"><?php echo $dataforumthread->cfr_title ?></h2>
                <br>
            </div>
        </div>
    </div>
</div>

<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone" style="margin-left:30px; margin-bottom:0px; ">
        <div class="box box-solid box-primary">
            <div class="box-header">
                <h3 class="box-title" style="font-size:20px">Forum Diskusi</h3>
            </div>
            <div class="box-body">
                <h3 style="margin-top:3px; font-size : 25px;"><?php echo $dataforumthread->cft_title ?></h3>
                <p class="text-muted" style="font-size:15px;">
                    Post pada : <?php echo $dataforumthread->cft_timecreated ?>
                </p>
                <hr/>
                <div class="col-md-2" style="text-align: center;"> 
                    <img class="img-circle" style="width:100px;height: 100px;" src="<?php echo base_url();?>/res/assets/images/uploads/<?php echo $dataforumthread->usr_picture;?>" alt="User Avatar">
                    <hr style="margin-top: 10px;margin-bottom: 10px;" />
                    <div style="margin-left: 10px;">
                        <p class="text-muted">
                            Author: <?php echo $dataforumthread->usr_firstname?> <?php echo $dataforumthread->usr_lastname ?> 
                        </p>
                        <hr/>
                    </div>
                </div>

                <div class="col-md-10" style="text-align: justify;">
                    <?php echo $dataforumthread->cft_content ?>
                </div>

                <div class="col-md-12" style="text-align: justify;">
                    <button class="btn btn-primary" style="float:right;" id="btn_komentar"><i class="fa fa-comment"></i> Komentar</button>
                </div>
            </div>
            
            <div id="komentarr" style="display:none">
                <br>
                <br>
                <div class="mdl-grid">
                    <div class="col-md-1" style="text-align: center;">
                        <img class="img-circle" src="<?php echo base_url();?>/res/assets/images/uploads/<?php echo $this->session->userdata('foto');?>" style="width:75px;height:75px;" alt="User Image">
                    </div>
                    <div class="col-md-11">
                        <form action="<?php echo site_url('siswa/thread/insert_komentar_reply/'.$dataforumthread->cft_id) ?>" class="form-horizontal" method="post">
                            <div class="form-group">
                                <label>Beri Komentar</label>
                                <textarea name="forum_komentarr" class="forum_komentarr"></textarea>
                            </div>
                            <button class="btn btn-primary pull-right" id="balaskomentar" style="float:right; margin-right:5px">
                                <i class="fa fa-reply">
                                </i>
                                Balas
                            </button>
                        </form>
                        <button class="btn btn-danger pull-right" id="btn_batalkomentar" style="float:right; margin-right:5px">
                            <i class="fa fa-close"></i>
                            Batal
                        </button>
                    </div>
                </div>
            </div>   
        </div>
    </div>
</div>


<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone" style="margin-left:35px; margin-top:0px; margin-bottom:10px">
          <h3 style="color:white;margin-top:0px; margin-bottom:0px; ">Kolom Komentar</h3>
    </div>
</div>

<?php
     $datareplythread= M_Course_Forum_Thread_Reply::leftJoin('users','users.usr_id','=','course_forum_thread_reply.usr_id')
                            ->where('course_forum_thread_reply.cft_id',$dataforumthread->cft_id)
                            ->get();
                            //dd($datareplythread);
?>
<?php $i = 0; $j = 1;?>
<?php foreach($datareplythread as $replythread): ?>

<?php 
    $countreply = M_Course_Forum_Thread_Reply::leftJoin('course_forum_thread','course_forum_thread.cft_id','=','course_forum_thread_reply.cft_id')
                                            ->where('course_forum_thread.cft_id',$dataforumthread->cft_id)
                                            ->where('course_forum_thread_reply.usr_id',$replythread->usr_id)
                                            ->get();
    $jumlahreply = $countreply->count('usr_id');
    $countreplyreply = M_Course_Forum_Thread_Reply_Reply::leftJoin('course_forum_thread_reply','course_forum_thread_reply.ftr_id','=','course_forum_thread_reply_reply.ftr_id')
                                            ->leftJoin('course_forum_thread','course_forum_thread.cft_id','=','course_forum_thread_reply.cft_id')
                                            ->where('course_forum_thread.cft_id',$dataforumthread->cft_id)
                                            ->where('course_forum_thread_reply_reply.usr_id',$replythread->usr_id)
                                            ->get();
    $jumlahreplyreply = $countreplyreply->count('usr_id');
    $countreplyreplyreply = M_Course_Forum_Thread_Reply_Reply_Reply::leftJoin('course_forum_thread_reply_reply','course_forum_thread_reply_reply.trr_id','=','course_forum_thread_reply_reply_reply.trr_id')
                                            ->leftJoin('course_forum_thread_reply','course_forum_thread_reply.ftr_id','=','course_forum_thread_reply_reply.ftr_id')
                                            ->leftJoin('course_forum_thread','course_forum_thread.cft_id','=','course_forum_thread_reply.cft_id')
                                            ->where('course_forum_thread.cft_id',$dataforumthread->cft_id)
                                            ->where('course_forum_thread_reply_reply_reply.usr_id',$replythread->usr_id)
                                            ->get();
    $jumlahreplyreplyreply = $countreplyreplyreply->count('usr_id');
    $sumreply = $jumlahreply+$jumlahreplyreply+$jumlahreplyreplyreply;

    $getrating = M_Course_Forum_Thread_Reply::where('course_forum_thread_reply.ftr_id','=',$replythread->ftr_id)->first(['ftr_ratingsum','ftr_ratingcount']);
    $ftrratingsum = $getrating->ftr_ratingsum;
    $ftrratingcount = $getrating->ftr_ratingcount;
    if($ftrratingcount == 0)
    {
        $ftrratingcount = 1;
        $avgrating1 = $ftrratingsum/$ftrratingcount;
    }
    else
    {
        $avgrating1 = $ftrratingsum/$ftrratingcount;
    }  
?>

<?php $i++;?>
<?php $j=1;?>
<?php $k=0;?>
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone" style="margin-left : 30px; margin-bottom : 0px;">
            <div class="box box-solid box-primary">
                <div class="box-body" id="boxkomen">
                    <!-- User Block -->
                    <div class="user-block">
                    <?php
                        if ($replythread->usr_level == 3) 
                        { ?>
                            <img class="img-circle" style="width:75px;height:75px; float:left" src="<?php echo base_url();?>/res/assets/images/uploads/<?php echo $replythread->usr_picture;?>" alt="User Image">
                            <span class="username">
                                <a href="#" style="font-size:20px;">
                                    <?php echo $replythread->usr_firstname ?> <?php echo $replythread->usr_lastname ?>
                                </a>
                            </span>
                            <span class="description" style="font-size:14px;">
                                Jumlah Post : <?php echo $sumreply; ?>
                            </span>
                            <span class="description" style="font-size:14px;">
                                Comment pada :  <?php echo $replythread->ftr_timecreated ?>
                            </span>
                    <?php 
                        }
                        else
                        {
                        ?>
                            <img class="img-circle" style="width:75px;height:75px; float:left" src="<?php echo base_url();?>/res/assets/images/uploads/<?php echo $replythread->usr_picture;?>" alt="User Image">
                            <span class="username">
                                <a href="#" style="font-size:20px;">
                                    <?php echo $replythread->usr_firstname ?> <?php echo $replythread->usr_lastname ?>
                                </a>
                            </span>
                            <span class="description" style="font-size:20px;float:right; margin-right: 5px; font-color:yellow;">
                                Rating : <i class="fa fa-star checked" style="font-size:24px;"><?php echo number_format((float)$avgrating1,2,'.',''); ?></i>
                            </span>
                            <span class="description" style="font-size:14px;">
                                Jumlah Post : <?php echo $sumreply; ?>
                            </span>
                            <span class="description" style="font-size:14px;">
                                Comment pada :  <?php echo $replythread->ftr_timecreated ?>
                            </span>
                    <?php 
                        } ?> 
                        
                    </div>

                    <hr/>

                    <!-- Isi Teks -->
                    <p style="text-align: justify;">
                        <?php echo $replythread->ftr_content ?>
                    </p>

                    <!-- Social sharing buttons -->

                    <?php 
                        if($this->session->userdata('id') == $replythread->usr_id)
                        {    
                        ?>
                        <span class="pull-right">
                            <button class="btn btn-primary btn_reply" id="btn_reply<?php echo $j;?><?php echo $i;?>" onclick=""><i class="fa fa-comment"></i> Komentar</button>
                            <a href="<?php echo site_url('siswa/thread/delete_komentar_reply/'.$replythread->ftr_id.'/'.$dataforumthread->cft_id)?>">
                                <button class="btn btn-danger" onclick="return confirm('Anda yakin untuk menghapus?');"><i class="fa fa-trash"></i></button>
                            </a>
                        </span>
                        
                    <?php 
                        }
                        else
                        {
                        ?>
                        <span class="pull-right">
                        <?php $dataratingreply = DB::table('rating_reply')->where('rating_reply.ftr_id',$replythread->ftr_id)->first(); ?>
                        <?php 
                            if ($dataratingreply->ftr_id == $replythread->ftr_id and $dataratingreply->usr_id == $this->session->userdata('id'))
                            { ?>
                                <button class="btn btn-primary btn_reply" id="btn_reply<?php echo $j;?><?php echo $i;?>" onclick=""><i class="fa fa-comment"></i> Komentar</button>
                        <?php 
                            }
                            else
                            { ?>
                            <?php
                                if ($replythread->usr_level == 3) 
                                { ?> 
                                    <button class="btn btn-primary btn_reply" id="btn_reply<?php echo $j;?><?php echo $i;?>" onclick=""><i class="fa fa-comment"></i> Komentar</button>             
                            <?php 
                                }
                                else
                                { ?> 
                                <span class="dropdown">
                                    <button class="btn btn-warning" type="button" data-toggle="dropdown"><i class="fa fa-star"></i> Rate
                                    <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="<?php $k=1; echo site_url('siswa/thread/insert_rating_reply/'.$replythread->ftr_id.'/'.$dataforumthread->cft_id.'/'.$k) ?>" class="rateStar" >
                                                <span class="text-muted">
                                                    <span class="fa fa-star checked"></span>
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="<?php $k=2; echo site_url('siswa/thread/insert_rating_reply/'.$replythread->ftr_id.'/'.$dataforumthread->cft_id.'/'.$k) ?>" class="rateStar" >
                                                <span class="text-muted">
                                                    <span class="fa fa-star checked"></span>
                                                    <span class="fa fa-star checked"></span>
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="<?php $k=3; echo site_url('siswa/thread/insert_rating_reply/'.$replythread->ftr_id.'/'.$dataforumthread->cft_id.'/'.$k) ?>" class="rateStar" >
                                                <span class="text-muted">
                                                    <span class="fa fa-star checked"></span>
                                                    <span class="fa fa-star checked"></span>
                                                    <span class="fa fa-star checked"></span>
                                                </span>
                                            </a>
                                        </li>
                                    </ul>
                                </span>
                                <button class="btn btn-primary btn_reply" id="btn_reply<?php echo $j;?><?php echo $i;?>" onclick=""><i class="fa fa-comment"></i> Komentar</button>
                            <?php 
                                } ?>
                        <?php 
                            } ?>
                        </span>
                    <?php 
                        } ?>

                    

                    <!-- Beri Komentar -->
                    <div id="reply<?php echo $j;?><?php echo $i;?>" style="display:none">
                        <br>
                        <br>
                        <div class="mdl-grid">
                            <div class="col-md-1" style="text-align: center;">
                                <img class="img-circle" src="<?php echo base_url();?>/res/assets/images/uploads/<?php echo $this->session->userdata('foto');?>" style="width:75px;height:75px;" alt="User Image">
                            </div>
                            <div class="col-md-11">
                                <form action="<?php echo site_url('siswa/thread/insert_komentar_reply_reply/'.$replythread->ftr_id.'/'.$dataforumthread->cft_id)?>" class="form-horizontal" method="post">
                                    <div class="form-group">
                                        <label>Beri Komentar</label>
                                        <textarea class="forum_komentar1" id="forum_komentar1<?php echo $i;?>"  name="forum_komentar1"></textarea>
                                    </div>
                                    <button class="btn btn-primary pull-right" id="balaskomentar1" style="float:right; margin-right:5px">
                                        <i class="fa fa-reply">
                                        </i>
                                        Balas
                                    </button>
                                </form>
                                <button class="btn btn-danger pull-right btn_batal_reply" id="btn_batal_reply<?php echo $j;?><?php echo $i;?>" style="float:right; margin-right:5px">
                                    <i class="fa fa-close"></i>
                                    Batal
                                </button>
                            </div>
                        </div>
                    </div>
                    <!-- Balasan Komentar -->
                    <?php
                        $datareply2thread= M_Course_Forum_Thread_Reply_Reply::leftJoin('users','users.usr_id','=','course_forum_thread_reply_reply.usr_id')
                                                ->where('course_forum_thread_reply_reply.ftr_id',$replythread->ftr_id)
                                                ->get();
                                                //dd($datareplythread);
                    ?>

                    <?php foreach($datareply2thread as $reply2thread): ?>
                    
                    <?php 
                         $countreply = M_Course_Forum_Thread_Reply::leftJoin('course_forum_thread','course_forum_thread.cft_id','=','course_forum_thread_reply.cft_id')
                                                ->where('course_forum_thread.cft_id',$dataforumthread->cft_id)
                                                ->where('course_forum_thread_reply.usr_id',$replythread->usr_id)
                                                ->get();
                        $jumlahreply = $countreply->count('usr_id');
                        $countreplyreply = M_Course_Forum_Thread_Reply_Reply::leftJoin('course_forum_thread_reply','course_forum_thread_reply.ftr_id','=','course_forum_thread_reply_reply.ftr_id')
                                                ->leftJoin('course_forum_thread','course_forum_thread.cft_id','=','course_forum_thread_reply.cft_id')
                                                ->where('course_forum_thread.cft_id',$dataforumthread->cft_id)
                                                ->where('course_forum_thread_reply_reply.usr_id',$replythread->usr_id)
                                                ->get();
                        $jumlahreplyreply = $countreplyreply->count('usr_id');
                        $countreplyreplyreply = M_Course_Forum_Thread_Reply_Reply_Reply::leftJoin('course_forum_thread_reply_reply','course_forum_thread_reply_reply.trr_id','=','course_forum_thread_reply_reply_reply.trr_id')
                                                ->leftJoin('course_forum_thread_reply','course_forum_thread_reply.ftr_id','=','course_forum_thread_reply_reply.ftr_id')
                                                ->leftJoin('course_forum_thread','course_forum_thread.cft_id','=','course_forum_thread_reply.cft_id')
                                                ->where('course_forum_thread.cft_id',$dataforumthread->cft_id)
                                                ->where('course_forum_thread_reply_reply_reply.usr_id',$replythread->usr_id)
                                                ->get();
                        $jumlahreplyreplyreply = $countreplyreplyreply->count('usr_id');
                        $sumreplyreply = $jumlahreply+$jumlahreplyreply+$jumlahreplyreplyreply;

                        $getrating = M_Course_Forum_Thread_Reply_Reply::where('course_forum_thread_reply_reply.trr_id','=',$reply2thread->trr_id)->first(['trr_ratingsum','trr_ratingcount']);
                        $trrratingsum = $getrating->trr_ratingsum;
                        $trrratingcount = $getrating->trr_ratingcount;

                        if($trrratingcount == 0)
                        {
                            $trrratingcount = 1;
                            $avgrating2 = $trrratingsum/$trrratingcount;
                        }
                        else
                        {
                            $avgrating2 = $trrratingsum/$trrratingcount;
                        }
                    ?>

                    <?php $j++;?>
                        <div id="balasankomentar1" style="padding-left:60px">
                            <br>
                            <br>
                            <?php
                                if ($reply2thread->usr_level == 3) 
                                { ?>
                                    <div class="user-block">
                                        <img class="img-circle" style="width:75px;height:75px; float:left" src="<?php echo base_url();?>/res/assets/images/uploads/<?php echo $reply2thread->usr_picture;?>" alt="User Image">
                                        <span class="username">
                                            <a href="#" style="font-size:20px;">
                                                <?php echo $reply2thread->usr_firstname?> <?php echo $reply2thread->usr_lastname?>
                                            </a>
                                        </span>
                                        <span class="description" style="font-size:14px;">
                                            Jumlah Post : <?php echo $sumreplyreply ?>
                                        </span>
                                        <span class="description" style="font-size:14px;">
                                            Comment pada : <?php echo $reply2thread->trr_timecreated?>
                                        </span>
                                    </div>
                            <?php 
                                }
                                else
                                { ?>
                                    <div class="user-block">
                                        <img class="img-circle" style="width:75px;height:75px; float:left" src="<?php echo base_url();?>/res/assets/images/uploads/<?php echo $reply2thread->usr_picture;?>" alt="User Image">
                                        <span class="username">
                                            <a href="#" style="font-size:20px;">
                                                <?php echo $reply2thread->usr_firstname?> <?php echo $reply2thread->usr_lastname?>
                                            </a>
                                        </span>
                                        <span class="description" style="font-size:20px;float:right; margin-right: 5px; font-color:yellow;">
                                            Rating : <i class="fa fa-star checked" style="font-size:24px;"><?php echo number_format((float)$avgrating2,2,'.',''); ?></i>
                                        </span>
                                        <span class="description" style="font-size:14px;">
                                            Jumlah Post : <?php echo $sumreplyreply ?>
                                        </span>
                                        <span class="description" style="font-size:14px;">
                                            Comment pada : <?php echo $reply2thread->trr_timecreated?>
                                        </span>
                                    </div>
                            <?php 
                                } ?>
                                <hr/>

                            <!-- Isi Teks -->
                            <p style="text-align: justify;">
                                <?php echo $reply2thread->trr_content ?>
                            </p>

                            <!-- Social sharing buttons -->
                            <?php 
                                if($this->session->userdata('id') == $reply2thread->usr_id)
                                {    
                                ?>
                                <span class="pull-right">                                
                                    <button class="btn btn-primary btn_reply_reply" id="btn_reply_reply<?php echo $j;?><?php echo $i;?>"><i class="fa fa-comment"></i> Komentar</button>
                                    <a href="<?php echo site_url('siswa/thread/delete_komentar_reply_reply/'.$reply2thread->trr_id.'/'.$dataforumthread->cft_id)?>">
                                        <button class="btn btn-danger" onclick="return confirm('Anda yakin untuk menghapus?');"><i class="fa fa-trash"></i></button>
                                    </a>
                                </span>
       
                            <?php 
                                }
                                else
                                {
                                ?>
                                <span class="pull-right">
                                <?php $dataratingreply2 = DB::table('rating_reply_reply')->where('rating_reply_reply.trr_id',$reply2thread->trr_id)->first(); ?>
                                <?php 
                                    if ($dataratingreply2->trr_id == $reply2thread->trr_id and $dataratingreply2->usr_id == $this->session->userdata('id'))
                                    { ?>
                                        <button class="btn btn-primary btn_reply_reply" id="btn_reply_reply<?php echo $j;?><?php echo $i;?>"><i class="fa fa-comment"></i> Komentar</button>
                                <?php 
                                    }
                                    else
                                    { ?>
                                    <?php 
                                        if ($reply2thread->usr_level == 3)
                                        { ?>
                                            <button class="btn btn-primary btn_reply_reply" id="btn_reply_reply<?php echo $j;?><?php echo $i;?>"><i class="fa fa-comment"></i> Komentar</button>
                                    <?php 
                                        }
                                        else
                                        { ?>
                                            <span class="dropdown">
                                                <button class="btn btn-warning" type="button" data-toggle="dropdown"><i class="fa fa-star"></i> Rate
                                                <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a href="<?php $k=1; echo site_url('siswa/thread/insert_rating_reply_reply/'.$reply2thread->trr_id.'/'.$dataforumthread->cft_id.'/'.$k) ?>" class="rateStar">
                                                            <span class="text-muted">
                                                                <span class="fa fa-star checked"></span>
                                                            </span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<?php $k=2; echo site_url('siswa/thread/insert_rating_reply_reply/'.$reply2thread->trr_id.'/'.$dataforumthread->cft_id.'/'.$k) ?>" class="rateStar" >
                                                            <span class="text-muted">
                                                                <span class="fa fa-star checked"></span>
                                                                <span class="fa fa-star checked"></span>
                                                            </span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<?php $k=3; echo site_url('siswa/thread/insert_rating_reply_reply/'.$reply2thread->trr_id.'/'.$dataforumthread->cft_id.'/'.$k) ?>" class="rateStar" >
                                                            <span class="text-muted">
                                                                <span class="fa fa-star checked"></span>
                                                                <span class="fa fa-star checked"></span>
                                                                <span class="fa fa-star checked"></span>
                                                            </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </span>
                                            <button class="btn btn-primary btn_reply_reply" id="btn_reply_reply<?php echo $j;?><?php echo $i;?>"><i class="fa fa-comment"></i> Komentar</button>
                                    <?php 
                                        } ?> 
                                <?php 
                                    } ?>                              
                                </span>
                            <?php 
                                } ?>

                            <!-- Beri Komentar -->
                            <div id="reply_reply<?php echo $j;?><?php echo $i;?>" style="display:none">
                                <br>
                                <br>
                                <div class="mdl-grid">
                                    <div class="col-md-1" style="text-align: center;">
                                        <img class="img-circle" src="<?php echo base_url();?>/res/assets/images/uploads/<?php echo $this->session->userdata('foto');?>" style="width:75px;height:75px;" alt="User Image">
                                    </div>
                                    <div class="col-md-11">
                                        <form action="<?php echo site_url('siswa/thread/insert_komentar_reply_reply_reply/'.$reply2thread->trr_id.'/'.$dataforumthread->cft_id) ?>" class="form-horizontal" method="post">
                                            <div class="form-group">
                                                <label>Beri Komentar</label>
                                                <textarea class="forum_komentar2" id="forum_komentar2<?php echo $i;?>" name="forum_komentar2"></textarea>
                                            </div>
                                            <button class="btn btn-primary pull-right" id="balaskomentar2" style="float:right; margin-right:5px">
                                                <i class="fa fa-reply">
                                                </i>
                                                Balas
                                            </button>
                                        </form>
                                        <button class="btn btn-danger pull-right btn_batal_reply_reply" id="btn_batal_reply_reply<?php echo $j;?><?php echo $i;?>" style="float:right; margin-right:5px">
                                            <i class="fa fa-close"></i>
                                            Batal
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <!-- Komentar ke-2 -->
                            <?php
                                $datareply3thread= M_Course_Forum_Thread_Reply_Reply_Reply::leftJoin('users','users.usr_id','=','course_forum_thread_reply_reply_reply.usr_id')
                                                        ->where('course_forum_thread_reply_reply_reply.trr_id',$reply2thread->trr_id)
                                                        ->get();
                                                        //dd($datareplythread);
                            ?>

                            <?php foreach($datareply3thread as $reply3thread):?>

                            <?php 
                                $countreply = M_Course_Forum_Thread_Reply::leftJoin('course_forum_thread','course_forum_thread.cft_id','=','course_forum_thread_reply.cft_id')
                                                                ->where('course_forum_thread.cft_id',$dataforumthread->cft_id)
                                                                ->where('course_forum_thread_reply.usr_id',$replythread->usr_id)
                                                                ->get();
                                $jumlahreply = $countreply->count('usr_id');
                                $countreplyreply = M_Course_Forum_Thread_Reply_Reply::leftJoin('course_forum_thread_reply','course_forum_thread_reply.ftr_id','=','course_forum_thread_reply_reply.ftr_id')
                                                                ->leftJoin('course_forum_thread','course_forum_thread.cft_id','=','course_forum_thread_reply.cft_id')
                                                                ->where('course_forum_thread.cft_id',$dataforumthread->cft_id)
                                                                ->where('course_forum_thread_reply_reply.usr_id',$replythread->usr_id)
                                                                ->get();
                                $jumlahreplyreply = $countreplyreply->count('usr_id');
                                $countreplyreplyreply = M_Course_Forum_Thread_Reply_Reply_Reply::leftJoin('course_forum_thread_reply_reply','course_forum_thread_reply_reply.trr_id','=','course_forum_thread_reply_reply_reply.trr_id')
                                                                ->leftJoin('course_forum_thread_reply','course_forum_thread_reply.ftr_id','=','course_forum_thread_reply_reply.ftr_id')
                                                                ->leftJoin('course_forum_thread','course_forum_thread.cft_id','=','course_forum_thread_reply.cft_id')
                                                                ->where('course_forum_thread.cft_id',$dataforumthread->cft_id)
                                                                ->where('course_forum_thread_reply_reply_reply.usr_id',$replythread->usr_id)
                                                                ->get();
                                $jumlahreplyreplyreply = $countreplyreplyreply->count('usr_id');
                                $sumreplyreplyreply = $jumlahreply+$jumlahreplyreply+$jumlahreplyreplyreply;

                                $getrating = M_Course_Forum_Thread_Reply_Reply_Reply::where('course_forum_thread_reply_reply_reply.rrr_id','=',$reply3thread->rrr_id)->first(['rrr_ratingsum','rrr_ratingcount']);
                                $rrrratingsum = $getrating->rrr_ratingsum;
                                $rrrratingcount = $getrating->rrr_ratingcount;

                                if($rrrratingcount == 0)
                                {
                                    $rrrratingcount = 1;
                                    $avgrating3 = $rrrratingsum/$rrrratingcount;
                                }
                                else
                                {
                                    $avgrating3 = $rrrratingsum/$rrrratingcount;
                                }
                            ?>
                                <div id="balasankomentar2" style="padding-left:60px">
                                    <br>
                                    <br>

                                <?php
                                    if ($reply3thread->usr_level == 3) 
                                    { ?>
                                        <div class="user-block">
                                            <img class="img-circle" style="width:75px;height:75px; float:left" src="<?php echo base_url();?>/res/assets/images/uploads/<?php echo $reply3thread->usr_picture;?>" alt="User Image">
                                            <span class="username">
                                                <a href="#" style="font-size:20px;">
                                                <?php echo $reply3thread->usr_firstname?> <?php echo $reply3thread->usr_lastname?>
                                                </a>
                                            </span>
                                            <span class="description" style="font-size:14px;">
                                                Jumlah Post : <?php echo $sumreplyreplyreply?>
                                            </span>
                                            <span class="description" style="font-size:14px;">
                                                Comment pada : <?php echo $reply3thread->rrr_timecreated?>
                                            </span>
                                        </div>
                                <?php 
                                    }
                                    else
                                    { ?>
                                        <div class="user-block">
                                            <img class="img-circle" style="width:75px;height:75px; float:left" src="<?php echo base_url();?>/res/assets/images/uploads/<?php echo $reply3thread->usr_picture;?>" alt="User Image">
                                            <span class="username">
                                                <a href="#" style="font-size:20px;">
                                                <?php echo $reply3thread->usr_firstname?> <?php echo $reply3thread->usr_lastname?>
                                                </a>
                                            </span>
                                            <span class="description" style="font-size:20px;float:right; margin-right: 5px; font-color:yellow;">
                                                Rating :  <i class="fa fa-star checked" style="font-size:24px;"><?php echo number_format((float)$avgrating3,2,'.',''); ?></i>
                                            </span>
                                            <span class="description" style="font-size:14px;">
                                                Jumlah Post : <?php echo $sumreplyreplyreply?>
                                            </span>
                                            <span class="description" style="font-size:14px;">
                                                Comment pada : <?php echo $reply3thread->rrr_timecreated?>
                                            </span>
                                        </div>
                                <?php 
                                    } ?>
                                    <hr/>

                                    <!-- Isi Teks -->
                                    <p style="text-align: justify;">
                                        <?php echo $reply3thread->rrr_content ?>
                                    </p>

                                    <!-- Social sharing buttons -->
                                    <?php 
                                        if($this->session->userdata('id') == $reply3thread->usr_id)
                                        {    
                                        ?>
                                        <a href="<?php echo site_url('siswa/thread/delete_komentar_reply_reply_reply/'.$reply3thread->rrr_id.'/'.$dataforumthread->cft_id)?>">
                                            <span class="pull-right">
                                                <button class="btn btn-danger" onclick="return confirm('Anda yakin untuk menghapus?');"><i class="fa fa-trash"></i></button>
                                            </span>
                                        </a>
                                    <?php 
                                        }
                                        else
                                        {
                                        ?>
                                        <span class="pull-right">
                                        <?php $dataratingreply3 = DB::table('rating_reply_reply_reply')->where('rating_reply_reply_reply.rrr_id',$reply3thread->rrr_id)->first(); ?>
                                        <?php 
                                            if ($dataratingreply3->rrr_id == $reply3thread->rrr_id and $dataratingreply3->usr_id == $this->session->userdata('id'))
                                            { ?>
                                                
                                        <?php 
                                            }
                                            else
                                            { ?>    
                                                <?php 
                                                    if ($reply3thread->usr_level == 3)
                                                    { ?>
                                                <?php 
                                                    }
                                                    else
                                                    { ?>
                                                    <span class="dropdown">
                                                        <button class="btn btn-warning" type="button" data-toggle="dropdown"><i class="fa fa-star"></i> Rate
                                                        <span class="caret"></span>
                                                        </button>
                                                        <ul class="dropdown-menu">
                                                            <li>
                                                                <a href="<?php $k=1; echo site_url('siswa/thread/insert_rating_reply_reply_reply/'.$reply3thread->rrr_id.'/'.$dataforumthread->cft_id.'/'.$k) ?>" class="rateStar">
                                                                    <span class="text-muted">
                                                                        <span class="fa fa-star checked"></span>
                                                                    </span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="<?php $k=2; echo site_url('siswa/thread/insert_rating_reply_reply_reply/'.$reply3thread->rrr_id.'/'.$dataforumthread->cft_id.'/'.$k) ?>" class="rateStar" >
                                                                    <span class="text-muted">
                                                                        <span class="fa fa-star checked"></span>
                                                                        <span class="fa fa-star checked"></span>
                                                                    </span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="<?php $k=3; echo site_url('siswa/thread/insert_rating_reply_reply_reply/'.$reply3thread->rrr_id.'/'.$dataforumthread->cft_id.'/'.$k) ?>" class="rateStar" >
                                                                    <span class="text-muted">
                                                                        <span class="fa fa-star checked"></span>
                                                                        <span class="fa fa-star checked"></span>
                                                                        <span class="fa fa-star checked"></span>
                                                                    </span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </span>
                                                <?php 
                                                    } ?>
                                            <?php 
                                                } ?>
                                        </span>
                                    <?php 
                                        } ?>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
<?php endforeach; ?>
</main>

<!-- SHOW-HIDE -->
<script>
    $(document).ready(function()
    {   
        $("#btn_komentar").on("click", function()
        {
            $("#komentarr").attr("style","display:show")
        });
        $("#btn_batalkomentar").on("click", function()
        {
            $("#komentarr").attr("style","display:none")
        });

        $('.btn_reply').click(function(){
            var id = $(this).attr('id');
            var regexnumber = id.match(/\d/g);
            
            $("#reply"+regexnumber[0]+regexnumber[1]).attr("style","display:show")
        });

        $('.btn_batal_reply').click(function(){
            var id = $(this).attr('id');
            var regexnumber = id.match(/\d/g);
            
            $("#reply"+regexnumber[0]+regexnumber[1]).attr("style","display:none")
        });

        $('.btn_reply_reply').click(function(){
            var id = $(this).attr('id');
            var regexnumber = id.match(/\d/g);
            
            $("#reply_reply"+regexnumber[0]+regexnumber[1]).attr("style","display:show")
        });

        $('.btn_batal_reply_reply').click(function(){
            var id = $(this).attr('id');
            var regexnumber = id.match(/\d/g);
            
            $("#reply_reply"+regexnumber[0]+regexnumber[1]).attr("style","display:none")
        });

        textEditByClass('forum_komentarr');
        textEditByClass('forum_komentar1');
        textEditByClass('forum_komentar2');
    });
</script>

<!-- CKEDITOR -->
<!-- <script src="https://cdn.ckeditor.com/4.7.1/standard/ckeditor.js" type="text/javascript"></script> -->
<script src="<?php echo base_url();?>res/assets/js/ckeditor.js"></script>
<script>   
    // CKEDITOR.replaceAll('forum_komentarr');
    // CKEDITOR.replaceAll('forum_komentar1');
    // CKEDITOR.replaceAll('forum_komentar2');
</script>


