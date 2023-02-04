<?php
include 'koneksidb.php';
$query = "SELECT * FROM pengguna";
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
                            <form method="post" action="tambahBarang_process.php">
                                <table>
                                    <tr>
                                        <td>Id Barang</td>
                                        <td>
                                            <input type="text" name="IdBarang">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Nama</td>
                                        <td>
                                            <input type="text" name="NamaBarang">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Keterangan</td>
                                        <td><input type="text" name="Keterangan"></td>
                                    </tr>
                                    <tr>
                                        <td>Satuan</td>
                                        <td><input type="text" name="Satuan"></td>
                                    </tr>
                                    <tr>
                                        <td>Id Pengguna</td>
                                        <td>
                                            <select name="IdPengguna">
                                                <?php
                                                $no = 1;
                                                while ($row = mysqli_fetch_array($result)) {
                                                    echo "<option value='" . $row['IdPengguna'] . "'>" . $row['IdPengguna'] . "</option>";
                                                }
                                                ?>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="submit" value="SIMPAN"></td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>
                </section>
            </div>
        </main>
    </div>
</body>

</html>