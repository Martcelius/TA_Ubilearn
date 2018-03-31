<main class="mdl-layout__content">
    <div class="mdl-grid cover-main">
      <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
        <div class="">
              <div class="">
              <br>
              <br>
              <br>
              <br>
                  <center><h1 style="color:white"><?php echo "Kuesioner"?></h1></center>
                  <i><center><h2 style="color:white"><?php echo "Index of Learning Style"?></h2></center></i>
              </div>
          </div>
      </div>
    </div>

    <div class="mdl-grid div1" >                
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet">
            <div class="mdl-card mdl-shadow--2dp pie-chart">
            <form id="form1" name="form1" method="post" action="<?php echo base_url().'siswa/Kuesioner/calc_kuesioner' ?>">
            <!-- kuesioner halaman 1 -->
                <div class="mdl-card__supporting-text" id="kues1">
                <form id="form1" name="form1" method="post" action="<?php echo base_url().'siswa/Kuesioner/calc_kuesioner' ?>">
                    <ol start="1" type="1">
                        <h4>
                        <li>Saya lebih memahami sesuatu setelah</li>
                        <ol start="1" type="a">
                        <i>
                            <li><input type="radio" name="learningstyle1" value="a" required>Mencobanya.</li>
                            <li><input type="radio" name="learningstyle1" value="b" required>Memikirkannya.</li>
                        </i>
                    </ol>
            <br>
                        <li>Saya lebih suka dianggap sebagai orang yang</li>
                    <ol start="1" type="a">
                        <i>
                            <li><input type="radio" name="learningstyle2" value="a">Realistis.</li>
                            <li><input type="radio" name="learningstyle2" value="b">Inovatif.</li>
                        </i>
                    </ol>
            <br>
                        <li>Kalau saya memikirkan apa yang saya lakukan kemarin, di pikiran saya akan muncul</li>
                     <ol start="1" type="a">
                        <i>
                            <li><input type="radio" name="learningstyle3" value="a">Gambar.</li>
                            <li><input type="radio" name="learningstyle3" value="b">Kata-kata/kisah.</li>
                        </i>
                    </ol>
            <br>
                        <li>Saya cenderung</li>
                    <ol start="1" type="a">
                        <i>
                            <li><input type="radio" name="learningstyle4" value="a">Mengerti detil suatu hal tetapi bingung kerangka besarnya.</li>
                            <li><input type="radio" name="learningstyle4" value="b">Mengerti kerangka besarnya tapi bingung dengan detilnya.</li>
                        </i>
                    </ol>
            <br>
                        <li>Ketika mempelajari sesuatu yang baru, saya merasa terbantu dengan</li>
                    <ol start="1" type="a">
                        <i>
                            <li><input type="radio" name="learningstyle5" value="a">Membicarakannya.</li>
                            <li><input type="radio" name="learningstyle5" value="b">Memikirkannya.</li>
                        </i>
                    </ol>
            <br>
                        <li>Seandainya saya dosen, saya akan mengajarkan hal-hal yang berkaitan dengan</li>
                    <ol start="1" type="a">
                        <i>
                            <li><input type="radio" name="learningstyle6" value="a">Fakta dan situasi nyata sehari-hari.</li>
                            <li><input type="radio" name="learningstyle6" value="b">Ide dan teori.</li>
                        </i>
                    </ol>
            <br>
                        <li>Saya lebih suka mendapat informasi baru dalam bentuk</li>
                    <ol start="1" type="a">
                        <i>
                            <li><input type="radio" name="learningstyle7" value="a">Gambar, diagram, grafik, atau peta.</li>
                            <li><input type="radio" name="learningstyle7" value="b">Petunjuk tertulis atau info lisan.</li>
                        </i>
                    </ol>
            <br>
                        <li>Begitu saya paham</li>
                    <ol start="1" type="a">
                        <i>
                            <li><input type="radio" name="learningstyle8" value="a">Bagian-bagiannya, saya paham keseluruhannya.</li>
                            <li><input type="radio" name="learningstyle8" value="b">Keseluruhannya, saya paham bagaimana bagian-bagiannya bisa pas.</li>
                        </i>
                    </ol>
            <br>
                        <li>Dalam kelompok belajar yang mengerjakan materi sukar, saya biasanya akan</li>
                    <ol start="1" type="a">
                        <i>
                            <li><input type="radio" name="learningstyle9" value="a">Menimbrung dan menyumbang ide.</li>
                            <li><input type="radio" name="learningstyle9" value="b">Duduk tenang dan mendengarkan.</li>
                        </i>
                    </ol>
            <br>
                        <li>Saya merasa lebih mudah</li>
                    <ol start="1" type="a">
                        <i>
                            <li><input type="radio" name="learningstyle10" value="a">Mempelajari fakta.</li>
                            <li><input type="radio" name="learningstyle10" value="b">Mempelajari konsep.</li>
                        </i>
                    </ol>
            <br>
                        <li>Dalam buku yang penuh gambar dan bagan, saya cenderung</li>
                    <ol start="1" type="a">
                        <i>
                            <li><input type="radio" name="learningstyle11" value="a">Melihat seksama gambar dan bagan.</li>
                            <li><input type="radio" name="learningstyle11" value="b">Fokus pada penjelasan teks.</li>
                        </i>
                    </ol>
                    </ol>
                    </h4>

                <div style="text-align:left;margin-left: 30px;margin-bottom: 30px;">
                    <!-- <a href="<?php echo base_url().'siswa/selfass2/'?>"> -->
                        <button type="button" onclick="next(2)" id="nextt" style="background-color: #99999;" class="mdl-button mdl-js-button mdl-button--raised">
                    Selanjutnya
                        </button>
                    <!-- </a> -->
                </div>
                <div style="text-align:left;margin-left: 30px;margin-bottom: 30px;margin-right: 30px;">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width:25%">
                    Halaman 1 dari 4
                        </div>
                    </div>
                </div>
            </div>

            <!-- kuesioner halaman 2 -->
                <div class="mdl-card__supporting-text" id="kues2">
                <ol start="12" type="1">
                    <h4>
                    <li>Ketika menyelesaikan soal matematika</li>
                        <ol start="1" type="a">
                            <i>
                                <li><input type="radio" name="learningstyle12" value="a">Saya biasanya mengerjakan solusinya selangkah demi selangkah.</li>
                                <li><input type="radio" name="learningstyle12" value="b">Saya sering tahu solusinya, tapi sulit mengerjakan langkah-langkahnya.</li>
                            </i>
                        </ol>
                        <br>
                    <li>Dalam kelas yang saya ikuti</li>
                        <ol start="1" type="a">
                            <i>
                                <li><input type="radio" name="learningstyle13" value="a">Biasanya saya kenal banyak mahasiswanya.</li>
                                <li><input type="radio" name="learningstyle13" value="b">Jarang saya kenal banyak mahasiswanya.</li>
                            </i>
                        </ol>
                        <br>
                    <li>Ketika membaca non-fiksi, saya lebih suka yang</li>
                        <ol start="1" type="a">
                            <i>
                                <li><input type="radio" name="learningstyle14" value="a">Mengajari saya fakta baru atau cara melakukan sesuatu.</li>
                                <li><input type="radio" name="learningstyle14" value="b">Memberi saya ide-ide baru untuk dipikirkan.</li>
                            </i>
                        </ol>
                        <br>
                    <li>Saya suka guru/dosen yang</li>
                        <ol start="1" type="a">
                            <i>
                                <li><input type="radio" name="learningstyle15" value="a">Memperlihatkan banyak diagram.</li>
                                <li><input type="radio" name="learningstyle15" value="b">Banyak memberi penjelasan.</li>
                            </i>
                         </ol>
                         <br>
                    <li>Ketika menganalisa cerita atau novel,</li>
                        <ol start="1" type="a">
                            <i>
                                <li><input type="radio" name="learningstyle16" value="a">Saya mengingat peristiwa-peristiwanya dan menghubung-hubungkan untuk mengetahui temanya.</li>
                                <li><input type="radio" name="learningstyle16" value="b">Saya bisa menangkap temanya begitu selesai membaca, dan saya harus kembali untuk menemukan peristiwa-peristiwa yang menunjukkan tema tersebut.</li>
                            </i>
                        </ol>
                         <br>
                    <li>Ketika mengerjakan soal PR, biasanya saya</li>
                        <ol start="1" type="a">
                            <i>
                                <li><input type="radio" name="learningstyle17" value="a">Langsung mengerjakan solusinya.</li>
                                <li><input type="radio" name="learningstyle17" value="b">Mencoba memahami soalnya dulu.</li>
                            </i>
                        </ol>
                         <br>
                    <li>Saya lebih suka ide tentang</li>
                        <ol start="1" type="a">
                            <i>
                                <li><input type="radio" name="learningstyle18" value="a">Kepastian.</li>
                                <li><input type="radio" name="learningstyle18" value="b">Teori.</li>
                            </i>
                        </ol>
                         <br>
                    <li>Saya mengingat dengan baik</li>
                        <ol start="1" type="a">
                            <i>
                                <li><input type="radio" name="learningstyle19" value="a">Yang saya lihat.</li>
                                <li><input type="radio" name="learningstyle19" value="b">Yang saya dengar.</li>
                            </i>
                        </ol>
                                <br>
                    <li>Penting bagi saya bahwa instruktur perlu</li>
                        <ol start="1" type="a">
                            <i>
                                <li><input type="radio" name="learningstyle20" value="a">Memaparkan materi dalam langkah yang berurutan dan jelas.</li>
                                <li><input type="radio" name="learningstyle20" value="b">Memberikan gambaran besarnya dan mengkaitkan materi ke mata kuliah lain.</li>
                            </i>
                        </ol>
                                <br>
                     <li>Saya lebih suka belajar</li>
                        <ol start="1" type="a">
                            <i>
                                <li><input type="radio" name="learningstyle21" value="a">Dalam kelompok.</li>
                                <li><input type="radio" name="learningstyle21" value="b">Sendiri.</li>
                            </i>
                        </ol>
                                <br>
                    <li>Saya biasanya dianggap</li>
                        <ol start="1" type="a">
                            <i>
                                <li><input type="radio" name="learningstyle22" value="a">Teliti/hati-hati dalam detil pekerjaan saya.</li>
                                <li><input type="radio" name="learningstyle22" value="b">Kreatif dalam pekerjaan saya.</li>
                            </i>
                        </ol>
                                </h4>
            <!-- tombol next&prev -->
                <div style="text-align:left;margin-left: 0px;margin-bottom: 30px;">
                        <!-- <a href="<?php echo base_url().'siswa/selfass/'?>"> -->
                            <button type="button" onclick="prev(1)" style="background-color: #99999;" class="mdl-button mdl-js-button mdl-button--raised">
                        Sebelumnya
                            </button>
                        <!-- </a> -->
                        <!-- <a href="<?php echo base_url().'siswa/selfass3/'?>"> -->
                            <button type="button" onclick="next(3)" style="background-color: #99999;" class="mdl-button mdl-js-button mdl-button--raised">
                        Selanjutnya
                            </button>
                        <!-- </a>     -->
                        </div>
            <!-- progress bar -->
                <div style="text-align:left;margin-left: 0px;margin-bottom: 30px;margin-right: 30px;">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:50%">
                        Halaman 2 dari 4
                        </div>
                    </div>
                </div>
            </div>

            <!-- kuesioner halaman 3 -->
                <div class="mdl-card__supporting-text" id="kues3">
                        <ol start="23" type="1">
                            <h4><li>Untuk mencari suatu tempat, saya lebih suka</li>
                                <ol start="1" type="a">
                                    <i>
                                <li><input type="radio" name="learningstyle23" value="a">Peta.</li>
                                <li><input type="radio" name="learningstyle23" value="b">Instruksi lisan.</li>
                                </i>
                        </ol>
                        <br>
                        <li>Saya belajar</li>
                                <ol start="1" type="a">
                                    <i>
                                <li><input type="radio" name="learningstyle24" value="a">Lumayan teratur. Jika saya belajar, saya akan paham.</li>
                                <li><input type="radio" name="learningstyle24" value="b">Jatuh bangun. Saya bingung tapi tiba-tiba “dong”.</li>
                                </i>
                        </ol>
                        <br>
                        <li>Saya lebih suka mula-mula</li>
                                <ol start="1" type="a">
                                    <i>
                                <li><input type="radio" name="learningstyle25" value="a">Mencobanya.</li>
                                <li><input type="radio" name="learningstyle25" value="b">b.	memikirkan bagaimana melakukannya.</li>
                                </i>
                        </ol>
                        <br>
                        <li>Ketika membaca untuk hiburan, saya suka penulis yang</li>
                                <ol start="1" type="a">
                                    <i>
                                <li><input type="radio" name="learningstyle26" value="a">Dengan jelas mengatakan maksudnya.</li>
                                <li><input type="radio" name="learningstyle26" value="b">Mengatakan dengan cara kreatif dan menarik.</li>
                                </i>
                        </ol>
                        <br>
                        <li>Ketika melihat diagram atau sketsa di kelas, saya cenderung mengingat</li>
                                <ol start="1" type="a">
                                    <i>
                                <li><input type="radio" name="learningstyle27" value="a">Gambarnya</li>
                                <li><input type="radio" name="learningstyle27" value="b">Apa yang instruktur katakan tentangnya.</li>
                                </i>
                        </ol>
                        <br>
                        <li>Ketika memikirkan isi informasi, saya cenderung</li>
                                <ol start="1" type="a">
                                    <i>
                                <li><input type="radio" name="learningstyle28" value="a">Fokus pada detil dan kehilangan gambar besarnya.</li>
                                <li><input type="radio" name="learningstyle28" value="b">Berusaha memahami gambaran besarnya sebelum masuk pada detil.</li>
                                </i>
                        </ol>
                        <br>
                        <li>Saya lebih mudah mengingat</li>
                                <ol start="1" type="a">
                                    <i>
                                <li><input type="radio" name="learningstyle29" value="a">Sesuatu yang telah saya lakukan.</li>
                                <li><input type="radio" name="learningstyle29" value="b">Sesuatu yang sering saya pikirkan.</li>
                                </i>
                        </ol>
                        <br>
                        <li>Ketika saya mengerjakan tugas, saya lebih suka</li>
                                <ol start="1" type="a">
                                    <i>
                                <li><input type="radio" name="learningstyle30" value="a">Menguasai satu cara melakukannya.</li>
                                <li><input type="radio" name="learningstyle30" value="b">Menemukan cara-cara baru melakukannya.</li>
                                </i>
                        </ol>
                        <br>
                        <li>Jika orang memperlihatkan suatu data, saya lebih suka</li>
                                <ol start="1" type="a">
                                    <i>
                                <li><input type="radio" name="learningstyle31" value="a">Berbentuk bagan atau grafik.</li>
                                <li><input type="radio" name="learningstyle31" value="b">Berbentuk teks yang menyimpulkan hasilnya.</li>
                                </i>
                        </ol>
                        <br>
                        <li>Ketika menulis paper, saya cenderung</li>
                                <ol start="1" type="a">
                                    <i>
                                <li><input type="radio" name="learningstyle32" value="a">Mengerjakan (berpikir atau menulis) mulai dari awal dan berlanjut sampai selesai.</li>
                                <li><input type="radio" name="learningstyle32" value="b">Mengerjakan (berpikir atau menulis) bagian-bagian yang berbeda lalu menatanya.</li>
                                </i>
                        </ol>
                        <br>
                        <li>Ketika mengerjakan tugas besar kelompok, saya ingin mula-mula</li>
                                <ol start="1" type="a">
                                    <i>
                                <li><input type="radio" name="learningstyle33" value="a">Ada “diskusi kelompok” dulu yang tiap anggotanya menyumbang ide.</li>
                                <li><input type="radio" name="learningstyle33" value="b">Berpikir sendiri-sendiri dulu baru berkumpul untuk membandingkan ide.</li>
                                </i>
                        </ol>
                        </h4>
                        <div style="text-align:left;margin-left: 0px;margin-bottom: 30px;">
                        <!-- <a href="<?php echo base_url().'siswa/selfass/'?>"> -->
                            <button type="button" onclick="prev(2)" style="background-color: #99999;" class="mdl-button mdl-js-button mdl-button--raised">
                        Sebelumnya
                            </button>
                        <!-- </a> -->
                        <!-- <a href="<?php echo base_url().'siswa/selfass3/'?>"> -->
                            <button type="button" onclick="next(4)" style="background-color: #99999;" class="mdl-button mdl-js-button mdl-button--raised">
                        Selanjutnya
                            </button>
                        <!-- </a>     -->
                        </div>
                        <div style="text-align:left;margin-left: 0px;margin-bottom: 30px;margin-right: 30px;">
                            <div class="progress">
                                <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width:75%">
                            Halaman 3 dari 4
                                </div>
                            </div>
                        </div>
            </div>

            <!-- kuesioner halaman 4 -->
                <div class="mdl-card__supporting-text" id="kues4">
            <ol start="34" type="1">
                <h4><li>Pujian yang lebih tinggi adalah jika seseorang itu dianggap</li>
                    <ol start="1" type="a">
                        <i>
                    <li><input type="radio" name="learningstyle34" value="a">Masuk akal.</li>
                    <li><input type="radio" name="learningstyle34" value="b">Imajinatif.</li>
                    </i>  
            </ol>
            <br>
            <li>Ketika bertemu orang di pesta, saya cenderung ingat</li>
                    <ol start="1" type="a">
                        <i>
                    <li><input type="radio" name="learningstyle35" value="a">Seperti apa penampilan orang-orang.</li>
                    <li><input type="radio" name="learningstyle35" value="b">Apa yang orang-orang ceritakan tentang mereka.</li>
                    </i>  
            </ol>
            <br>
            <li>Ketika mempelajari hal baru, saya lebih suka</li>
                    <ol start="1" type="a">
                        <i>
                    <li><input type="radio" name="learningstyle36" value="a">Berfokus pada hal tersebut, belajar sebanyak mungkin.</li>
                    <li><input type="radio" name="learningstyle36" value="b">Mengkoneksikannya dengan hal-hal yang berkaitan.</li>
                    </i>  
            </ol>
            <br>
            <li>Saya lebih sering dianggap sebagai orang yang</li>
                    <ol start="1" type="a">
                        <i>
                    <li><input type="radio" name="learningstyle37" value="a">Mudah bergaul.</li>
                    <li><input type="radio" name="learningstyle37" value="b">Tenang/pendiam.</li>
                    </i>  
            </ol>
            <br>
            <li>Saya suka kuliah yang menekankan</li>
                    <ol start="1" type="a">
                        <i>
                    <li><input type="radio" name="learningstyle38" value="a">Materi kongkrit (fakta, data).</li>
                    <li><input type="radio" name="learningstyle38" value="b">Materi abstrak (konsep, teori).</li>
                    </i>  
            </ol>
            <br>
            <li>Untuk hiburan, saya lebih suka</li>
                    <ol start="1" type="a">
                        <i>
                    <li><input type="radio" name="learningstyle39" value="a">Menonton acara TV yang bagus.</li>
                    <li><input type="radio" name="learningstyle39" value="b">Membaca buku yang asyik.</li>
                    </i>  
            </ol>
            <br>
            <li>Sebagian dosen mengawali kuliah dengan outline (kerangka) kuliah hari itu. Outline demikian</li>
                    <ol start="1" type="a">
                        <i>
                    <li><input type="radio" name="learningstyle40" value="a">Agak membantu saya.</li>
                    <li><input type="radio" name="learningstyle40" value="b">Sangat membantu saya.</li>
                    </i>  
            </ol>
            <br>
            <li>Ide mengerjakan tugas kelompok dengan satu nilai untuk seluruh anggota</li>
                    <ol start="1" type="a">
                        <i>
                    <li><input type="radio" name="learningstyle41" value="a">Menarik bagi saya.</li>
                    <li><input type="radio" name="learningstyle41" value="b">Tidak menarik bagi saya.</li>
                    </i>  
            </ol>
            <br>
            <li>Ketika mengerjakan penghitungan matematis yang panjang,</li>
                    <ol start="1" type="a">
                        <i>
                    <li><input type="radio" name="learningstyle42" value="a">Saya cenderung mengulang seluruh langkah saya dan memeriksa pekerjaan saya dengan teliti.</li>
                    <li><input type="radio" name="learningstyle42" value="b">Dengan cukup sulit dan tidak terlalu detil.</li>
                    </i>  
            </ol>
            <br>
            <li>Saya cenderung menggambarkan tempat-tempat yang saya kunjungi</li>
                    <ol start="1" type="a">
                        <i>
                    <li><input type="radio" name="learningstyle43" value="a">Dengan mudah dan cukup akurat.</li>
                    <li><input type="radio" name="learningstyle43" value="b">Dengan cukup sulit dan tidak terlalu detil.</li>
                    </i>  
            </ol>
            <br>
            <li>Ketika mengerjakan soal dalam kelompok, saya cenderung</li>
                    <ol start="1" type="a">
                        <i>
                    <li><input type="radio" name="learningstyle44" value="a">Memikirkan langkah-langkah mendapatkan jawabannya.</li>
                    <li><input type="radio" name="learningstyle44" value="b">Memikirkan konsekuensi dan aplikasi-aplikasi yang mungkin untuk menerapkannya di bidang yang lebih luas.</li>
                    </i>  
            </ol>
            </h4>
            <div style="text-align:left;margin-left: 0px;margin-bottom: 30px;">
            <!-- <a href="<?php echo base_url().'siswa/selfass/'?>"> -->
                <button type="button" onclick="prev(3)" style="background-color: #99999;" class="mdl-button mdl-js-button mdl-button--raised">
            Sebelumnya
                </button>
            <!-- </a> -->
            <!-- <a href="<?php echo base_url().'siswa/selfass3/'?>"> -->
                <button onclick="return cek()" type="submit" style="background-color: #629e39;" class="mdl-button mdl-js-button mdl-button--raised">
            Selesai
                </button>
            <!-- </a>     -->
            </div>
            <div style="text-align:left;margin-left: 0px;margin-bottom: 30px;margin-right: 30px;">
                <div class="progress">
                    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%">
                Halaman 4 dari 4
                    </div>
                </div>
            </div>
</div>
            </form>
            </div>
        </div>
    </div>
</main>
<!-- <style>
#up {
    background: url(http://icdn.lenta.ru/assets/icons-s238578731b-c5df9ffc01b66d2cee1e3e3d6d74e49b.png) no-repeat;
    background-position: -2329px 0;
    display: inline-block;
    vertical-align: middle;
    position: fixed;
    right: 100px;
    top: -64px;
    width: 54px;
    height: 54px;
    cursor: pointer;
    opacity: 0;
    -webkit-transition: all 0.5s ease-in-out;
        -moz-transition: all 0.5s ease-in-out;
        -ms-transition: all 0.5s ease-in-out;
        -o-transition: all 0.5s ease-in-out;
        transition: all 0.5s ease-in-out;
}
#up.scrolled{
    opacity:1;
    top: 10px;
}
</style> -->
<script type="text/javascript">
    $(document).ready(function(){
        $("input").prop('required',true);
        $( window ).bind('beforeunload', function()
         {
           return 'It is going to be refreshed'; 
        });
        window.onhashchange = function() {
            
        }
    });
</script>
<script>
$('#kues2').hide();
$('#kues3').hide();
$('#kues4').hide();

function next(nomer){
    // location.reload(true);
    var idx = nomer -1;
    /*$('#kues'+nomer).css("display", "block");
    $('#kues'+idx).css("display", "none");*/
    var i = idx - 1;
    if(cekRadio(i) == true){
        window.alreadyScrolled = 0;
        $('#kues'+idx).hide();
        $('#kues'+nomer).show("slow", function(){
            $(document).scrollTop(0);
        });
    }
    else{
        alert('Kuesioner tidak lengkap');
    }


    
}


var hal = [
            [1,2,3,4,5,6,7,8,9,10,11],
            [12,13,14,15,16,17,18,19,20,21,22],
            [23,24,25,26,27,28,29,30,31,32,33],
            [34,35,36,37,38,39,40,41,42,43,44],
            ];

function cek(){

    var a ;
    if(cekRadio(3) == true){
        $(window).off('beforeunload');
        a = true;
    }
    else{
        a = false;
        alert('Kuesioner tidak lengkap');
    }
    return a;
}

function cekRadio(idx){
    var i = 0;
    var a;
    while(i < hal[idx].length){
        if($("input[name=learningstyle"+hal[idx][i]+"]").is(':checked')){
            a = true;
        }
        else{
            a = false;
            i = hal[idx].length;
        }
        i++;
    }
    return a;
}

/*jQuery(window).scroll(function(){
    var fromTopPx = 200; // distance to trigger
    var scrolledFromtop = jQuery(window).scrollTop();
    if(scrolledFromtop > fromTopPx){
        jQuery('#nextt').addClass('scrolled');
    }else{
        jQuery('#nextt').removeClass('scrolled');
    }
});
jQuery('#nextt').on('click',function(){
    jQuery("html, body").animate({ scrollTop: 0 }, 600);
    return false;
}); */ 

function prev(nomer){
    var idx = nomer +1;
    
    $('#kues'+idx).hide();
    $('#kues'+nomer).show("slow", function(){
        $(document).scrollTop(0);
    });
}
</script>