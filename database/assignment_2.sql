-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2023 at 06:06 AM
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
('B0016', 'Selotip Bening 1/2\"', '', '13500', 'P210'),
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
  `Alamat` varchar(50) NOT NULL,
  `NoHp` varchar(13) NOT NULL,
  `IdPengguna` char(5) NOT NULL
) ;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`IdPelanggan`, `NamaPelanggan`, `Alamat`, `NoHp`, `IdPengguna`) VALUES
('CUS001', 'Intan', 'Jl. Agus Salim, Tangerang', '0821243210127', 'P210'),
('CUS002', 'Safira', 'Jl. Sidokabul, Yogyakarta', '0811928491824', 'P203'),
('CUS003', 'Achmad', 'Jl. Sunan Giri, Magetan', '0891297455911', 'P173'),
('CUS004', 'Risky', 'Jl. Martapura 5A, Surabaya', '0821975893434', 'P168'),
('CUS005', 'Imelda', 'Jl. Gedong 21A, Bandung', '0897235885555', 'P161'),
('CUS006', 'Zahwa', 'Jl. Anggrek 10B, Malang', '0829247859123', 'P121'),
('CUS007', 'Marion', 'Jl. Bukit Duri ED17, Jakarta Pusat', '0829592469456', 'P042'),
('CUS008', 'Jonathan', 'Jl. Kampung Melayu II, Tangerang', '0812931957191', 'P025'),
('CUS009', 'Evelyn', 'Jl. Sedayu, Cirebon, Jawa Barat', '0892975860346', 'P019'),
('CUS010', 'Hannan', 'Jl. Fatmawati 11, Semarang', '0829783946345', 'P006'),
('CUS011', 'Anisa', 'Jl. Krukuh Barat Daya 23D, Solo', '0819284597365', 'P006'),
('CUS012', 'Sukma', 'Jl. Sutomo Raya No.33B, Malang', '0826699554422', 'P210'),
('CUS013', 'Siska', 'Jl. Bukit Tinggi, Jakarta', '0858578923495', 'P019'),
('CUS014', 'Samuel', 'Jl. Lingkar Nagreg, Jawa Barat', '081734583456', 'P203'),
('CUS015', 'Daraputri', 'Jl. Melati ED 5, Surabaya', '082959345345', 'P025'),
('CUS016', 'Elisya', 'Jl. Susun Desa 2, Jakarta', '081939696849', 'P173'),
('CUS017', 'Farhan', 'Jl. Pasar Kembang, Solo', '089974583455', 'P042'),
('CUS018', 'Rizzky', 'Jl. Indah 15, Palopo', '082989325403', 'P168'),
('CUS019', 'Dimas', 'Jl. Susun Semanggi, Jakarta', '089482734892', 'P121'),
('CUS020', 'Sheina', 'Jl. Nori Barat Daya No.91, Jakarta Timur', '088971393591', 'P161');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_d`
--

CREATE TABLE `pembelian_d` (
  `IdPembelian` char(8) NOT NULL,
  `IdBarang` char(5) NOT NULL,
  `JumlahPembelian` varchar(3) NOT NULL,
  `HargaBeli` varchar(15) NOT NULL,
  `IdPengguna` char(5) NOT NULL
) ;

--
-- Dumping data for table `pembelian_d`
--

INSERT INTO `pembelian_d` (`IdPembelian`, `IdBarang`, `JumlahPembelian`, `HargaBeli`, `IdPengguna`) VALUES
('INV00100', 'B0016', '10', '13500', 'P019'),
('INV00105', 'B0081', '10', '4000', 'P006'),
('INV00110', 'B0092', '12', '52000', 'P025'),
('INV00115', 'B0100', '7', '16000', 'P042'),
('INV00120', 'B0201', '15', '78000', 'P121'),
('INV00125', 'B0329', '5', '23000', 'P161'),
('INV00130', 'B1223', '12', '5000', 'P168'),
('INV00135', 'B1619', '12', '25000', 'P173'),
('INV00140', 'B3065', '7', '37000', 'P203'),
('INV00145', 'B4211', '7', '45000', 'P210'),
('INV00150', 'B0100', '5', '16000', 'P006'),
('INV00155', 'B0329', '5', '23000', 'P019'),
('INV00160', 'B0081', '10', '4000', 'P025'),
('INV00165', 'B0016', '15', '13500', 'P042'),
('INV00170', 'B1223', '12', '5000', 'P121'),
('INV00175', 'B4211', '5', '45000', 'P161'),
('INV00180', 'B3065', '10', '37000', 'P168'),
('INV00185', 'B1619', '12', '25000', 'P173'),
('INV00190', 'B0201', '5', '78000', 'P203'),
('INV00195', 'B0092', '7', '52000', 'P210');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_h`
--

CREATE TABLE `pembelian_h` (
  `IdPembelian` char(8) NOT NULL,
  `Tanggal` date NOT NULL,
  `IdSupplier` varchar(6) NOT NULL,
  `IdPengguna` char(5) NOT NULL
) ;

--
-- Dumping data for table `pembelian_h`
--

INSERT INTO `pembelian_h` (`IdPembelian`, `Tanggal`, `IdSupplier`, `IdPengguna`) VALUES
('INV00100', '2022-12-04', 'SUP001', 'P019'),
('INV00105', '2022-12-04', 'SUP002', 'P006'),
('INV00110', '2022-12-04', 'SUP003', 'P025'),
('INV00115', '2022-12-05', 'SUP004', 'P042'),
('INV00120', '2022-12-05', 'SUP005', 'P121'),
('INV00125', '2022-12-05', 'SUP006', 'P161'),
('INV00130', '2022-12-05', 'SUP007', 'P168'),
('INV00135', '2022-12-06', 'SUP008', 'P173'),
('INV00140', '2022-12-06', 'SUP009', 'P203'),
('INV00145', '2022-12-06', 'SUP010', 'P210'),
('INV00150', '2022-12-07', 'SUP020', 'P006'),
('INV00155', '2022-12-07', 'SUP019', 'P019'),
('INV00160', '2022-12-07', 'SUP018', 'P025'),
('INV00165', '2022-12-08', 'SUP017', 'P042'),
('INV00170', '2022-12-08', 'SUP016', 'P121'),
('INV00175', '2022-12-08', 'SUP015', 'P161'),
('INV00180', '2022-12-08', 'SUP014', 'P168'),
('INV00185', '2022-12-08', 'SUP013', 'P173'),
('INV00190', '2022-12-09', 'SUP012', 'P203'),
('INV00195', '2022-12-09', 'SUP011', 'P210');

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
-- Table structure for table `penjualan_d`
--

CREATE TABLE `penjualan_d` (
  `IdPenjualan` char(8) NOT NULL,
  `IdBarang` char(5) NOT NULL,
  `JumlahPenjualan` varchar(3) NOT NULL,
  `HargaJual` varchar(15) NOT NULL,
  `IdPengguna` char(5) NOT NULL
) ;

--
-- Dumping data for table `penjualan_d`
--

INSERT INTO `penjualan_d` (`IdPenjualan`, `IdBarang`, `JumlahPenjualan`, `HargaJual`, `IdPengguna`) VALUES
('SLD00100', 'B0016', '7', '16000', 'P121'),
('SLD00105', 'B0081', '8', '10000', 'P042'),
('SLD00110', 'B0092', '10', '55000', 'P025'),
('SLD00115', 'B0100', '7', '18000', 'P019'),
('SLD00120', 'B0201', '13', '82000', 'P006'),
('SLD00125', 'B0329', '5', '25000', 'P161'),
('SLD00130', 'B1223', '10', '12000', 'P168'),
('SLD00135', 'B1619', '10', '30000', 'P173'),
('SLD00140', 'B3065', '5', '40000', 'P203'),
('SLD00145', 'B4211', '7', '50000', 'P210'),
('SLD00150', 'B0100', '4', '18000', 'P006'),
('SLD00155', 'B0329', '5', '25000', 'P019'),
('SLD00160', 'B0081', '8', '10000', 'P025'),
('SLD00165', 'B0016', '13', '15000', 'P042'),
('SLD00170', 'B1223', '9', '12000', 'P121'),
('SLD00175', 'B4211', '5', '50000', 'P161'),
('SLD00180', 'B3065', '8', '40000', 'P168'),
('SLD00185', 'B1619', '12', '30000', 'P173'),
('SLD00190', 'B0201', '3', '82000', 'P203'),
('SLD00195', 'B0092', '5', '55000', 'P210');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_h`
--

CREATE TABLE `penjualan_h` (
  `IdPenjualan` char(8) NOT NULL,
  `Tanggal` date NOT NULL,
  `IdPelanggan` varchar(6) NOT NULL,
  `IdPengguna` char(5) NOT NULL
) ;

--
-- Dumping data for table `penjualan_h`
--

INSERT INTO `penjualan_h` (`IdPenjualan`, `Tanggal`, `IdPelanggan`, `IdPengguna`) VALUES
('SLD00145', '2023-02-10', 'CUS001', 'P210'),
('SLD00140', '2022-12-09', 'CUS002', 'P203'),
('SLD00135', '2022-12-09', 'CUS003', 'P173'),
('SLD00130', '2022-12-08', 'CUS004', 'P168'),
('SLD00125', '2022-12-08', 'CUS005', 'P161'),
('SLD00120', '2022-12-07', 'CUS006', 'P006'),
('SLD00115', '2022-12-07', 'CUS007', 'P019'),
('SLD00110', '2022-12-06', 'CUS008', 'P025'),
('SLD00105', '2022-12-06', 'CUS009', 'P042'),
('SLD00100', '2022-12-06', 'CUS010', 'P121'),
('SLD00150', '2022-12-10', 'CUS011', 'P006'),
('SLD00155', '2022-12-11', 'CUS012', 'P019'),
('SLD00160', '2022-12-11', 'CUS013', 'P025'),
('SLD00165', '2022-12-11', 'CUS014', 'P042'),
('SLD00170', '2022-12-12', 'CUS015', 'P121'),
('SLD00175', '2022-12-12', 'CUS016', 'P161'),
('SLD00180', '2022-12-13', 'CUS017', 'P168'),
('SLD00185', '2022-12-13', 'CUS018', 'P173'),
('SLD00190', '2022-12-13', 'CUS019', 'P203'),
('SLD00195', '2022-12-14', 'CUS020', 'P210');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `IdSupplier` varchar(6) NOT NULL,
  `NamaSupplier` varchar(20) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `NoHp` varchar(13) NOT NULL,
  `IdPengguna` char(5) NOT NULL
) ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`IdSupplier`, `NamaSupplier`, `Alamat`, `NoHp`, `IdPengguna`) VALUES
('SUP001', 'Danty', 'Jl. Elang 12 No. 7 Bintaro, Tangerang', '0821243190127', 'P019'),
('SUP002', 'Karina', 'Jl. Kasuari AD 19 Grogol, Jakarta Barat', '0821243190127', 'P006'),
('SUP003', 'Agustina', 'Jl. Selokan Mataram, Semarang', '0823178909875', 'P025'),
('SUP004', 'Bayu', 'Jl. Ahmad Dahlan, Yogyakarta', '0818907654566', 'P042'),
('SUP005', 'Aji', 'Jl. Wijaya Kusuma, Malang', '0892389645324', 'P121'),
('SUP006', 'Surya', 'Jl. Pulo Ayang II, DKI Jakarta', '0823189734553', 'P161'),
('SUP007', 'Putri', 'Jl. Iskandar Muda, Semarang', '0818889760212', 'P168'),
('SUP008', 'Ayu', 'Jl. Raya Cakung, DKI Jakarta', '0821350139411', 'P173'),
('SUP009', 'Margaretha', 'Jl. MH Thamrin, Madiun', '0892318294412', 'P203'),
('SUP010', 'Sania', 'Jl. Agus Salim, Gresik', '0821394194756', 'P210'),
('SUP011', 'Maharani', 'Jl. Soekarno Hatta, Bandung', '0891924812495', 'P006'),
('SUP012', 'Sapto', 'Jl. Bhakti Asih, Sidoarjo', '0815856792342', 'P019'),
('SUP013', 'Cassandra', 'Jl. Nitikan, Surabaya', '0820291402821', 'P025'),
('SUP014', 'Sintya', 'Jl. Imam Bonjol, Surabaya', '0891924917541', 'P042'),
('SUP015', 'Wahyu', 'Jl. Situbongo, Banyuwangi', '0821875823519', 'P121'),
('SUP016', 'Bagus', 'Jl. Slamet Riyadi, Solo', '0829183513434', 'P161'),
('SUP017', 'Ferdi', 'Jl. Kencana, Surabaya', '0819185345496', 'P168'),
('SUP018', 'Bagas', 'Jl. Pisang, Tangerang', '0823498899455', 'P173'),
('SUP019', 'Arjun', 'Jl. Jend Urip Sumuharjo, Tangerang', '0897896784321', 'P203'),
('SUP020', 'Jesselin', 'Jl. Ki Hajar Dewantara, Malang', '0897867890982', 'P210');

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
  ADD KEY `IdPengguna` (`IdPengguna`);

--
-- Indexes for table `pembelian_d`
--
ALTER TABLE `pembelian_d`
  ADD PRIMARY KEY (`IdPembelian`),
  ADD KEY `IdBarang` (`IdBarang`),
  ADD KEY `IdPengguna` (`IdPengguna`);

--
-- Indexes for table `pembelian_h`
--
ALTER TABLE `pembelian_h`
  ADD PRIMARY KEY (`IdPembelian`),
  ADD KEY `IdSupplier` (`IdSupplier`),
  ADD KEY `IdPengguna` (`IdPengguna`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`IdPengguna`),
  ADD KEY `IdAkses` (`IdAkses`);

--
-- Indexes for table `penjualan_d`
--
ALTER TABLE `penjualan_d`
  ADD PRIMARY KEY (`IdPenjualan`),
  ADD KEY `IdBarang` (`IdBarang`),
  ADD KEY `IdPengguna` (`IdPengguna`);

--
-- Indexes for table `penjualan_h`
--
ALTER TABLE `penjualan_h`
  ADD PRIMARY KEY (`IdPelanggan`),
  ADD KEY `IdPelanggan` (`IdPelanggan`),
  ADD KEY `IdPengguna` (`IdPengguna`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`IdSupplier`),
  ADD KEY `IdPengguna` (`IdPengguna`);

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
  ADD CONSTRAINT `pelanggan_ibfk_1` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`) ON UPDATE CASCADE;

--
-- Constraints for table `pembelian_d`
--
ALTER TABLE `pembelian_d`
  ADD CONSTRAINT `pembelian_d_ibfk_1` FOREIGN KEY (`IdBarang`) REFERENCES `barang` (`IdBarang`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pembelian_d_ibfk_2` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`) ON UPDATE CASCADE;

--
-- Constraints for table `pembelian_h`
--
ALTER TABLE `pembelian_h`
  ADD CONSTRAINT `pembelian_h_ibfk_1` FOREIGN KEY (`IdSupplier`) REFERENCES `supplier` (`IdSupplier`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pembelian_h_ibfk_2` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`) ON UPDATE CASCADE;

--
-- Constraints for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `pengguna_ibfk_1` FOREIGN KEY (`IdAkses`) REFERENCES `hakakses` (`IdAkses`) ON UPDATE CASCADE;

--
-- Constraints for table `penjualan_d`
--
ALTER TABLE `penjualan_d`
  ADD CONSTRAINT `penjualan_d_ibfk_1` FOREIGN KEY (`IdBarang`) REFERENCES `barang` (`IdBarang`) ON UPDATE CASCADE,
  ADD CONSTRAINT `penjualan_d_ibfk_2` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`) ON UPDATE CASCADE;

--
-- Constraints for table `penjualan_h`
--
ALTER TABLE `penjualan_h`
  ADD CONSTRAINT `penjualan_h_ibfk_1` FOREIGN KEY (`IdPelanggan`) REFERENCES `pelanggan` (`IdPelanggan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `penjualan_h_ibfk_2` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`) ON UPDATE CASCADE;

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
