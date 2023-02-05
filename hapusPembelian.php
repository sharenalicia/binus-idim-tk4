<?php
include 'koneksidb.php';
$IdPembelian = $_GET['IdPembelian'];
$query = "DELETE FROM pembelian WHERE IdPembelian='$IdPembelian'";
$sql = mysqli_query($connect, $query);
if ($sql) {
    header("location: dataPembelian.php");
} else {
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='dataPembelian.php'>Kembali Ke Form</a>";
}