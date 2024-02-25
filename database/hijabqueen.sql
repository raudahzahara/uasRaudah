-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Feb 2024 pada 04.44
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hijabqueen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `idata_pelanggan`
--

CREATE TABLE `idata_pelanggan` (
  `id_pelanggan` int(50) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `jenis_hijab` varchar(50) NOT NULL,
  `warna_hijab` varchar(50) NOT NULL,
  `jumlah_hijab` int(50) NOT NULL,
  `total_harga` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `idata_pelanggan`
--

INSERT INTO `idata_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `jenis_hijab`, `warna_hijab`, `jumlah_hijab`, `total_harga`) VALUES
(3, 'zahra', 'voal', 'cream', 3, 70000),
(4, 'ifit', 'bella square', 'hijau', 1, 35000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `komentar_id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`komentar_id`, `nama`, `email`, `pesan`, `date`) VALUES
(0, 'raudah ', 'raudah@gmail.com', ' sangat bagus', '2024-02-17 14:22:08'),
(0, 'indri', 'indri@gmail.com', ' kainnya sangat bagus', '2024-02-22 08:51:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(254) NOT NULL,
  `email` varchar(50) NOT NULL,
  `token` char(128) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `foto` varchar(50) NOT NULL,
  `last_login` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `token`, `status`, `foto`, `last_login`) VALUES
(1, 'zahra', '21232f297a57a5a743894a0e4a801fc3', 'zahragmail.com', 'c0e024d9200b5705bc4804722636378a', '1', '', '2024-02-17 20:39:53'),
(2, 'raudah', 'raudah', 'zahra@gamil.com', NULL, NULL, '', '2024-02-17 20:59:19'),
(3, 'Raudahzahara ', '3b972fa77cc41309d88d22c169b01dc8', 'raudahzah@gmail.com', '980add68c8f3d810027d36ae2487e21d', NULL, '2024-02-17-15-32-45.jpeg', '2024-02-22 15:54:39');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `idata_pelanggan`
--
ALTER TABLE `idata_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `idata_pelanggan`
--
ALTER TABLE `idata_pelanggan`
  MODIFY `id_pelanggan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
