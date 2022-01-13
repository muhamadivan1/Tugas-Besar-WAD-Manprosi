-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2022 pada 10.39
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticket`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'VIP', 'vip', '2021-12-19 00:46:18', '2021-12-19 00:46:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2020_11_16_131654_create_category_table', 1),
(3, '2020_11_17_004604_create_transportasi_table', 1),
(4, '2020_11_18_081507_create_rute_table', 1),
(5, '2020_11_20_095338_create_pemesanan_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kursi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total` int(11) NOT NULL,
  `status` enum('Belum Bayar','Sudah Bayar') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Belum Bayar',
  `rute_id` bigint(20) UNSIGNED NOT NULL,
  `penumpang_id` bigint(20) UNSIGNED NOT NULL,
  `petugas_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `kode`, `kursi`, `waktu`, `total`, `status`, `rute_id`, `penumpang_id`, `petugas_id`, `created_at`, `updated_at`) VALUES
(1, 'MLO8P7E', 'K10', '2021-12-19 07:54:55', 50000, 'Sudah Bayar', 1, 4, 1, '2021-12-19 00:48:00', '2021-12-19 00:54:55'),
(2, 'WH9RTCQ', 'K20', '2022-01-09 16:34:26', 50000, 'Sudah Bayar', 1, 4, 1, '2021-12-26 15:31:18', '2022-01-09 09:34:26'),
(3, '1LRFETA', 'K2', '2022-01-07 01:00:00', 50000, 'Belum Bayar', 1, 4, NULL, '2022-01-07 02:28:56', '2022-01-07 02:28:56'),
(4, '3L1W048', 'K4', '2022-01-10 05:03:28', 50000, 'Sudah Bayar', 1, 6, 1, '2022-01-09 22:01:10', '2022-01-09 22:03:28'),
(5, '21XVS95', 'K4', '2022-01-10 05:09:37', 50000, 'Sudah Bayar', 1, 7, 1, '2022-01-09 22:08:25', '2022-01-09 22:09:37'),
(6, 'LHX5RVQ', 'K5', '2022-01-10 05:43:45', 50000, 'Sudah Bayar', 1, 4, 1, '2022-01-09 22:41:32', '2022-01-09 22:43:45'),
(7, '7UN6QE0', 'K5', '2022-01-10 06:03:41', 50000, 'Sudah Bayar', 1, 4, 1, '2022-01-09 23:00:20', '2022-01-09 23:03:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rute`
--

CREATE TABLE `rute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `jam` time NOT NULL,
  `transportasi_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rute`
--

INSERT INTO `rute` (`id`, `tujuan`, `start`, `end`, `harga`, `jam`, `transportasi_id`, `created_at`, `updated_at`) VALUES
(1, 'Jakarta', 'Bandung', 'Jakarta', 50000, '08:00:00', 1, '2021-12-19 00:47:07', '2021-12-19 00:47:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transportasi`
--

CREATE TABLE `transportasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transportasi`
--

INSERT INTO `transportasi` (`id`, `name`, `kode`, `jumlah`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Bus X', 'XXX', 20, 1, '2021-12-19 00:46:31', '2021-12-19 00:46:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('Admin','Petugas','Penumpang') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '$2y$10$iHJkEvBs9bb8hkh4CzKEtOcZCNxudhKCdbaj92s1AEItwibNBcTde', 'Admin', '2021-01-11 20:49:02', '2021-01-11 20:49:02'),
(2, 'petugas', 'petugas', '$2y$10$JuqG/06LZbFZKawFeSQEM.ZwrwxHT6NVfZ0yY2.JfgskGoIDVSvMG', 'Petugas', '2021-01-11 20:51:32', '2021-01-11 20:51:32'),
(4, 'Ivan', 'Ivan', '$2y$10$iTkpge660VElFZNYilNDSuZ4.tRHSXWRsGhUXf8Gf5gdgJMDW/f1S', 'Penumpang', '2021-12-18 23:33:28', '2021-12-18 23:33:28'),
(5, 'User', 'User', '$2y$10$5OKhFgyExzYs0yOktFIlGO9cGBKDr/3mBkRZwBQYCIbOaprRTt9Va', 'Penumpang', '2021-12-19 00:29:27', '2021-12-19 00:29:27'),
(6, 'Muhamad Ivan', 'Muhamad Ivan', '$2y$10$GzRjqxFiZs80.Anix1lFHuyO6VvRYdx7nmj2.EbVWx.E3tX.y.eWW', 'Penumpang', '2022-01-09 21:59:28', '2022-01-09 21:59:28'),
(7, 'Arfin', 'Arfin', '$2y$10$T8BSugSC2Q3BnqbsbNjELOkTdPet7CE4I/tu0WSGbjP1sTFNg30hG', 'Penumpang', '2022-01-09 22:07:08', '2022-01-09 22:07:08');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemesanan_rute_id_foreign` (`rute_id`),
  ADD KEY `pemesanan_penumpang_id_foreign` (`penumpang_id`),
  ADD KEY `pemesanan_petugas_id_foreign` (`petugas_id`);

--
-- Indeks untuk tabel `rute`
--
ALTER TABLE `rute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rute_transportasi_id_foreign` (`transportasi_id`);

--
-- Indeks untuk tabel `transportasi`
--
ALTER TABLE `transportasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transportasi_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `rute`
--
ALTER TABLE `rute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transportasi`
--
ALTER TABLE `transportasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_penumpang_id_foreign` FOREIGN KEY (`penumpang_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `pemesanan_petugas_id_foreign` FOREIGN KEY (`petugas_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `pemesanan_rute_id_foreign` FOREIGN KEY (`rute_id`) REFERENCES `rute` (`id`);

--
-- Ketidakleluasaan untuk tabel `rute`
--
ALTER TABLE `rute`
  ADD CONSTRAINT `rute_transportasi_id_foreign` FOREIGN KEY (`transportasi_id`) REFERENCES `transportasi` (`id`);

--
-- Ketidakleluasaan untuk tabel `transportasi`
--
ALTER TABLE `transportasi`
  ADD CONSTRAINT `transportasi_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
