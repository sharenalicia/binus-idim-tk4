<?php
include "koneksi.php";
session_start();
if (!isset($_SESSION['username'])){
    header('location:login.php');
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
                            <a>
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
    </div>
</body>

</html>