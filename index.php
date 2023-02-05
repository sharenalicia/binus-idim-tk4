<?php
    include "koneksidb.php";
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
        $query = mysqli_query($connect, "SELECT * FROM pengguna JOIN hakakses WHERE IdPengguna = '$IdPengguna'");
        $p = mysqli_fetch_array($query);
        $Keterangan = $p['Keterangan'];
        if($Keterangan=='Admin'){
            echo "<meta http-equiv='refresh' content='0 url=dashboard.php'>";
        }else if($Keterangan=='User'){
            echo "<meta http-equiv='refresh' content='0 url=dashboard_view.php'>";
        }
    ?>
    </body>

</html>