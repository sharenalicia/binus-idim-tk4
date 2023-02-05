<?php
    include "koneksi.php";
    session_start();
    if (!isset($_SESSION['IdPengguna'])){
        header ("location:login.php");
    }
?>

<html>
    <head>
        <title></title>
    </head>

    <body>
    <?php
        $IdPengguna = $_SESSION['IdPengguna'];
        $IdAkses = $_SESSION['IdAkses'];
        $Keterangan = $_SESSION['Keterangan'];
        $query = mysqli_query($connect, "SELECT IdPengguna, IdAkses, Keterangan FROM pengguna JOIN hakakses USING (IdAkses)");
        $p = mysqli_fetch_array($query);
        if($Keterangan=='Admin'){
            echo "<meta http-equiv='refresh' content='0 url=dashboard.php'>";
        }else if($Keterangan=='User'){
            echo "<meta http-equiv='refresh' content='0 url=dashboard_view.php'>";
        }
    ?>
    </body>

</html>