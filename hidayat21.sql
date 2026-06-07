-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2026 pada 13.33
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hidayat21`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `kd_kat` varchar(16) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `kd_kat`, `category_name`) VALUES
(8, 'K001', 'Iphone'),
(9, 'K002', 'Samsung'),
(10, 'K003', 'Redmi'),
(11, 'K004', 'Vivo'),
(12, 'K005', 'Infinix');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `min_stock` int(11) NOT NULL DEFAULT 5,
  `price` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_code`, `product_name`, `stock`, `min_stock`, `price`, `gambar`, `created_at`, `updated_at`) VALUES
(11, 8, 'P001', 'Iphone 12 64GB', 2, 1, 5400000, '3020badcce70575150649572cf6e96fc.jpeg', '2026-06-06 14:52:37', '2026-05-26 06:33:34'),
(12, 8, 'P002', 'Iphone 13 128GB', 2, 1, 6800000, 'c344ff08012d9dd70e3e5d2a496ff430.jpeg', '2026-06-03 03:09:20', '2026-05-26 06:35:23'),
(13, 8, 'P003', 'Iphone 14 128GB', -5, 1, 8200000, 'aeee30d903c99d11461088198b16c680.jpeg', '2026-06-06 14:58:12', '2026-05-26 06:37:10'),
(14, 8, 'P004', 'Iphone 15 128GB', 2, 1, 10200000, '713e9d40028346bf38a7b5a7a45f628a.jpeg', '2026-06-03 03:09:36', '2026-05-26 06:39:17'),
(15, 9, 'P005', 'Samsung galaxy S20', 2, 1, 12000000, '96abe566281586032669e131bb2cb456.jpeg', '2026-06-03 03:09:46', '2026-05-26 06:57:44'),
(16, 9, 'P006', 'Samsung galaxy S21', 3, 1, 12000000, '1e772591edff3e5af84e20293b41c3fd.jpeg', '2026-06-03 03:09:56', '2026-05-26 12:47:11'),
(17, 9, 'P007', 'Samsung galaxy S22', 2, 1, 13999999, '68a414153d9ec1262db0df61a2424184.jpeg', '2026-06-03 03:10:16', '2026-05-26 12:49:34'),
(18, 9, 'P008', 'Samsung galaxy S24', 2, 1, 15500000, 'f5552044cefb71415113308b244ec9b9.jpeg', '2026-06-03 03:10:26', '2026-05-26 12:54:29'),
(19, 12, 'P009', 'Infinix HOT 30', 2, 1, 1900000, 'a041ce41406f1d0797ffd4574e077f99.jpeg', '2026-06-03 03:10:45', '2026-05-26 12:59:33'),
(20, 12, 'P010', 'Infinix HOT 40', 2, 1, 2400000, 'a0ccd2a0953073f27f54e9042132af64.jpeg', '2026-06-06 14:59:04', '2026-05-26 13:02:56'),
(21, 12, 'P011', 'Infinix HOT 50', 2, 1, 2600000, 'ef9b4914e36e3d97f8d09c4d2e339b65.jpeg', '2026-06-03 03:11:11', '2026-05-26 13:04:39'),
(22, 12, 'P012', 'Infinix HOT 60', 2, 10, 2700000, '02a76626a06c91c999d854824f6d37aa.jpeg', '2026-05-26 13:06:25', '2026-05-26 13:06:25'),
(23, 10, 'P013', 'Redmi note 10 pro', 2, 10, 2300000, 'c681785ea070b957bdba0290e78fe36f.jpeg', '2026-05-26 13:09:43', '2026-05-26 13:09:43'),
(24, 10, 'P014', 'Redmi note 11 pro', 2, 10, 2600000, '62015762e66a688e0b0bffa223af39ca.jpeg', '2026-05-26 13:12:22', '2026-05-26 13:12:22'),
(25, 10, 'P015', 'Redmi note 12 pro', 2, 10, 2800000, 'a0a40808128035216db0c37abb02b8af.jpeg', '2026-05-26 13:15:38', '2026-05-26 13:15:38'),
(26, 10, 'P016', 'Redmi note 13 pro', 2, 10, 3200000, 'e39525fe8bb29db467c602e826bdb8c1.jpeg', '2026-05-26 13:17:20', '2026-05-26 13:17:20'),
(27, 11, 'P017', 'Vivo Y12', 2, 10, 1950000, 'b9d1b58b7d4c8c9e2c1cc86e025909a2.png', '2026-06-02 01:42:42', '2026-06-02 01:42:42'),
(28, 11, 'P018', 'Vivo Y17', 3, 10, 2200000, 'edab1b92c29c2b0a837cb6c25c8d8728.jpeg', '2026-06-02 01:44:07', '2026-06-02 01:44:07'),
(29, 11, 'P019', 'Vivo Y19', 1, 10, 2300000, '93933320fdf47f751affafc459d31107.jpeg', '2026-06-02 01:45:31', '2026-06-02 01:45:31'),
(30, 11, 'P020', 'Vivo Y21', 2, 1, 2499000, 'e8e77645ecd41b56f024abdaeb147984.jpeg', '2026-06-06 14:53:22', '2026-06-03 03:12:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `change_type` enum('ADD','EDIT','REDUCE') DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `stock_before` int(11) DEFAULT NULL,
  `stock_after` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `product_id`, `change_type`, `qty`, `stock_before`, `stock_after`, `note`, `created_at`, `created_by`) VALUES
(5, 13, 'ADD', 2, 1, 3, 'stok baru', '2026-06-03 04:26:38', 6),
(6, 20, 'REDUCE', 1, 3, 2, 'terjual', '2026-06-06 14:59:04', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') NOT NULL DEFAULT 'staff',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_active`, `created_at`) VALUES
(6, 'HIDAYAT', 'dayat21@gmail.com', '$2y$10$gNZHNdJEId2cQLDoa40S2.AdlaKIoMhpa75s2xa.h9pG8kb2geIkC', 'admin', 1, '2026-05-19 15:53:42');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kd_kat` (`kd_kat`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
