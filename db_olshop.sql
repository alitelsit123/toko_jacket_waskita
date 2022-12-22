-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2022 at 03:39 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_olshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(12) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `id_kategori` int(12) NOT NULL,
  `harga` int(20) NOT NULL,
  `total_stok` int(12) DEFAULT NULL,
  `stok_s` int(20) NOT NULL,
  `stok_l` int(20) NOT NULL,
  `stok_m` int(20) NOT NULL,
  `stok_xl` int(20) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` text NOT NULL,
  `berat` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga`, `total_stok`, `stok_s`, `stok_l`, `stok_m`, `stok_xl`, `deskripsi`, `gambar`, `berat`) VALUES
(13, 'Jaket Rework', 11, 1000000, 4, 0, 2, 0, 0, 'Jaket yang dibuat dengan cinta disetiap jahitanya', 'Hijab-Model-2-JPEG.jpg', 1000),
(14, 'sandal_outdoor', 12, 180000, 73, 17, 19, 20, 19, 'sandal berkualitas tinggi yang di buat dengan tangan-tangan terbaik', 'zqNpi-Hc.jpeg', 7000),
(15, 'sandal suwalow', 12, 50000, 26, -2, 10, 10, 9, 'sandal jepit suwalow', 'Screenshot_(28).png', 64),
(16, 'topi', 15, 12000, 12, 4, 2, 4, 2, 'topi yang berlogo ', 'meja-komputer-kantor-minimalis-299x203.jpg', 100),
(17, 'celana', 14, 10000, 8, 2, 2, 2, 2, 'CELANA JEANS BER BAHAN KULIT BABI\r\n', '18579ab243a14ba.jpg', 90),
(18, 'tas', 13, 10000, 8, 2, 2, 2, 2, 'tas berkapasitas 80L', 'DSC_8884.JPG', 290),
(19, 'kaos bolong', 16, 7000, 78, 19, 20, 20, 19, 'kaos bolong karena ter cantol paku\r\n', 'Think_-_Empty_Background_Cover.jpg', 400),
(20, 'hoodie 1', 17, 100000, 79, 20, 20, 19, 20, 'hoodie deskripsi', '1661679355812.jpeg', 400);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gambar`
--

CREATE TABLE `tbl_gambar` (
  `id_gambar` int(12) NOT NULL,
  `id_barang` int(22) NOT NULL,
  `ket` varchar(250) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gambar`
--

INSERT INTO `tbl_gambar` (`id_gambar`, `id_barang`, `ket`, `gambar`) VALUES
(6, 2, 'dwd', 'cinos.jpg'),
(7, 2, 'dwd', 'WhatsApp_Image_2021-12-11_at_14_19_44.jpeg'),
(15, 7, 'kuri', 'jumat.jpg'),
(16, 8, 'gambar topi 1', 'evrest.jpg'),
(19, 9, 'Kaos Polos Coklat 1', 'kaos_coklat_2.PNG'),
(20, 9, 'Kaos Polos Coklat 2', 'kaos_coklat_3.PNG'),
(25, 6, 'Kaos Polos Maroon 1', 'kaos_maroon_2.PNG'),
(26, 6, 'Kaos Polos maroon 2', 'kaos_maroon_3.PNG'),
(27, 6, 'Kaos Polos maroon 3', 'kaos_maroon_4.PNG'),
(28, 5, 'Kaos Polos Putih 1', 'kaos_putih_2.PNG'),
(29, 5, 'Kaos Polos Putih 2', 'kaos_putih_3.PNG'),
(30, 5, 'Kaos Polos Putih 3', 'kaos_putih_4.PNG'),
(31, 1, 'Jaket Hitam 1', 'hodi.jpg'),
(32, 1, 'Jaket Hitam 2', 'jaket_hijau.PNG'),
(33, 6, 'jono', 'topi.png'),
(34, 14, 'ini adalah keterangan', 'spesifikasi-printer-canon-pixma-mp237.jpg'),
(35, 13, 'dari saping kanan', 'DSC_8884.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(12) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email`, `password`) VALUES
(1, 'san', 'sandyrick85@gmail.com', '12345'),
(3, 'waskita', 'waswas@gmail.com', '12345'),
(4, 'dandi', 'pelanggan@gmail.com', '12345'),
(5, 'ricky', 'ricky@gmail.com', '12345'),
(6, 'cika', 'cika@gmail.com', 'cika'),
(8, 'waskita', 'wasktia@gmail.com', 'waskita'),
(9, 'waskita', 'waskita@gmail.com', 'waskita'),
(10, 'waskita', 'waskita1234@gmail.com', 'waskita'),
(12, 'waskita12', 'waskita12@gmail.com', 'waskita'),
(13, 'nugraha12', 'nugraha12@gmail.com', 'waskita'),
(14, 'warih ', 'warih@gmail.com', 'warih123'),
(15, 'waskita 2', 'waskita2@gmail.com', 'waskita1717');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekening`
--

CREATE TABLE `tbl_rekening` (
  `id_rekening` int(20) NOT NULL,
  `nama_bank` varchar(200) DEFAULT NULL,
  `no_rek` varchar(50) DEFAULT NULL,
  `atas_nama` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rekening`
--

INSERT INTO `tbl_rekening` (`id_rekening`, `nama_bank`, `no_rek`, `atas_nama`) VALUES
(1, ' MANDIRI', ' 9090-0000-9999-9090', ' sandy ricky destiawan'),
(4, 'PLECIT', '034534099345093490', 'WASKTIA WARIH NUGRAHA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rinci_transaksi`
--

CREATE TABLE `tbl_rinci_transaksi` (
  `id_rinci` int(12) NOT NULL,
  `no_order` varchar(20) NOT NULL,
  `id_barang` int(20) NOT NULL,
  `qty` int(20) NOT NULL,
  `ukuran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rinci_transaksi`
--

INSERT INTO `tbl_rinci_transaksi` (`id_rinci`, `no_order`, `id_barang`, `qty`, `ukuran`) VALUES
(72, '20221126M736RLEB', 13, 2, 'S'),
(73, '20221126M736RLEB', 13, 1, 'M'),
(74, '20221126XU6XSFKQ', 14, 1, 'S'),
(75, '20221126XU6XSFKQ', 14, 1, 'L'),
(76, '20221126XU6XSFKQ', 14, 1, 'XL'),
(77, '202211263DJMGGDH', 14, 1, 'S'),
(78, '20221126PMLDTPJQ', 15, 7, 'S'),
(79, '202211262KS8QBU9', 15, 2, 'S'),
(80, '20221126WGUMH36A', 14, 1, 'S'),
(81, '202211260ZQKXKMA', 13, 1, 'M'),
(82, '20221127W0ZFBTJM', 15, 1, 'XL'),
(83, '20221127JRZUWKAD', 15, 3, 'S'),
(84, '20221127XVQK36WY', 13, 2, 'XL'),
(85, '20221127YHLVOO6I', 15, 1, 'S'),
(86, '20221127IHKUQ1HF', 14, 2, 'S'),
(87, '20221129UIQW4UFN', 19, 1, 'XL'),
(88, '20221129UIQW4UFN', 19, 1, 'S'),
(89, '202212093PWGIJBD', 20, 1, 'M');

--
-- Triggers `tbl_rinci_transaksi`
--
DELIMITER $$
CREATE TRIGGER `penjualan_pesanan` AFTER INSERT ON `tbl_rinci_transaksi` FOR EACH ROW BEGIN
	UPDATE tbl_barang SET total_stok = total_stok-NEW.qty
    WHERE id_barang = NEW.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(12) NOT NULL,
  `nama_toko` varchar(200) DEFAULT NULL,
  `lokasi` int(15) DEFAULT NULL,
  `alamat_toko` text DEFAULT NULL,
  `no_telpon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_toko`, `lokasi`, `alamat_toko`, `no_telpon`) VALUES
(1, 'Black Market', 33115, 'jalan palagan km 9', '081226931073');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(12) NOT NULL,
  `no_order` varchar(20) NOT NULL,
  `tgl_order` date DEFAULT NULL,
  `nama_penerima` varchar(225) DEFAULT NULL,
  `hp_penerima` varchar(12) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kode_pos` varchar(15) DEFAULT NULL,
  `expedisi` varchar(100) DEFAULT NULL,
  `paket` varchar(100) DEFAULT NULL,
  `estimasi` varchar(100) DEFAULT NULL,
  `ongkir` int(12) DEFAULT NULL,
  `berat` int(12) DEFAULT NULL,
  `grand_total` int(12) DEFAULT NULL,
  `total_bayar` int(12) DEFAULT NULL,
  `status_bayar` int(12) DEFAULT NULL,
  `bukti_bayar` text DEFAULT NULL,
  `atas_nama` varchar(50) DEFAULT NULL,
  `nama_bank` varchar(30) DEFAULT NULL,
  `no_rek` varchar(50) DEFAULT NULL,
  `status_order` int(1) DEFAULT NULL,
  `no_resi` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `id_pelanggan`, `no_order`, `tgl_order`, `nama_penerima`, `hp_penerima`, `provinsi`, `kota`, `alamat`, `kode_pos`, `expedisi`, `paket`, `estimasi`, `ongkir`, `berat`, `grand_total`, `total_bayar`, `status_bayar`, `bukti_bayar`, `atas_nama`, `nama_bank`, `no_rek`, `status_order`, `no_resi`) VALUES
(44, 5, '202206232AFTL8IU', '2022-06-23', 'sandy ricky', '127', '18', 'Tulang Bawang', 'jl.pilangsari, -', '57486', 'jne', 'OKE', '3-6 Hari', 41000, 500, 35000, 76000, 1, 'bukti4.jpg', 'Sandyyy', 'BCA', '9090-0000-9999-9090', 3, 'KLT0989800'),
(46, 9, '20221122PV9S4D8W', '2022-11-22', 'was', '127', '19', 'Buru', 'rtwtergefgf', '55582', 'tiki', 'REG', '5 Hari', 158000, 7, 3213213, 3371213, 1, 'Tugas_Inggris.jpg', 'wasd', 'BRI', '6346546', 3, '67576585786'),
(47, 10, '20221126M736RLEB', '2022-11-26', 'nugraha', '127', '18', 'Bandar Lampung', 'rtwtergefgf', '55582', 'jne', 'REG', '1-2 Hari', 99000, 3000, 3000000, 3099000, 1, 'IMG_4101.JPG', 'wasd', 'BRI', '6346546', 3, '67576585786'),
(48, 10, '20221126XU6XSFKQ', '2022-11-26', 'nugraha', '127', '5', 'Yogyakarta', 'rtwtergefgf', '55582', 'jne', 'YES', '1-1 Hari', 294000, 21000, 540000, 834000, 1, 'DSC_8884.JPG', 'nugraha', 'BCA', '43523452', 3, '67576585786'),
(52, 9, '20221126WGUMH36A', '2022-11-26', 'was', '127', '2', '28', 'rtwtergefgf', '55582', 'jne', 'OKE', '4-5 Hari', 336000, 7000, 180000, 516000, 1, 'Screenshot_(26)1.png', 'wasd', 'BRI', '034534099345093490', 3, '523452352345'),
(53, 9, '202211260ZQKXKMA', '2022-11-26', 'CIKA', '127', '18', '35139', 'rtwtergefgf', '55582', 'jne', 'OKE', '2-3 Hari', 27000, 1000, 1000000, 1027000, 1, 'Screenshot_(17).png', 'cika', 'PLECIT', '034534099345093490', 3, '4321'),
(54, 12, '20221127W0ZFBTJM', '2022-11-27', 'waskita12', '127', '1', '80351', 'sleman ', '55582', 'jne', 'OKE', '7-8 Hari', 32000, 64, 50000, 82000, 1, 'Screenshot_(27).png', 'waskita12', 'PLECIT', '034534099345093490', 3, '341234123412341234'),
(55, 12, '20221127JRZUWKAD', '2022-11-27', 'waskita12', '127', '1', '80351', 'rtwtergefgf', '55582', 'jne', 'REG', '3-4 Hari', 34000, 192, 150000, 184000, 1, 'Screenshot_(27)1.png', 'wasd', 'BRI', '034534099345093490', 3, '341234123412341234'),
(56, 12, '20221127XVQK36WY', '2022-11-27', 'waskita12', '123456789123', '1', '80351', 'sleman ', '55582', 'jne', 'OKE', '7-8 Hari', 64000, 2000, 2000000, 2064000, 1, 'Screenshot_(14).png', 'cika', 'PLECIT', '034534099345093490', 3, '4321'),
(57, 12, '20221127YHLVOO6I', '2022-11-27', 'waskita12', '123436346456', '1', '80351', 'sleman ', '55582', 'jne', 'OKE', '7-8 Hari', 32000, 64, 50000, 82000, 0, NULL, NULL, NULL, NULL, 0, NULL),
(58, 12, '20221127IHKUQ1HF', '2022-11-27', 'waskita12', '123412341234', '3', '42417', 'pakem', '55582', 'jne', 'OKE', '4-5 Hari', 196000, 14000, 360000, 556000, 0, NULL, NULL, NULL, NULL, 0, NULL),
(59, 14, '20221129UIQW4UFN', '2022-11-29', 'warih', '081226931073', '22', '84315', 'pakem', '55582', 'pos', 'Pos Reguler', '5 HARI Hari', 46000, 800, 14000, 60000, 1, 'meja-komputer-kantor-minimalis-299x203.jpg', 'warih', 'jateng', '123987451234', 3, '341234123412341234'),
(60, 15, '202212093PWGIJBD', '2022-12-09', 'waskita2', '081226931073', '1', '80351', 'sleman ', '55582', 'jne', 'OKE', '4-5 Hari', 48000, 400, 100000, 148000, 1, 'WhatsApp_Image_2022-10-17_at_18_55_12.jpeg', 'waskita 2', 'BRI', 'p5ou2q35434', 3, '341234123412341234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(12) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `password`, `level_user`) VALUES
(1, ' mardial', ' admin', ' admin', 1),
(6, 'waskita', 'waskita', 'waskita', 1),
(1234, 'was', 'was', 'was', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_barang_2` (`id_barang`);

--
-- Indexes for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  ADD PRIMARY KEY (`id_gambar`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  ADD PRIMARY KEY (`id_rinci`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  MODIFY `id_gambar` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  MODIFY `id_rekening` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  MODIFY `id_rinci` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1235;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  ADD CONSTRAINT `tbl_rinci_transaksi_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tbl_barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD CONSTRAINT `tbl_transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `tbl_pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
