-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 02:47 AM
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
-- Table structure for table `log_perubahan`
--

CREATE TABLE `log_perubahan` (
  `log_id` int(11) NOT NULL,
  `nama_tiket` varchar(15) NOT NULL,
  `harga_lama` int(11) NOT NULL,
  `harga_baru` int(11) NOT NULL,
  `waktu_perubahan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penonton0057`
--

CREATE TABLE `penonton0057` (
  `kode_penonton` char(7) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `tanggal_beli` date NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `kamar` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penonton0057`
--

INSERT INTO `penonton0057` (`kode_penonton`, `nama`, `tanggal_beli`, `jenis_kelamin`, `alamat`, `kamar`) VALUES
('K-01-01', 'Jono', '2021-01-01', 'Laki-Laki', 'Jl. Raya Kenanga No. 3', 'Reguler'),
('K-01-02', 'Beny', '2021-01-02', 'Laki-Laki', 'Jl. Raya Kenanga No. 5', 'Multi Day Pass'),
('K-01-03', 'Dodi', '2021-01-02', 'Laki-Laki', 'Jl. Melati No. 3 ', 'VIP'),
('K-01-04', 'Santi', '2021-01-03', 'Perempuan', 'Jl. Anggrek No. 10', 'Early Bird'),
('K-01-05', 'Deny', '2021-01-04', 'Laki-Laki', 'Jl. Anggrek No. 15', 'Early Bird'),
('K-01-06', 'Sukma', '2021-01-04', 'Perempuan', 'Jl. Anggrek No. 20', 'One Day Pass');

-- --------------------------------------------------------

--
-- Table structure for table `tiket0057`
--

CREATE TABLE `tiket0057` (
  `nama_tiket` varchar(15) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tiket0057`
--

INSERT INTO `tiket0057` (`nama_tiket`, `harga`) VALUES
('Early Bird', 1000000),
('Multi Day Pass', 500000),
('One Day Pass', 750000),
('Reguler', 300000),
('VIP', 1500000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log_perubahan`
--
ALTER TABLE `log_perubahan`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `penonton0057`
--
ALTER TABLE `penonton0057`
  ADD PRIMARY KEY (`kode_penonton`),
  ADD KEY `kamar` (`kamar`);

--
-- Indexes for table `tiket0057`
--
ALTER TABLE `tiket0057`
  ADD PRIMARY KEY (`nama_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log_perubahan`
--
ALTER TABLE `log_perubahan`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penonton0057`
--
ALTER TABLE `penonton0057`
  ADD CONSTRAINT `penonton0057_ibfk_1` FOREIGN KEY (`kamar`) REFERENCES `tiket0057` (`nama_tiket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
