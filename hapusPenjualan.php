<?php
include 'koneksidb.php';

$IdPenjualan = $_GET['IdPenjualan'];
$sql = "DELETE * FROM penjualana_h , penjualan_d  WHERE `penjualan_h`.`IdPenjualan` = '$IdPenjualan' AND  `penjualan_h`.`IdPenjualan` = '$IdPenjualan'";
 
$result = mysql_query($sql);

if ($sql) {
    header("location: dataPenjualan.php");
} else {
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='dataPembelian.php'>Kembali Ke Form</a>";
}