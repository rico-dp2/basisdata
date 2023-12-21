-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2022 at 04:43 PM
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
-- Database: `perusahaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `tanggal_transaksi` varchar(30) NOT NULL,
  `nama_item` varchar(30) NOT NULL,
  `tipe_item` varchar(30) NOT NULL,
  `banyak_item` varchar(30) NOT NULL,
  `harga` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `tanggal_transaksi`, `nama_item`, `tipe_item`, `banyak_item` , `harga`) VALUES
(1, '23-Apr-23', 'Akun Game', 'item', '1', 'Rp35,000.00'),
(2, '23-Apr-23', 'Akun Game', 'item', '1', 'Rp35,000.00'),
(3, '26-Apr-23', 'Joki Game (Rawat Akun)', 'jasa', '1', 'Rp126,000.00'),
(4, '26-Apr-23', 'Joki Game (Rawat Akun)', 'jasa', '1', 'Rp126,000.00'),
(5, '27-Apr-23', 'Bonus dari customer', 'item', '1', 'Rp50,000.00'),
(6, '1-May-23', 'Joki Game (Rawat Akun)', 'jasa', '1', 'Rp65,000.00'),
(7, '4-May-23', 'Top up game (welkin Genshin)', 'item', '1', 'Rp55,000.00'),
(8, '4-May-23', 'Joki Game (Rawat Akun)', 'jasa', '1', 'Rp30,000.00'),
(9, '6-May-23', 'Bonus dari customer', 'item', '1', 'Rp200,000.00'),
(10, '6-May-23', 'Akun Game', 'item', '1', 'Rp85,000.00'),
(11, '10-May-23', 'Top up game (welkin Genshin)', 'item', '1', 'Rp55,000.00'),
(12, '10-May-23', 'Joki Game (Rawat Akun)', 'jasa', '1', 'Rp65,000.00'),
(13, '10-May-23', 'Top up game (welkin Genshin)', 'item', '1', 'Rp55,000.00'),
(14, '10-May-23', 'Top up game (welkin Genshin)', 'item', '1', 'Rp55,000.00'),
(15, '11-May-23', 'Top up game (Bundle  Ragnarok)', 'item', '1', 'Rp165,000.00'),
(16, '11-May-23', 'Top up game (Bundle  Ragnarok)', 'item', '1', 'Rp165,000.00'),
(17, '11-May-23', 'Top up game (welkin Genshin)', 'item', '1', 'Rp55,000.00'),
(18, '12-May-23', 'Joki Game (Rawat Akun)', 'jasa', '1', 'Rp450,000.00'),
(19, '13-May-23', 'Top up game (item Ragnarok)', 'item', '1', 'Rp2,394,000.00'),
(20, '14-May-23', 'Top up game (welkin Genshin)', 'item', '1', 'Rp55,000.00'),
(21, '8-Jun-23', 'Top up game (item Ragnarok)', 'item', '1', 'Rp651,500.00'),
(22, '8-Jun-23', 'Top up game (Item Ragnarok)', 'item', '1', 'Rp2,565,000.00'),
(23, '12-Jun-23', 'Top up game (item Ragnarok)', 'item', '1', 'Rp220,000.00'),
(24, '12-Jun-23', 'Joki Game (Rawat Akun)', 'jasa', '1', 'Rp450,000.00'),
(25, '12-Jun-23', 'Top up game (Item Ragnarok)', 'item', '1', 'Rp80,000.00'),
(26, '5-Jul-23', 'Joki Game (Rawat Akun)', 'jasa', '1', 'Rp30,000.00'),
(27, '8-Aug-23', 'Akun Game', 'item', '1', 'Rp85,000.00'),
(28, '2-Oct-23', 'Eksplor all Inazuma + enkanomiya ', 'jasa', '1', 'Rp260,000'),
(29, '2-Oct-23', 'spirall abbys floor 9-12', 'jasa', '1', 'Rp45,000'),
(30, '2-Oct-23', 'spirall abbys floor 9-12', 'jasa', '1', 'Rp45,000'),
(31, '2-Oct-23', 'spirall abbys floor 9-12', 'jasa', '1', 'Rp45,000'),
(32, '11-Oct-23', 'spirall abbys floor 12', 'jasa', '1', 'Rp20,000'),
(33, '16-Oct-23', 'spirall abbys floor 9-12', 'jasa', '1', 'Rp45,000'),
(34, '16-Oct-23', 'spirall abbys floor 9-12', 'jasa', '1', 'Rp45,000'),
(35, '16-Oct-23', 'spirall abbys floor 9-12', 'jasa', '1', 'Rp45,000'),
(36, '20-Oct-23', '76 aranara ', 'jasa', '1', 'Rp45,000'),
(37, '25-Oct-23', 'Ekplor all Sumeru + all chasm', 'jasa', '1', 'Rp480,000'),
(38, '27-Oct-23', 'Eksplor Fontaine (4 wilayah)', 'jasa', '1', 'Rp200,000'),
(39, '27-Oct-23', 'Farm material character (1)', 'jasa', '1', 'Rp30,000'),
(40, '18-Nov-23', 'dragonspine 91%-100%', 'jasa', '1', 'Rp10,000'),
(41, '18-Nov-23', '76 aranara,200 dendroculus', 'jasa', '1', 'Rp446,000'),
(42, '20-Nov-23', 'spirall abbys floor 9-12', 'jasa', '1', 'Rp45,000'),
(43, '20-Nov-23', 'spirall abbys floor 9-12', 'jasa', '1', 'Rp45,000'),
(44, '20-Nov-23', 'spirall abbys floor 9-13', 'jasa', '1', 'Rp45,000'),
(45, '20-Nov-23', 'Ekplor Fontaine 25%', 'jasa', '1', 'Rp25,000'),
(46, '27-Nov-23', 'Ekplor Liyue 10% ', 'jasa', '1', 'Rp10,000'),
(47, '27-Nov-23', 'Eksplor Fontaine (1 wilayah)', 'jasa', '1', 'Rp100,000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(6, 'purba', 'purba@gmai.com', 'e4c390c1fb3c6f2213e482abc76a61a5'),
(7, 'iqbal', 'iqbal@gmail.com', 'eedae20fc3c7a6e9c5b1102098771c70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
