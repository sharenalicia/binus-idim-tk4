<?php
include 'koneksidb.php';
$id = $_GET['IdPelanggan'];
$IdPenjualan = $_GET['IdPenjualan'];
$query = "SELECT * FROM pelanggan WHERE IdPelanggan='$id'";
$result = mysqli_query($connect, $query);

$query = "SELECT * FROM penjualan";
$result2 = mysqli_query($connect, $query);
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
                            <a href="dataPelanggan.php">
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
                <h2>Data Pelanggan</h2>
                <section class="content-2">
                    <div class="box-2">
                        <div class="box-content2">
                            <?php
                            while ($d = mysqli_fetch_array($result)) {
                            ?>
                                <form method="post" action="editPelanggan_process.php">
                                    <table>
                                        <tr>
                                            <td>Nama</td>
                                            <td>
                                                <input type="hidden" name="IdPelanggan" value="<?php echo $d['IdPelanggan']; ?>">
                                                <input type="text" name="NamaPelanggan" value="<?php echo $d['NamaPelanggan']; ?>">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Keterangan</td>
                                            <td><input type="text" name="Alamat" value="<?php echo $d['Alamat']; ?>"></td>
                                        </tr>
                                        <tr>
                                            <td>Satuan</td>
                                            <td><input type="text" name="NoHp" value="<?php echo $d['NoHp']; ?>"></td>
                                        </tr>
                                        <tr>
                                            <td>Id Pengguna</td>
                                            <td>
                                                <select name="IdPenjualan">
                                                    <?php
                                                    $no = 1;
                                                    while ($row = mysqli_fetch_array($result2)) {
                                                        if ($row['IdPenjualan'] == $IdPenjualan) {
                                                            echo "<option selected value='" . $row['IdPenjualan'] . "'>" . $row['IdPenjualan'] . "</option>";
                                                        } else
                                                            echo "<option value='" . $row['IdPenjualan'] . "'>" . $row['IdPenjualan'] . "</option>";
                                                    }
                                                    ?>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><input type="submit" value="SIMPAN">
                                            </td>
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