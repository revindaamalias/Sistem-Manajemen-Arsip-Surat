-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2021 at 09:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsipsurat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_disposisi`
--

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_disposisi`
--

INSERT INTO `tbl_disposisi` (`id_disposisi`, `tujuan`, `isi_disposisi`, `batas_waktu`, `catatan`, `id_surat`, `id_user`) VALUES
(1, 'PPPKM Paguyuban Pedagang Pasar', 'Tembusan Permohonan Pembebasan Retribusi', '2021-07-19', 'Yth. Ketua DPRD Kota Malang', 6, 1),
(2, 'DPUPR', 'Ucapan undur diri berakhirnya masa bakti sebagai ASN dari Kepala Dinas PUPR Bapak Hadi Santoso', '2021-06-30', 'Yth. Sekretaris DPRD Kota Malang', 7, 1),
(3, 'Badan Keuangan dan Aset Daerah Kota Malang', 'Pemberitahuan Pengeluaran Belanja Tidak Terduga Tahun Anggaran 2021', '2021-07-21', 'Yth. Ketua DPRD Kota Malang', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `institusi`, `nama`, `status`, `alamat`, `kepsek`, `nip`, `website`, `email`, `logo`, `id_user`) VALUES
(1, 'Ketua DPRD Kota Malang', 'DPRD Kota Malang', 'Aktif', 'Jl. Tugu Nomor 1A', 'Drs. Mulyono, MSi', '196304181987031011', 'https://dprd.malangkota.go.id/', 'setwan@malangkota.go.id', 'logo2.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sett`
--

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sett`
--

INSERT INTO `tbl_sett` (`id_sett`, `surat_masuk`, `surat_keluar`, `id_user`) VALUES
(1, 5, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_keluar`
--

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_surat_keluar`
--

INSERT INTO `tbl_surat_keluar` (`id_surat`, `no_agenda`, `tujuan`, `no_surat`, `isi`, `tgl_surat`, `tgl_catat`, `file`, `keterangan`, `id_user`) VALUES
(6, 6, 'PPPKM Paguyuban Pedagang Pasar', '004/SPM/PPPKM/VII/2021', 'Tembusan Permohonan Pembebasan Retrebusi', '2021-07-19', '2021-07-22', 'Tembusan Permohonan.jpeg', 'Tembusan Permohonan Retribusi', 1),
(7, 7, 'DPUPR', '0', 'Ucapan undur diri berakhirnya masa bakti sebagai ASN dari Kepala Dinas PUPR Bapak Hadi Santoso', '2021-06-30', '2021-06-30', 'Ucapan undur diri.jpeg', 'Ucapan undur diri', 1),
(8, 8, 'Dispendukcapil Kota Malang', '470/2057/35.73.409/2021', 'Laporan Penganan Aplikasi Online SiAPEL', '2021-06-14', '2021-08-21', 'SiAPEL.jpeg', 'SiAPEL', 1),
(9, 9, 'Kelurahan Bareng Kec. Klojen', '800/169/3573.02.1009/2021', 'Tembusan Laporan Bencana', '2021-06-22', '2021-06-23', 'Tembusan Laporan.jpeg', 'Tembusan Laporan', 1),
(10, 10, 'BKPSDM Kota Malang', '', 'Pemberitahuan Proses Layanan Pensiunan PNS', '2021-07-09', '2021-07-23', 'Pemberitahuan.jpeg', 'Pemberitahuan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_masuk`
--

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_surat_masuk`
--

INSERT INTO `tbl_surat_masuk` (`id_surat`, `no_agenda`, `no_surat`, `asal_surat`, `isi`, `tgl_surat`, `tgl_diterima`, `file`, `keterangan`, `id_user`) VALUES
(1, 1, '900/1555/35.73.503/2021', 'Badan Keuangan dan Aset Daerah Kota Malang', 'Pemberitahuan Pengeluaran Belanja Tidak Terduga Tahun Anggaran 2021', '2021-07-21', '2021-07-21', 'Pemberitahuan Pengeluaran Belanja Tidak Terduga Tahun Anggaran 2021.jpeg', 'Pemberitahuan', 1),
(2, 2, '005/1330/35.73.502.2021', 'Pemkot Malang', 'Undangan MUSKOT korpri Kota Malang Rabu 30 Juni 2021 Pukul 12.30 di Ruang Sidang Balaikota Malang Pakaian Korpri Lengkap', '2021-06-28', '2021-06-29', 'Undangan MUSKOT korpri.jpeg', 'Undangan MUSKOT', 1),
(3, 3, '137/PW-C/Inst./IX/1442', 'Yayasan Perjuangan Wahidiyah dan Pondok Pesantren Kedunglo', 'Pengantar Tembusan Surat Intruksi', '2021-07-07', '2021-07-21', 'Pengantar Tembusan Surat Intruksi.jpeg', 'Surat Intruksi', 1),
(4, 4, '060/1693/MLG/ALS.KRD/SRT', 'Bank Jatim', 'Undangan gathering pra pensiun dan take over kredit multiguna kepada Teresa Titik Andani pada :\r\nKamis, 08 Juli 2021\r\nPukul 09.00\r\nAula Bank Jatim di JA Suprapto No. 26-28 Malang', '2021-06-24', '2021-06-30', 'Undangan gathering pra pensiun.jpeg', 'Undangan gathering pra pensiun', 1),
(5, 5, '900/2698/35.73.503/2021', 'BKAD Kota Malang', 'Laporan Realisasi Semester Pertama dan Prognosis Enam Bulan Berikutnya Tahun Anggaran 2021', '2021-07-06', '2021-07-23', 'Laporan Realisasi Semester.jpeg', 'Laporan Realisasi Semester', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `nip`, `admin`) VALUES
(1, 'SuperAdmin', 'admin', 'Super Admin', '171801583', 1),
(3, 'Administrator', '123', 'Administrator', '123', 2),
(4, 'user123', 'user123', 'user', '123123', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indexes for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `tbl_sett`
--
ALTER TABLE `tbl_sett`
  ADD PRIMARY KEY (`id_sett`);

--
-- Indexes for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  MODIFY `id_disposisi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
