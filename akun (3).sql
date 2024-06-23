-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jun 2024 pada 17.15
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akun`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `Kode_Barang` varchar(10) NOT NULL,
  `Nama_Barang` varchar(50) DEFAULT NULL,
  `Jenis` varchar(20) DEFAULT NULL,
  `Ukuran` varchar(5) DEFAULT NULL,
  `HargaBeli` decimal(10,0) DEFAULT NULL,
  `HargaJual` decimal(10,0) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`Kode_Barang`, `Nama_Barang`, `Jenis`, `Ukuran`, `HargaBeli`, `HargaJual`, `Stok`) VALUES
('B001', 'Converse', 'Sepatu', '40', '160000', '170000', 5),
('B002', 'Ventela', 'Sepatu', '40', '150000', '170000', 5),
('B003', 'New Balance', 'Sepatu', '40', '2300000', '2500000', 2),
('B004', 'Adidas Samba', 'Sepatu', '42', '2300000', '2400000', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(50) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `nama_depan`, `nama_belakang`, `username`, `password`) VALUES
(16, 'Rifky', 'Putra', 'Rifky Putra', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualanrinci`
--

CREATE TABLE `penjualanrinci` (
  `NoFaktur` varchar(20) DEFAULT NULL,
  `Kode_Barang` varchar(10) DEFAULT NULL,
  `Nama_Barang` varchar(50) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL,
  `Harga` decimal(10,0) DEFAULT NULL,
  `Total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Kode_Barang`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
