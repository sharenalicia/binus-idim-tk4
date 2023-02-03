-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 04:26 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `IdBarang` char(5) NOT NULL,
  `NamaBarang` char(20) NOT NULL,
  `Keterangan` char(10) DEFAULT NULL,
  `Satuan` varchar(10) DEFAULT NULL,
  `IdPengguna` char(5) NOT NULL
) ;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`IdBarang`, `NamaBarang`, `Keterangan`, `Satuan`, `IdPengguna`) VALUES
('B0016', 'Selotip Bening 1/2 i', '', '13500', 'P210'),
('B0081', 'Pulpen Standard 0,5', '', '4000', 'P203'),
('B0092', 'Pensil Warna', 'Isi 18 war', '52000', 'P161'),
('B0100', 'Rautan Pensil', '', '16000', 'P121'),
('B0201', 'Buku Tulis Campus', '1 pack isi', '78000', 'P168'),
('B0329', 'Cat Acrylic', 'Ukuran 100', '23000', 'P019'),
('B1223', 'Buku Gambar', 'Ukuran A3', '5000', 'P006'),
('B1619', 'Kanvas', '', '25000', 'P042'),
('B3065', 'Pensil 2B', '1 pack isi', '37000', 'P025'),
('B4211', 'Tempat Pensil', 'Warna Hija', '45000', 'P173');

-- --------------------------------------------------------

--
-- Table structure for table `hakakses`
--

CREATE TABLE `hakakses` (
  `IdAkses` char(5) NOT NULL,
  `NamaAkses` char(15) NOT NULL,
  `Keterangan` char(10) DEFAULT NULL
) ;

--
-- Dumping data for table `hakakses`
--

INSERT INTO `hakakses` (`IdAkses`, `NamaAkses`, `Keterangan`) VALUES
('ID101', 'Sales01', 'User'),
('ID102', 'Sales02', 'User'),
('ID103', 'Gudang01', 'Admin'),
('ID104', 'Gudang02', 'Admin'),
('ID105', 'Gudang03', 'User'),
('ID106', 'Staff01', 'User'),
('ID107', 'Staff02', 'User'),
('ID108', 'Finance01', 'Admin'),
('ID109', 'Finance02', 'Admin'),
('ID110', 'Finance03', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `IdPelanggan` varchar(6) NOT NULL,
  `NamaPelanggan` varchar(20) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `NoHp` varchar(13) NOT NULL,
  `IdPenjualan` char(8) NOT NULL
) ;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`IdPelanggan`, `NamaPelanggan`, `Alamat`, `NoHp`, `IdPenjualan`) VALUES
('CUS001', 'Intan', 'Jl. Agus Salim, Tangerang', '0821243210127', 'SLD00100'),
('CUS002', 'Safira', 'Jl. Sidokabul, Yogyakarta', '0811928491824', 'SLD00105'),
('CUS003', 'Achmad', 'Jl. Sunan Giri, Magetan', '0891297455911', 'SLD00110'),
('CUS004', 'Risky', 'Jl. Martapura 5A, Surabaya', '0821975893434', 'SLD00115'),
('CUS005', 'Imelda', 'Jl. Gedong, Bandung', '0897235885555', 'SLD00120'),
('CUS006', 'Zahwa', 'Jl. Anggrek 10B, Malang', '0829247859123', 'SLD00125'),
('CUS007', 'Marion', 'Jl. Bukit Duri, Jakarta', '0829592469456', 'SLD00130'),
('CUS008', 'Jonathan', 'Jl. KP Melayu, Tangerang', '0812931957191', 'SLD00135'),
('CUS009', 'Evelyn', 'Jl. Sedayu, Cirebon', '0892975860346', 'SLD00140'),
('CUS010', 'Hannan', 'Jl. Fatmawati 11, Semarang', '0829783946345', 'SLD00145'),
('CUS011', 'Anisa', 'Jl. Krukuh, Solo', '0819284597365', 'SLD00150'),
('CUS012', 'Sukma', 'Jl. Sutomo, Malang', '0826699554422', 'SLD00155'),
('CUS013', 'Siska', 'Jl. Bukit Tinggi, Jakarta', '0858578923495', 'SLD00160'),
('CUS014', 'Samuel', 'Jl. Lingkar Nagreg, Jawa Barat', '081734583456', 'SLD00165'),
('CUS015', 'Dara', 'Jl. Melati ED 5, Surabaya', '082959345345', 'SLD00170'),
('CUS016', 'Elis', 'Jl. Susun Desa 2, Jakarta', '081939696849', 'SLD00142'),
('CUS017', 'Farhan', 'Jl. Pasar Kembang, Solo', '089974583455', 'SLD00215'),
('CUS018', 'Rizzki', 'Jl. Indah 15, Palopo', '082989325403', 'SLD10382'),
('CUS019', 'Dimas', 'Jl. Susun Semanggi, Jakarta', '089482734892', 'SLD00603'),
('CUS020', 'Sherina', 'Jl. Mpok Nori, Jakarta Timur', '088971393591', 'SLD01079');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `IdPembelian` char(8) NOT NULL,
  `JumlahPembelian` varchar(3) NOT NULL,
  `HargaBeli` varchar(15) NOT NULL,
  `IdPengguna` char(5) NOT NULL,
  `IdBarang` char(5) NOT NULL
) ;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`IdPembelian`, `JumlahPembelian`, `HargaBeli`, `IdPengguna`, `IdBarang`) VALUES
('INV00093', '5', '37000', 'P025', 'B3065'),
('INV00100', '10', '13500', 'P210', 'B0016'),
('INV00105', '10', '4000', 'P203', 'B0081'),
('INV00110', '12', '52000', 'P161', 'B0092'),
('INV00115', '7', '16000', 'P121', 'B0100'),
('INV00116', '10', '45000', 'P173', 'B4211'),
('INV00120', '15', '78000', 'P168', 'B0201'),
('INV00125', '5', '23000', 'P019', 'B0329'),
('INV00130', '12', '5000', 'P006', 'B1223'),
('INV00135', '12', '25000', 'P042', 'B1619'),
('INV00140', '7', '37000', 'P025', 'B3065'),
('INV00142', '35', '16000', 'P121', 'B0100'),
('INV00145', '7', '45000', 'P173', 'B4211'),
('INV00150', '5', '16000', 'P121', 'B0100'),
('INV00155', '5', '23000', 'P019', 'B0329'),
('INV00160', '10', '4000', 'P203', 'B0081'),
('INV00165', '15', '13500', 'P210', 'B0016'),
('INV00170', '10', '5000', 'P006', 'B1223'),
('INV00172', '20', '78000', 'P168', 'B0201'),
('INV00184', '10', '37000', 'P025', 'B3065'),
('INV00215', '7', '25000', 'P042', 'B1619'),
('INV00218', '10', '4000', 'P203', 'B0081'),
('INV00429', '15', '45000', 'P173', 'B4211'),
('INV00603', '5', '25000', 'P042', 'B1619'),
('INV00637', '5', '52000', 'P161', 'B0092'),
('INV00731', '25', '4000', 'P203', 'B0081'),
('INV01043', '15', '5000', 'P006', 'B1223'),
('INV01079', '7', '37000', 'P025', 'B3065'),
('INV01204', '5', '52000', 'P161', 'B0092'),
('INV01962', '7', '13500', 'P210', 'B0016'),
('INV02104', '20', '5000', 'P006', 'B1223'),
('INV02561', '20', '4000', 'P203', 'B0081'),
('INV10382', '15', '23000', 'P019', 'B0329'),
('INV10627', '30', '13500', 'P210', 'B0016'),
('INV11705', '15', '5000', 'P006', 'B1223');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `IdPengguna` char(5) NOT NULL,
  `NamaPengguna` char(15) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `NamaDepan` char(8) NOT NULL,
  `NamaBelakang` char(10) DEFAULT NULL,
  `NoHp` varchar(13) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `IdAkses` char(5) NOT NULL
) ;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`IdPengguna`, `NamaPengguna`, `Password`, `NamaDepan`, `NamaBelakang`, `NoHp`, `Alamat`, `IdAkses`) VALUES
('P006', 'Bayu', 'bayu006', 'Bayu', 'Susilo', '089644325786', 'Jl. Irigasi No. 38, Bekasi Bar', 'ID105'),
('P019', 'Bagas', 'bagas019', 'Nabagus', 'Cahyo', '089620132854', 'Jl. Bulan 1 No. 12, Kebon Nana', 'ID104'),
('P025', 'Ayudia', '23ayudia', 'Ayudia', 'Karina', '087723162083', 'Jl. Juanda HE 3, Jakarta Pusat', 'ID109'),
('P042', 'Andhea', '42andhea', 'Andhea', 'Putri', '081348711906', 'Jl. Metro AB 26, Grogol', 'ID101'),
('P121', 'Joko', 'joko121', 'Jokoandi', 'Nur', '081289720314', 'Komp. Calissa Nomor 9, Bintaro', 'ID103'),
('P161', 'Kemal', 'kemal161', 'Kemal', 'Muhammad', '085793201142', 'Jl. Merdeka 7 No. 017, Rempoa', 'ID106'),
('P168', 'Sheryl', '168sheryl', 'Sherylia', 'Pratiwi', '085811327849', 'Jl. Kucica No. 19, Depok', 'ID108'),
('P173', 'Ditto', 'ditto173', 'Ditto', 'Prasetyo', '081376643129', 'Jl. Otista Raya 2, Jakarta Tim', 'ID102'),
('P203', 'Shafa', '203shafa', 'Shafaria', 'Zahra', '089512750112', 'Jl. Perkici 5 EC 4, Tangerang', 'ID110'),
('P210', 'Kinara', '210kin', 'Kinara', 'Xihiro', '085836228746', 'Jl. Babakan K17, Cinere', 'ID107');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `IdPenjualan` char(8) NOT NULL,
  `JumlahPenjualan` varchar(3) NOT NULL,
  `HargaJual` varchar(15) NOT NULL,
  `IdPengguna` char(5) NOT NULL,
  `IdBarang` char(5) NOT NULL
) ;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`IdPenjualan`, `JumlahPenjualan`, `HargaJual`, `IdPengguna`, `IdBarang`) VALUES
('SLD00093', '2', '40000', 'P025', 'B3065'),
('SLD00100', '8', '15000', 'P210', 'B0016'),
('SLD00105', '9', '10000', 'P203', 'B0081'),
('SLD00110', '10', '55000', 'P161', 'B0092'),
('SLD00115', '7', '18000', 'P121', 'B0100'),
('SLD00116', '6', '50000', 'P173', 'B4211'),
('SLD00120', '13', '82000', 'P168', 'B0201'),
('SLD00125', '5', '25000', 'P019', 'B0329'),
('SLD00130', '10', '12000', 'P006', 'B1223'),
('SLD00135', '10', '30000', 'P042', 'B1619'),
('SLD00140', '5', '40000', 'P025', 'B3065'),
('SLD00142', '25', '18000', 'P121', 'B0100'),
('SLD00145', '7', '50000', 'P173', 'B4211'),
('SLD00150', '4', '18000', 'P121', 'B0100'),
('SLD00155', '5', '25000', 'P019', 'B0329'),
('SLD00160', '8', '10000', 'P203', 'B0081'),
('SLD00165', '13', '15000', 'P210', 'B0016'),
('SLD00170', '9', '12000', 'P006', 'B1223'),
('SLD00172', '14', '82000', 'P168', 'B0201'),
('SLD00184', '8', '40000', 'P025', 'B3065'),
('SLD00215', '3', '30000', 'P042', 'B1619'),
('SLD00218', '9', '10000', 'P203', 'B0081'),
('SLD00429', '10', '50000', 'P173', 'B4211'),
('SLD00603', '5', '30000', 'P042', 'B1619'),
('SLD00637', '4', '55000', 'P161', 'B0092'),
('SLD00731', '20', '10000', 'P203', 'B0081'),
('SLD01043', '9', '12000', 'P006', 'B1223'),
('SLD01079', '6', '40000', 'P025', 'B3065'),
('SLD01204', '1', '55000', 'P161', 'B0092'),
('SLD01962', '7', '15000', 'P210', 'B0016'),
('SLD02104', '16', '12000', 'P006', 'B1223'),
('SLD02561', '17', '10000', 'P203', 'B0081'),
('SLD10382', '7', '25000', 'P019', 'B0329'),
('SLD10627', '21', '15000', 'P210', 'B0016'),
('SLD11705', '12', '12000', 'P006', 'B1223');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `IdSupplier` varchar(6) NOT NULL,
  `NamaSupplier` varchar(20) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `NoHp` varchar(13) NOT NULL,
  `IdPembelian` char(8) NOT NULL
) ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`IdSupplier`, `NamaSupplier`, `Alamat`, `NoHp`, `IdPembelian`) VALUES
('SUP001', 'Danty', 'Jl. Elang 12 No. 7 Bintaro, Ta', '0821243190127', 'INV00100'),
('SUP002', 'Karina', 'Jl. Kasuari AD 19 Grogol, Jaka', '0813179921042', 'INV00105'),
('SUP003', 'Agustina', 'Jl. Selokan Mataram 20 , Semar', '0823178909875', 'INV00110'),
('SUP004', 'Bayu', 'Jl. Ahmad Dahlan, Yogyakarta', '0818907654566', 'INV00115'),
('SUP005', 'Aji', 'Jl. Wijaya Kusuma, Malang', '0892389645324', 'INV00120'),
('SUP006', 'Surya', 'Jl. Pulo Ayang II, DKI Jakarta', '0823189734553', 'INV00125'),
('SUP007', 'Putri', 'Jl. Iskandar Muda, Semarang', '0818889760212', 'INV00130'),
('SUP008', 'Ayu', 'Jl. Raya Cakung, DKI Jakarta', '0821350139411', 'INV00135'),
('SUP009', 'Margaretha', 'Jl. MH Thamrin, Madiun', '0892318294412', 'INV00140'),
('SUP010', 'Sania', 'Jl. Agus Salim, Gresik', '0821394194756', 'INV00145'),
('SUP011', 'Maharani', 'Jl. Soekarno Hatta, Bandung', '0891924812495', 'INV00150'),
('SUP012', 'Sapto', 'Jl. Bhakti Asih, Sidoarjo', '0815856792342', 'INV00155'),
('SUP013', 'Cassandra', 'Jl. Nitikan 9, Surabaya', '0820291402821', 'INV00160'),
('SUP014', 'Sintya', 'Jl. Imam Bonjol, Surabaya', '0891924917541', 'INV00165'),
('SUP015', 'Wahyu', 'Jl. Situbongo, Banyuwangi', '0821875823519', 'INV00170'),
('SUP016', 'Bagus', 'Jl. Slamet Riyadi, Solo', '0829183513434', 'INV00142'),
('SUP017', 'Ferdi', 'Jl. Kencana 15, Surabaya', '0819185345496', 'INV00215'),
('SUP018', 'Bagas', 'Jl. Pisang, Tangerang', '0823498899455', 'INV10382'),
('SUP019', 'Arjun', 'Jl. Jend Urip Sumuharjo, Tange', '0897896784321', 'INV00603'),
('SUP020', 'Jesselin', 'Jl. Ki Hajar Dewantara, Malang', '0897867890982', 'INV01079');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`IdBarang`),
  ADD KEY `IdPengguna` (`IdPengguna`);

--
-- Indexes for table `hakakses`
--
ALTER TABLE `hakakses`
  ADD PRIMARY KEY (`IdAkses`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`IdPelanggan`),
  ADD KEY `IdPenjualan` (`IdPenjualan`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`IdPembelian`),
  ADD KEY `IdPengguna` (`IdPengguna`),
  ADD KEY `IdBarang` (`IdBarang`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`IdPengguna`),
  ADD KEY `IdAkses` (`IdAkses`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`IdPenjualan`),
  ADD KEY `IdPengguna` (`IdPengguna`),
  ADD KEY `IdBarang` (`IdBarang`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`IdSupplier`),
  ADD KEY `IdPembelian` (`IdPembelian`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`) ON UPDATE CASCADE;

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `pelanggan_ibfk_1` FOREIGN KEY (`IdPenjualan`) REFERENCES `penjualan` (`IdPenjualan`) ON UPDATE CASCADE;

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pembelian_ibfk_2` FOREIGN KEY (`IdBarang`) REFERENCES `barang` (`IdBarang`) ON UPDATE CASCADE;

--
-- Constraints for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `pengguna_ibfk_1` FOREIGN KEY (`IdAkses`) REFERENCES `hakakses` (`IdAkses`) ON UPDATE CASCADE;

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`) ON UPDATE CASCADE,
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`IdBarang`) REFERENCES `barang` (`IdBarang`) ON UPDATE CASCADE;

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`IdPembelian`) REFERENCES `pembelian` (`IdPembelian`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
