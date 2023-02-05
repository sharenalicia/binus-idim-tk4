<?php
include 'koneksidb.php';
$IdPelanggan = $_GET['IdPenjualan'];
$query = "DELETE FROM penjualan WHERE IdPenjualan='$IdPenjualan'";
$sql = mysqli_query($connect, $query);
if ($sql) {
    header("location: dataPenjualan.php");
} else {
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='dataPelanggan.php'>Kembali Ke Form</a>";
}
