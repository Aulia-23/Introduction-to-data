-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2023 at 04:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `satuan` int(100) NOT NULL,
  `id_pengguna` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `keterangan`, `satuan`, `id_pengguna`) VALUES
(1, 'Sandal', 'Sandal Miniso putih', 45000, 1),
(2, 'Sepatu', 'Sepatu sneakers', 150000, 2),
(3, 'Kaca mata', 'Kacamata anti radias', 75000, 3),
(4, 'Jacket', 'Jacket Jeans', 180000, 4),
(5, 'Kursi lipat', 'kursi lipat', 75000, 5),
(6, 'Topi', 'Topi baseball', 40000, 6),
(7, 'Earphone', 'earphone wireless', 200000, 7),
(8, 'Iwatch', 'iwatch putih', 35000000, 8),
(9, 'Powerbank', 'powerbank 10.000mah', 120000, 9),
(10, 'Kaos oversize', 'kaos oversize', 55000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `hakakses`
--

CREATE TABLE `hakakses` (
  `IdAkses` int(11) NOT NULL,
  `NamaAkses` varchar(255) NOT NULL,
  `Keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hakakses`
--

INSERT INTO `hakakses` (`IdAkses`, `NamaAkses`, `Keterangan`) VALUES
(1, 'admin', 'full access'),
(2, 'manager', 'Full access'),
(3, 'Data Analyst', 'View'),
(4, 'Data Engineer', 'Full access'),
(5, 'Programmer', 'Full access'),
(6, 'User', 'View'),
(7, 'QA', 'Full access'),
(8, 'CEO', 'Full Access'),
(9, 'Supervisor', 'Full access'),
(10, 'Developer', 'Full access');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(12) NOT NULL,
  `jumlah_pembelian` int(50) NOT NULL,
  `harga_beli` int(100) NOT NULL,
  `id_pengguna` int(12) NOT NULL,
  `id_barang` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `jumlah_pembelian`, `harga_beli`, `id_pengguna`, `id_barang`) VALUES
(1, 3, 75000, 6, 3),
(2, 2, 3500000, 3, 8),
(3, 4, 150000, 7, 2),
(4, 6, 75000, 5, 3),
(5, 8, 200000, 1, 7),
(6, 10, 180000, 3, 4),
(7, 3, 45000, 5, 2),
(8, 2, 40000, 9, 6),
(9, 1, 55000, 9, 10),
(10, 5, 120000, 6, 9),
(11, 3, 75000, 6, 5),
(12, 6, 55000, 2, 10),
(13, 8, 75000, 8, 3),
(14, 10, 75000, 7, 5),
(15, 3, 3500000, 1, 8),
(16, 2, 150000, 3, 1),
(17, 4, 200000, 5, 7),
(18, 2, 180000, 2, 4),
(19, 1, 40000, 10, 6),
(20, 3, 45000, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(12) NOT NULL,
  `nama_pengguna` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_depan` varchar(255) NOT NULL,
  `nama_belakang` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `IdAkses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_pengguna`, `password`, `nama_depan`, `nama_belakang`, `no_telp`, `alamat`, `IdAkses`) VALUES
(1, 'Adinda Fika', 'fikadinda', 'Adinda', 'Fika', '089787324281', 'Tulungagung', 5),
(2, 'Alzio Atha', 'athazio', 'Alzio', 'Atha', '082321443121', 'Malang', 3),
(3, 'Athaya Ameera', 'ameerataya', 'Athaya', 'Ameera', '08766542422', 'Surabaya', 1),
(4, 'Oktavia Lidya', 'lidyaokta', 'Oktavia', 'Lidya', '083434232111', 'Solo', 7),
(5, 'Aulia Nurhana', 'nurlia', 'Aulia', 'Nurhana', '089766545321', 'Tulungagung', 8),
(6, 'Alfeandra Dewa', 'dewaalfa', 'Alfeandra', 'Dewa', '082133241311', 'Semarang', 2),
(7, 'Pratama Arhan', 'arhantama', 'Pratama', 'Arhan', '081231221334', 'Magelang', 4),
(8, 'Risky Ridho', 'ridhorisky', 'Risky', 'Ridho', '08231665121', 'Sidoarjo', 6),
(9, 'Arkan Kaka', 'kakaarka', 'Arkan', 'Kaka', '08126583212', 'Blitar', 9),
(10, 'Rian Ahmad', 'ahmadrian', 'Rian', 'Ahmad', '085434222131', 'Surabaya', 10);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(12) NOT NULL,
  `jumlah_penjualan` int(100) NOT NULL,
  `harga_jual` int(100) NOT NULL,
  `id_pengguna` int(12) NOT NULL,
  `id_barang` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `jumlah_penjualan`, `harga_jual`, `id_pengguna`, `id_barang`) VALUES
(1, 13, 45000, 2, 1),
(2, 21, 40000, 10, 6),
(3, 100, 180000, 2, 4),
(4, 45, 200000, 5, 7),
(5, 34, 150000, 3, 2),
(6, 140, 3500000, 1, 8),
(7, 200, 75000, 7, 5),
(8, 100, 75000, 8, 3),
(9, 200, 55000, 2, 10),
(10, 35, 120000, 6, 9),
(11, 30, 55000, 9, 10),
(12, 50, 40000, 9, 6),
(13, 30, 45000, 5, 1),
(14, 23, 180000, 3, 4),
(15, 23, 200000, 1, 7),
(16, 21, 75000, 5, 3),
(17, 28, 150000, 7, 2),
(18, 33, 3500000, 3, 8),
(19, 32, 75000, 6, 3),
(20, 43, 75000, 6, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `hakakses`
--
ALTER TABLE `hakakses`
  ADD PRIMARY KEY (`IdAkses`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD KEY `IdAkses` (`IdAkses`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_barang` (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
