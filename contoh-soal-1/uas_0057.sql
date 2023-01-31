-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 02:01 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_0057`
--

-- --------------------------------------------------------

--
-- Table structure for table `nasabah0057`
--

CREATE TABLE `nasabah0057` (
  `no_rekening` int(6) UNSIGNED ZEROFILL NOT NULL,
  `nama_nasabah` varchar(15) NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nasabah0057`
--

INSERT INTO `nasabah0057` (`no_rekening`, `nama_nasabah`, `saldo`) VALUES
(000111, 'Budi Susanto', 3500000),
(000112, 'Sinta', 1500000),
(000113, 'Rahmawati', 2000000),
(000114, 'Arvino', 2750000);

-- --------------------------------------------------------

--
-- Table structure for table `penabungan0057`
--

CREATE TABLE `penabungan0057` (
  `id_penabungan` varchar(3) NOT NULL,
  `no_rekening` int(6) UNSIGNED ZEROFILL NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penabungan0057`
--

INSERT INTO `penabungan0057` (`id_penabungan`, `no_rekening`, `nominal`) VALUES
('T01', 000111, 500000),
('T02', 000112, 1500000);

-- --------------------------------------------------------

--
-- Table structure for table `penarikan0057`
--

CREATE TABLE `penarikan0057` (
  `id_penarika` varchar(3) NOT NULL,
  `no_rekening` int(6) UNSIGNED ZEROFILL NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penarikan0057`
--

INSERT INTO `penarikan0057` (`id_penarika`, `no_rekening`, `nominal`) VALUES
('P01', 000113, 500000),
('P02', 000114, 1250000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nasabah0057`
--
ALTER TABLE `nasabah0057`
  ADD PRIMARY KEY (`no_rekening`);

--
-- Indexes for table `penabungan0057`
--
ALTER TABLE `penabungan0057`
  ADD PRIMARY KEY (`id_penabungan`),
  ADD KEY `no_rekening` (`no_rekening`);

--
-- Indexes for table `penarikan0057`
--
ALTER TABLE `penarikan0057`
  ADD PRIMARY KEY (`id_penarika`),
  ADD KEY `no_rekening` (`no_rekening`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penabungan0057`
--
ALTER TABLE `penabungan0057`
  ADD CONSTRAINT `penabungan0057_ibfk_1` FOREIGN KEY (`no_rekening`) REFERENCES `nasabah0057` (`no_rekening`);

--
-- Constraints for table `penarikan0057`
--
ALTER TABLE `penarikan0057`
  ADD CONSTRAINT `penarikan0057_ibfk_1` FOREIGN KEY (`no_rekening`) REFERENCES `nasabah0057` (`no_rekening`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
