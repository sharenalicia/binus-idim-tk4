<?php
try {
    include "koneksidb.php";
    $idpengguna = $_POST['idpengguna'];
    $password = $_POST['password'];

    if (empty($idpengguna)) {
        echo "<script>alert('Id Pengguna belum diisi')</script>";
        echo "<meta http-equiv='refresh' content='0 url=login.php>";
    } else if (empty($password)) {
        echo "<script>alert('Password belum diisi')</script>";
        echo "<meta http-equiv='refresh' content='0 url=login.php'>";
    } else {
        session_start();
        $login = mysqli_query($connect, "SELECT * FROM pengguna WHERE IdPengguna ='$idpengguna' and Password ='$password'");
        if (mysqli_num_rows($login) > 0) {
            $_SESSION['idpengguna'] = $idpengguna;
            header("location:dashboard.php");
        } else {
            echo "<script>alert('Id Pengguna atau Password salah !')</script>";
            echo "<meta http-equiv='refresh' content='0 url=Login.php'>";
        }
    }
} catch (Exception $e) {
    echo "Error : " . $e->getMessage();
}