<?php
include 'koneksidb.php';
$IdBarang = $_GET['IdBarang'];
$query = "DELETE FROM barang WHERE IdBarang='$IdBarang'";
$sql = mysqli_query($connect, $query);
if ($sql) {
    header("location: dataBarang.php");
} else {
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='dataBarang.php'>Kembali Ke Form</a>";
}
