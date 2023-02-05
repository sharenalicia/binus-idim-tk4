<!-- show data as table from mysql and make a html like dashboard.php -->
<?php
include "koneksidb.php";
$query = "SELECT * FROM barang";
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
        
            <div class="container">
                <h2>Daftar Barang</h2>
                    <div class="box-2">
                            <table class="content-table">
                                <tr>
                                    <th>No</th>
                                    <th>Id Barang</th>
                                    <th>Nama Barang</th>
                                    <th>Keterangan</th>
                                    <th>Satuan</th>
                                    <th>Pengaturan</th>
                                </tr>
                                <?php
                                $no = 1;
                                while ($row = mysqli_fetch_array($result)) {
                                ?>
                                    <tr>
                                        <td><?php echo $no++; ?></td>
                                        <td><?php echo $row['IdBarang']; ?></td>
                                        <td><?php echo $row['NamaBarang']; ?></td>
                                        <td><?php echo $row['Keterangan']; ?></td>
                                        <td><?php echo $row['Satuan']; ?></td>
                                        <td>
                                            <a class="edit" href="editBarang.php?IdBarang=<?php echo $row['IdBarang']; ?>&IdPengguna=<?php echo $row['IdPengguna']; ?>">Edit</a>
                                            <a class="delete" href="hapusBarang.php?IdBarang=<?php echo $row['IdBarang']; ?>">Hapus</a>
                                        </td>
                                    </tr>
                                <?php
                                }
                                ?>
                            </table>
                    </div>

                    <div class="action2">
                        <button onclick="location.href = 'tambahBarang.php';">
                            +Tambah Barang
                        </button>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>

</html>