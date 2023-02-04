<?php
include 'koneksidb.php';
$id = $_GET['IdBarang'];
$query = "SELECT * FROM barang WHERE IdBarang='$id'";
$result = mysqli_query($connect, $query);
?>

<!DOCTYPE html>
<html>

<head>
    <title onclick="location.href = 'dashboard.php';">Dashboard</title>
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
                    <img src="img/avatar.jpg">
                </div>
                <figcaption>
                    Profile
                </figcaption>
            </figure>
            <nav>
                <section class="barang">
                    <h3>Barang</h3>
                    <ul>
                        <li>
                            <a href="dataBarang.php">
                                <i class="fas fa-tag"></i>
                                Data Barang
                            </a>
                        </li>
                    </ul>
                </section>
                <section class="penjualan">
                    <h3>Penjualan</h3>

                    <ul>
                        <li>
                            <a>
                                <i class="fas fa-user"></i>
                                Data Pelanggan
                            </a>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <a>
                                <i class="fas fa-cash-register"></i>
                                Data Penjualan
                            </a>
                        </li>
                    </ul>
                </section>
                <section class="penjualan">
                    <h3>Pembelian</h3>

                    <ul>
                        <li>
                            <a>
                                <i class="fas fa-store"></i>
                                Data Supplier
                            </a>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <a>
                                <i class="fas fa-receipt"></i>
                                Data Pembelian
                            </a>
                        </li>
                    </ul>
                </section>
            </nav>
        </header>

        <main class="content-wrap">
            <header class="content-head">
                <h1>Dashboard</h1>
            </header>
            <div class="content">
                <h2>Data Barang</h2>
                <section class="content-2">
                    <div class="box-2">
                        <div class="box-content2">
                            <?php
                            while ($d = mysqli_fetch_array($result)) {
                            ?>
                                <form method="post" action="editBarang_process.php">
                                    <table>
                                        <tr>
                                            <td>Nama</td>
                                            <td>
                                                <input type="hidden" name="IdBarang" value="<?php echo $d['IdBarang']; ?>">
                                                <input type="text" name="NamaBarang" value="<?php echo $d['NamaBarang']; ?>">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Keterangan</td>
                                            <td><input type="text" name="Keterangan" value="<?php echo $d['Keterangan']; ?>"></td>
                                        </tr>
                                        <tr>
                                            <td>Satuan</td>
                                            <td><input type="text" name="Satuan" value="<?php echo $d['Satuan']; ?>"></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td><input type="submit" value="SIMPAN"></td>
                                        </tr>
                                    </table>
                                </form>
                            <?php
                            }
                            ?>
                        </div>
                    </div>
                </section>
            </div>
        </main>
    </div>
</body>

</html>