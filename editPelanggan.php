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
                            <a>
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
                            <a>
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
            </header>
            <div class="content-3">
                <h2>Edit Data Pelanggan</h2>
                <section class="input">
                    <div class="box-input">
                        <div class="box2">
                            <?php
                            while ($d = mysqli_fetch_array($result)) {
                            ?>
                                <form method="post" action="editPelanggan_process.php">
                                    <table>
                                        <tr>
                                            <td>Nama</td>
                                            <td>
                                                <input type="hidden" name="IdPelanggan" value="<?php echo $d['IdPelanggan']; ?>">
                                                <input type="text" name="NamaPelanggan" value="<?php echo $d['NamaPelanggan']; ?>" class="kolom">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Alamat</td>
                                            <td>
                                                <input type="text" name="Alamat" value="<?php echo $d['Alamat']; ?>" class="kolom">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>No Hp</td>
                                            <td>
                                                <input type="text" name="NoHp" value="<?php echo $d['NoHp']; ?>" class="kolom">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Id Penjualan</td>
                                            <td>
                                                <select name="IdPenjualan" class="kolom">
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
                                            <td>
                                                <input type="submit" value="SIMPAN" class="simpan">
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