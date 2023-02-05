<?php
include 'koneksidb.php';
$IdPenjualan = $_POST['IdPenjualan'];
$IdBarang = $_POST['IdBarang'];
$JumlahPenjualan = $_POST['JumlahPenjualan'];
$HargaJual = $_POST['HargaJual'];
$IdPengguna = $_POST['IdPengguna'];
$query = "UPDATE penjualan SET IdBarang='$IdBarang', JumlahPenjualan='$JumlahPenjualan', HargaJual='$HargaJual', IdPengguna='$IdPengguna' WHERE IdPenjualan='$IdPenjualan'";
$sql = mysqli_query($connect, $query);
if ($sql) {
    header("location: dataPenjualan.php");
} else {
    echo "Maaf, Terjadi kesalahan saat mencoba simpan data ke database.";
    echo "<br><a href='dataPelanggan.php'>Kembali Ke Form</a>";
}
