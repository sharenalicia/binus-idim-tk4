<?php
include 'koneksidb.php';
$IdPenjualan = $_POST['IdPenjualan'];
$IdBarang = $_POST['IdBarang'];
$JumlahPenjualan = $_POST['JumlahPenjualan'];
$HargaJual = $_POST['HargaJual'];
$IdPengguna = $_POST['IdPengguna'];
$query = "INSERT INTO penjualan (IdPenjualan, IdBarang, JumlahPenjualan, HargaJual, IdPengguna) VALUES ('$IdPenjualan', '$IdBarang', '$JumlahPenjualan', '$HargaJual', '$IdPengguna')";
$sql = mysqli_query($connect, $query);
if ($sql) {
    header("location: dataPenjualan.php");
} else {
    echo "Maaf, Terjadi kesalahan saat mencoba simpan data ke database.";
    echo "<br><a href='dataBarang.php'>Kembali Ke Form</a>";
}
