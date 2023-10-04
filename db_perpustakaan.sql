-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 02:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `code`, `name`) VALUES
(1, 'XMI4I', 'Siaomay Note Mi4i'),
(2, 'IPN6S', 'IPhine 6S Minus'),
(3, 'SAM7N', 'Slamdung Note 7+');

-- --------------------------------------------------------

--
-- Table structure for table `items_incoming`
--

CREATE TABLE `items_incoming` (
  `id` int(11) NOT NULL,
  `trans_num` varchar(50) NOT NULL,
  `trans_date` datetime NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` decimal(15,2) DEFAULT 0.00,
  `remarks` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items_incoming`
--

INSERT INTO `items_incoming` (`id`, `trans_num`, `trans_date`, `item_id`, `quantity`, `remarks`) VALUES
(1, 'IN.001', '2016-01-10 00:00:00', 1, '20.00', 'Pembelian PURCH.001'),
(2, 'IN.001', '2016-01-10 00:00:00', 2, '30.00', 'Pembelian PURCH.001'),
(3, 'IN.002', '2016-01-15 00:00:00', 1, '10.00', 'Pembelian PURCH.002'),
(4, 'IN.002', '2016-01-15 00:00:00', 2, '15.00', 'Pembelian PURCH.002'),
(5, 'IN.002', '2016-01-15 00:00:00', 3, '20.00', 'Pembelian PURCH.002'),
(6, 'IN.003', '2016-01-17 00:00:00', 3, '25.00', 'Pembelian PURCH.003');

-- --------------------------------------------------------

--
-- Table structure for table `items_outgoing`
--

CREATE TABLE `items_outgoing` (
  `id` int(11) NOT NULL,
  `trans_num` varchar(50) NOT NULL,
  `trans_date` datetime NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` decimal(15,2) DEFAULT 0.00,
  `remarks` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items_outgoing`
--

INSERT INTO `items_outgoing` (`id`, `trans_num`, `trans_date`, `item_id`, `quantity`, `remarks`) VALUES
(1, 'OUT.001', '2016-01-12 00:00:00', 1, '2.00', 'Penjualan INV.001'),
(2, 'OUT.002', '2016-01-13 00:00:00', 2, '3.00', 'Penjualan INV.002'),
(3, 'OUT.003', '2016-01-14 00:00:00', 1, '1.00', 'Penjualan INV.003'),
(4, 'OUT.004', '2016-01-15 00:00:00', 2, '5.00', 'Penjualan INV.004'),
(5, 'OUT.005', '2016-01-16 00:00:00', 3, '2.00', 'Penjualan INV.005'),
(6, 'OUT.006', '2016-01-17 00:00:00', 3, '2.00', 'Penjualan INV.006'),
(7, 'OUT.007', '2016-01-18 00:00:00', 2, '2.00', 'Penjualan INV.007'),
(8, 'OUT.008', '2016-01-19 00:00:00', 2, '3.00', 'Penjualan INV.008'),
(9, 'OUT.009', '2016-01-20 00:00:00', 1, '1.00', 'Penjualan INV.009'),
(10, 'OUT.010', '2016-01-21 00:00:00', 2, '3.00', 'Penjualan INV.010'),
(11, 'OUT.011', '2016-01-22 00:00:00', 3, '2.00', 'Penjualan INV.011'),
(12, 'OUT.012', '2016-01-23 00:00:00', 3, '2.00', 'Penjualan INV.012');

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `no` int(9) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `kelas` varchar(15) NOT NULL,
  `jenis_kelamin` enum('LAKI - LAKI','PEREMPUAN') NOT NULL,
  `nis` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`no`, `nama`, `kelas`, `jenis_kelamin`, `nis`) VALUES
(25, 'ABIMANYU PRADIPA WISNU', 'X TJKT 2', '', 1),
(26, 'ADINDA DWI WULANDARI', 'X TJKT 2', 'PEREMPUAN', 2),
(27, 'AHMAD SURYA RIFANDI', 'X TJKT 2', 'LAKI - LAKI', 3),
(28, 'AILIL AINIA', 'X TJKT 2', 'PEREMPUAN', 4),
(29, 'AKHMAD FEBRIAN RAFINTA', 'X TJKT 2', 'LAKI - LAKI', 5),
(32, 'NAFILLA TRI A', 'X TJKT 1', 'PEREMPUAN', 0),
(33, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id` int(9) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(150) NOT NULL,
  `tahun_terbit` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kode_buku` varchar(25) NOT NULL,
  `penggolongan` enum('000 - 099 Karya Umum','100 - 199 Filsafat','300 - 399 Ilmu Sosial','400 - 499 Bahasa','500 - 599 Ilmu Murni','600 - 699 Pengetahuan Praktis','700 - 799 Kesenian dan Hiburan','800 - 899 Kesusastraan') NOT NULL,
  `jumlah_buku` int(3) NOT NULL,
  `jumbuk` int(3) NOT NULL,
  `lokasi` enum('rak 1','rak 2','rak 3','rak 4','rak 5','gudang','pindah') NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `gambar_buku` varchar(255) NOT NULL,
  `tgl_input` date NOT NULL,
  `tgl_pindah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `kode_buku`, `penggolongan`, `jumlah_buku`, `jumbuk`, `lokasi`, `keterangan`, `gambar_buku`, `tgl_input`, `tgl_pindah`) VALUES
(62, ' Jaringan Komputer Untuk Orang Awam', '', ' ', '1997', ' ', '000 - 099 Karya Umum', 0, 0, 'pindah', '', '', '0000-00-00', '0000-00-00'),
(63, 'Ayahku Bukan Pembohong', '', ' ', '1997', ' ', '000 - 099 Karya Umum', 0, 20, 'rak 1', '', '', '0000-00-00', '0000-00-00'),
(64, 'Multimedia Broadcasting', 'Bambang Eka Purnama, dkk', ' Graha Ilmu', '2019', ' 070.1', '000 - 099 Karya Umum', 0, 76, 'gudang', '', '', '2022-08-31', '0000-00-00'),
(65, 'Tahapan Produksi Drama Televisi', 'Tuty Mutiah, dkk', ' Graha Ilmu', '2019', ' 070.1', '000 - 099 Karya Umum', 0, 1, 'gudang', '', '', '2022-08-31', '0000-00-00'),
(66, 'Tata Artistik TV', 'Irwanto, dkk', ' Graha Ilmu', '2019', ' 070.1', '000 - 099 Karya Umum', 0, 1, 'gudang', '', '', '2022-08-31', '0000-00-00'),
(67, '', '', ' ', '1997', ' ', '000 - 099 Karya Umum', 0, 0, 'rak 1', '', '', '0000-00-00', '0000-00-00'),
(68, '', '', ' ', '1997', ' ', '500 - 599 Ilmu Murni', 0, 0, 'rak 1', '', '', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int(9) NOT NULL,
  `judul` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nis` varchar(11) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(250) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` enum('Pinjam','Kembali') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `status_terbaru` enum('Pinjam','Kembali') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `judul`, `nis`, `nama`, `tgl_pinjam`, `tgl_kembali`, `status`, `status_terbaru`) VALUES
(106, 'Desain Multimedia', '1', 'ABIMANYU PRADIPA WISNU', '0000-00-00', '0000-00-00', 'Pinjam', 'Pinjam'),
(108, ' Jaringan Komputer Untuk Orang Awam', '0', 'NAFILLA TRI A', '2022-09-21', '2022-09-27', 'Pinjam', 'Kembali'),
(109, 'Ayahku Bukan Pembohong', '2', 'ADINDA DWI WULANDARI', '2022-11-03', '2022-11-10', 'Pinjam', 'Kembali'),
(110, 'Tahapan Produksi Drama Televisi', '3', 'AHMAD SURYA RIFANDI', '2022-11-16', '2022-11-23', 'Pinjam', 'Kembali'),
(111, 'Ayahku Bukan Pembohong', '2', 'ADINDA DWI WULANDARI', '2022-11-22', '0000-00-00', 'Pinjam', 'Pinjam');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Perpustakaan', 'perpustakaan@gmail.com', 'smkn1pungging'),
(2, 'admin', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ak_items` (`code`);

--
-- Indexes for table `items_incoming`
--
ALTER TABLE `items_incoming`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_items_incoming_items` (`item_id`);

--
-- Indexes for table `items_outgoing`
--
ALTER TABLE `items_outgoing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_items_outgoing_items` (`item_id`);

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
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
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items_incoming`
--
ALTER TABLE `items_incoming`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `items_outgoing`
--
ALTER TABLE `items_outgoing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  MODIFY `no` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items_incoming`
--
ALTER TABLE `items_incoming`
  ADD CONSTRAINT `fk_items_incoming_items` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `items_outgoing`
--
ALTER TABLE `items_outgoing`
  ADD CONSTRAINT `fk_items_outgoing_items` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
