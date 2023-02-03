<?php
include "koneksidb.php";
session_start();
if (!isset($_SESSION['idpengguna'])){
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

        <main class="content-wrap">
            <header class="content-head">
			    <h1>Dashboard</h1>

                <div class="action">
				    <button>
					    Sign out
				    </button>
			    </div>
		    </header>
            <div class="content">
                <section class="content-1">
                    <div class="box-1">
                        <div class="box-icon1">
                            <h2> Jumlah Penjualan </h2>
                        </div>

                        <div class="box-content1">
                            <h2> angka db </h2>
                        </div>
                    </div>
                    <div class="box-1">
                        <div class="box-icon1">
                            <h2> Jumlah Penjualan </h2>
                        </div>

                        <div class="box-content1">
                            <h2> angka db </h2>
                        </div>
                    </div>
                </section>
                <section class="content-2">
                    <div class="box-2">
                        <div class="box-icon2">
                            <h2> Jumlah Penjualan </h2>
                        </div>

                        <div class="box-content2">
                            <h2> angka db </h2>
                        </div>
                    </div>
                    <div class="box-2">
                        <div class="box-icon2">
                            <h2> Jumlah Penjualan </h2>
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