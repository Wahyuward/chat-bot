<?php
$koneksi = mysqli_connect("localhost", "root", "", "lat_chatbot");

$pesan = mysqli_real_escape_string($koneksi, $_POST['isi_pesan']);
// $getMesg = mysqli_real_escape_string($conn, $_POST['text']);

// $cek_data = "SELECT jawaban FROM chatbot WHERE pertanyaan LIKE ON '%$pesan%'";
$cek_data = "SELECT jawaban FROM chatbot WHERE pertanyaan LIKE '%$pesan%'";

$run_query = mysqli_query($koneksi, $cek_data) or die("Error");

if (mysqli_num_rows($run_query) > 0) {

    $data = mysqli_fetch_assoc($run_query);
    $balasan = $data['jawaban'];
    echo $balasan;
} else {
    echo "Maaf data tidak ditemukan";
}