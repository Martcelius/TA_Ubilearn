<!-- MAIN -->

<main class="mdl-layout__content">
<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--12-col">
        <div class="mdl-grid">
            <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--11-col-tablet mdl-cell--11-col-phone">
                <h2 style="color:white">Forum</h2>
                <h4 style="color:grey">Nama Siswa</h4>
            </div>
        </div>
    </div>
</div>

<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--12-col">    
        <div class="mdl-card mdl-shadow--2dp">
            <div class="mdl-card__title">
                <i class="material-icons" style="font-size: 30px">forum</i>
                <h3 class="mdl-card__title-text" style="margin-left: 20px"> Diskusi Saya </h3>
            </div>
            <table class="mdl-data-table mdl-shadow--2dp" style="width:100%">
                <thead>
                    <tr>
                        <td colspan = "3" style="text-align:left">
                            SFH4123 / INTERAKSI MANUSIA DAN KOMPUTER / DJN    
                        </td>
                        <td>
                            <a href="#">
                            <i class="material-icons" style="font-size: 30px;display : inline-block" id = "forum_em">expand_more</i>
                            <i class="material-icons" style="font-size: 30px;display : none" id = "forum_el">expand_less</i>
                            </a>    
                        </td>
                    </tr>
                    <tr style="display: none" id="forum_tabel_lesson1">
                        <td style="width:10px">
                            1.
                        </td>
                        <td style="width:200px; text-align:left">
                            Lesson 01
                        </td>
                        <td>
                            <table class="mdl-data-table mdl-shadow--2dp" style="width:110%">
                                <thead>
                                    <tr>
                                        <td style="width:15px;text-align : left">
                                            No
                                        </td>
                                        <td style="text-align : left">
                                            Judul
                                        </td>
                                        <td style="text-align : left">
                                            Post saya
                                        </td>
                                        <td style="text-align : left">
                                            Total Post
                                        </td>
                                        <td style="text-align : left">
                                            Aksi
                                        </td>
                                    </tr>
                                    <tr>

                                    </tr>

                                    <tr>
                                        <td style="text-align : left">
                                            1
                                        </td>
                                        <td style="width:50%; text-align : left">
                                            Belajar Menginjek
                                        </td>
                                        <td style="text-align : left">
                                            5
                                        </td>
                                        <td style="text-align : left">
                                            100
                                        </td>
                                        <td style="text-align : center">
                                            <button>Masuk Forum</button>
                                        </td>
                                    </tr>
                                    <tr>

                                    </tr>
                                </thead>
                            </table>
                        </td>
                    </tr>

                    <tr style="display: none" id="forum_tabel_lesson2">
                        <td style="width:10px">
                            2.
                        </td>
                        <td style="width:200px; text-align:left">
                            Lesson 02
                        </td>
                        <td>
                            Tidak ada diskusi
                        </td>
                    </tr>

                    <tr style="display: none" id="forum_tabel_lesson3">
                        <td style="width:10px">
                            3.
                        </td>
                        <td style="width:200px; text-align:left">
                            Lesson 03
                        </td>
                        <td>
                            Tidak ada diskusi
                        </td>
                    </tr>

                    <tr style="display: none" id="forum_tabel_lesson4">
                        <td style="width:10px">
                            4.
                        </td>
                        <td style="width:200px; text-align:left">
                            Lesson 04
                        </td>
                        <td>
                            Tidak ada diskusi
                        </td>
                    </tr>
                </thead>
            </table>
        </div>
    </div>
</div>
</main>

<!-- SCRIPT -->

<script>
$(document).ready(function(){
    $("#forum_em").click(function(){
        $('#forum_em').css({"display":"none", "font-size" : "30px"});
        $('#forum_el').css({"display":"inline-block", "font-size" : "30px"});
        $('#forum_tabel_lesson1').show();
        $('#forum_tabel_lesson2').show();
        $('#forum_tabel_lesson3').show();
        $('#forum_tabel_lesson4').show();
    });
    $("#forum_el").click(function(){
        $('#forum_el').css({"display":"none", "font-size" : "30px"});
        $('#forum_em').css({"display":"inline-block", "font-size" : "30px"});
        $('#forum_tabel_lesson1').hide();
        $('#forum_tabel_lesson2').hide();
        $('#forum_tabel_lesson3').hide();
        $('#forum_tabel_lesson4').hide();
    });
});
</script>

<!-- <script>
    $(document).ready(function(){
        $("#forum_em").on("click", function(){
            $("p").hide();
        });
        $("#forum_em").on("click", function(){
            $("p").show();
        });
    });
</script> -->