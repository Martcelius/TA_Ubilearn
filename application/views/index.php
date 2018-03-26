<!DOCTYPE html>
<html>
<body>

<!-- <p>COBA KLIK GOBLOG</p>

<button onclick="dapetinlokasi()">KLIK INI NYING</button>

<p id="INIBLOG"></p>

<script>
var x = document.getElementById("INIBLOG");

function dapetinlokasi() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(sianying);
    } else { 
        x.innerHTML = "Ga bisa make browser ini anying buat dapetin posisi";
    }
}

function sianying(posisi) {
    x.innerHTML = "Latnya nying : " +            + 
    "<br>Longitudenya nying: " + posisi.coords.longitude;
}

$.ajax({
    type: "POST",
    url: "<?php echo site_url('input_akun') ?>",
    data: $('#form_daftar').serialize(),//serialize untuk mengambil semua data yang terdapat request untuk di parsing
    // contoh hasil yang di lempar dari serialize: name=b&password=b
    success: function(hasil) {
        confirmBerhasil();
    },
    error: function (jqXHR, textStatus, errorThrown)
    {
        swal("Error Menambahkan Data!", "Tolong Periksa Lagi", "error");
    }
});
</script> -->
<?php
$teudicalana = M_Course_Content::join('course_lesson','course_content.lsn_id', '=' ,'course_lesson.lsn_id')
                                ->where('course_content.lsn_id', '=', $this->input->post('lsn_id'))
                                ->first();
echo print_r($teudicalana);
$cruses = M_Course_Enrol::where('crs_id', '=', 14)->get();
echo '<pre>',print_r($cruses),'</pre>';


?>
</body>
</html>