<?php
include_once("DBController.php");

session_start();
$db_handle = new DBController();

$idpengguna = $_SESSION['id'];
if (!isset($idpengguna)) {
    header('location:login.php');
}

$query = "SELECT NamaPengguna FROM pengguna WHERE IdPengguna ='$idpengguna'";
try {
    $result = $db_handle->runQuery($query);
    if (!empty($result)) {
        foreach ($result as $key => $value) {
            $namaPengguna =  $value['NamaPengguna'];
            $_SESSION['nama'] = $namaPengguna;
        }
    }
} catch (Exception $e) {
    echo "<script>alert('Internal Server Error')</script>";
    echo "<meta http-equiv='refresh' content='0; url=index.php'>";
}
?>
<html>

<head>
    <title>Dashboard</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
    <div class="center">
        <header class="menu">
            <figure class="user">
                <div class="user-avatar">
                    <a href="index.php">
                        <img src="img/avatar.jpg">
                    </a>
                </div>
                <figcaption>
                    <?php echo $namaPengguna; ?>
                </figcaption>
            </figure>
            <nav>
                <section class="barang">
                    <h3>Barang</h3>
                    <ul>
                        <li>
                            <a href="dataBarang.php">
                                <i class="fas fa-tag"></i>
                                Daftar Barang
                            </a>
                        </li>
                    </ul>
                </section>
                <section class="penjualan">
                    <h3>Penjualan</h3>

                    <ul>
                        <li>
                            <a href="dataPelanggan.php">
                                <i class="fas fa-user"></i>
                                Daftar Pelanggan
                            </a>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <a href="dataPenjualan.php">
                                <i class="fas fa-cash-register"></i>
                                Daftar Penjualan
                            </a>
                        </li>
                    </ul>
                </section>
                <section class="penjualan">
                    <h3>Pembelian</h3>
                    <ul>
                        <li>
                            <a href="dataSupplier.php">
                                <i class="fas fa-store"></i>
                                Daftar Supplier
                            </a>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <a>
                                <i class="fas fa-receipt"></i>
                                Daftar Pembelian
                            </a>
                        </li>
                    </ul>
                </section>
            </nav>
        </header>

        <main class="content-wrap">
            <header class="content-head">
                <h1>Dashboard</h1>
                <div class="action">
                    <button onclick="location.href = 'logout.php';">
                        Sign out
                    </button>
                </div>
            </header>
            <div class="content">
                <section class="content-1">
                    <div class="box-1">
                        <div class="box-icon1">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 448 512">
                                <path d="M0 80V229.5c0 17 6.7 33.3 18.7 45.3l176 176c25 25 65.5 25 90.5 0L418.7 317.3c25-25 25-65.5 0-90.5l-176-176c-12-12-28.3-18.7-45.3-18.7H48C21.5 32 0 53.5 0 80zm112 96c-17.7 0-32-14.3-32-32s14.3-32 32-32s32 14.3 32 32s-14.3 32-32 32z" />
                            </svg>
                        </div>

                        <div class="box-content1">
                            <div class="big">
                                <span id="IdPenjualan">Barang Terjual</span>
                            </div>
                        </div>
                    </div>
                    <div class="box-1">
                        <div class="box-icon1">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 448 512">
                                <path d="M0 80V229.5c0 17 6.7 33.3 18.7 45.3l176 176c25 25 65.5 25 90.5 0L418.7 317.3c25-25 25-65.5 0-90.5l-176-176c-12-12-28.3-18.7-45.3-18.7H48C21.5 32 0 53.5 0 80zm112 96c-17.7 0-32-14.3-32-32s14.3-32 32-32s32 14.3 32 32s-14.3 32-32 32z" />
                            </svg>
                        </div>

                        <div class="box-content1">
                            <span class="big">angkadb</span>
                            Barang Terjual
                        </div>
                    </div>
                </section>
                <section class="content-2">
                    <div class="box-2">
                        <div class="box-icon2">
                            <h2> Laporan Laba Rugi </h2>
                        </div>

                        <div class="box-content2">
                            <h2> angka db </h2>
                        </div>
                    </div>
                </section>
            </div>
        </main>
    </div>
</body>

</html>