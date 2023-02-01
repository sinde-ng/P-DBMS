-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 02:01 AM
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
-- Table structure for table `atk0057`
--

CREATE TABLE `atk0057` (
  `kode_atk` char(4) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `satuan` varchar(4) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `atk0057`
--

INSERT INTO `atk0057` (`kode_atk`, `nama`, `satuan`, `jumlah`) VALUES
('Atk1', 'Kertas Folio', 'rim', 10),
('Atk2', 'Tinta Warna', 'pc', 5),
('Atk3', 'Tinta Hitam', 'pc', 8),
('Atk4', 'Bolpoin', 'pack', 8);

-- --------------------------------------------------------

--
-- Table structure for table `log_pemasukan0057`
--

CREATE TABLE `log_pemasukan0057` (
  `kejadian` varchar(25) NOT NULL,
  `waktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan0057`
--

CREATE TABLE `pemasukan0057` (
  `id_pemasukan` char(3) NOT NULL,
  `kode_atk` char(4) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemasukan0057`
--

INSERT INTO `pemasukan0057` (`id_pemasukan`, `kode_atk`, `qty`) VALUES
('M11', 'Atk1', 10),
('M12', 'Atk2', 5);

-- --------------------------------------------------------

--
-- Table structure for table `trans_pengeluaran0057`
--

CREATE TABLE `trans_pengeluaran0057` (
  `id_pengeluaran` char(3) NOT NULL,
  `kode_atk` char(4) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trans_pengeluaran0057`
--

INSERT INTO `trans_pengeluaran0057` (`id_pengeluaran`, `kode_atk`, `qty`) VALUES
('K01', 'Atk1', 5),
('K02', 'Atk2', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atk0057`
--
ALTER TABLE `atk0057`
  ADD PRIMARY KEY (`kode_atk`);

--
-- Indexes for table `pemasukan0057`
--
ALTER TABLE `pemasukan0057`
  ADD PRIMARY KEY (`id_pemasukan`),
  ADD KEY `kode_atk` (`kode_atk`);

--
-- Indexes for table `trans_pengeluaran0057`
--
ALTER TABLE `trans_pengeluaran0057`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `kode_atk` (`kode_atk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pemasukan0057`
--
ALTER TABLE `pemasukan0057`
  ADD CONSTRAINT `pemasukan0057_ibfk_1` FOREIGN KEY (`kode_atk`) REFERENCES `atk0057` (`kode_atk`);

--
-- Constraints for table `trans_pengeluaran0057`
--
ALTER TABLE `trans_pengeluaran0057`
  ADD CONSTRAINT `trans_pengeluaran0057_ibfk_1` FOREIGN KEY (`kode_atk`) REFERENCES `atk0057` (`kode_atk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
