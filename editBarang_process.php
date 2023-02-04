<?php
include 'koneksidb.php';
$IdBarang = $_POST['IdBarang'];
$NamaBarang = $_POST['NamaBarang'];
$Keterangan = $_POST['Keterangan'];
$Satuan = $_POST['Satuan'];
$query = "UPDATE barang SET NamaBarang='$NamaBarang', Keterangan='$Keterangan', Satuan='$Satuan' WHERE IdBarang='$IdBarang'";
$sql = mysqli_query($connect, $query);
if ($sql) {
    header("location: dataBarang.php");
} else {
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='dataBarang.php'>Kembali Ke Form</a>";
}
