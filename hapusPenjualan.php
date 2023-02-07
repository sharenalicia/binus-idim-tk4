<?php
include 'koneksidb.php';

$IdPenjualan = $_GET['IdPenjualan'];
$sql = "DELETE * FROM penjualan_h , penjualan_d  WHERE `penjualan_h`.`IdPenjualan` = '$IdPenjualan' AND  `penjualan_d`.`IdPenjualan` = '$IdPenjualan'";
 
$result = mysql_query($sql);

if ($result) {
    header("location: dataPenjualan.php");
} else {
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='dataPembelian.php'>Kembali Ke Form</a>";
}