-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Agu 2026 pada 16.27
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
-- Database: `portofolio`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `blog`
--

INSERT INTO `blog` (`id`, `image`, `title`, `subtitle`, `created_at`, `updated_at`) VALUES
(1, '6a71984a6ebb4_vege-cat.jpg', 'icikiwir', 'awas ada sule', '2026-08-04 07:44:10', NULL),
(2, '6a719bce1f149_orang-ijo.jpg', 'ahaydeee', 'prikitiw', '2026-08-04 07:59:10', NULL),
(3, '6a719bff0399c_vege-cat.jpg', 'aren gentong', 'kucing tabby gembrot my kesukaan', '2026-08-04 07:59:59', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`) VALUES
(1, 'Kipas', 150500.00, 'Elektronik'),
(2, 'Air Conditioner', 5000000.00, 'Elektronik'),
(3, 'Television', 3000000.00, 'Elektronik'),
(4, 'Dishwasher Machine', 6500000.00, 'Elektronik'),
(5, 'Laptop', 7000000.00, 'Elektronik'),
(6, 'Printer', 5000000.00, 'Elektronik'),
(7, 'Komputer', 15000000.00, 'Elektronik'),
(8, 'Kulkas', 8000000.00, 'Elektronik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `button_link` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `projects`
--

INSERT INTO `projects` (`id`, `image`, `title`, `subtitle`, `button_link`, `created_at`, `updated_at`) VALUES
(1, '6a71681dab118_desktop-green-pink.jpg', 'bbbbbbbbb', 'ccccccccc', 'https://youtu.be/lEXBxijQREo?si=CIwhMaZu-KW3xrbL', '2026-08-04 04:18:31', '2026-08-04 04:18:37'),
(2, '6a716c7eac77f_desktop-polkadot.jpg', 'sssssss', 'ddddd', 'https://youtu.be/lEXBxijQREo?si=CIwhMaZu-KW3xrbL', '2026-08-04 04:37:18', NULL),
(3, '6a7195eaa86a7_orang-ijo.jpg', 'aaaaaa', 'bbbbb', 'https://youtu.be/lEXBxijQREo?si=CIwhMaZu-KW3xrbL', '2026-08-04 04:46:53', '2026-08-04 07:34:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resume`
--

CREATE TABLE `resume` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `year_start` year(4) NOT NULL,
  `year_end` year(4) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `resume`
--

INSERT INTO `resume` (`id`, `title`, `year_start`, `year_end`, `subtitle`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Judy Nick', '2020', '2026', 'Judy Hopps Nick Wilde', 'Zootopia 1 Zootopia 2 Zootopia 3', '2026-08-01 07:32:45', '2026-08-01 08:03:12'),
(2, 'brraahhh', '2022', '2026', 'ggrraahh', 'kcaw kcaw kcaw', '2026-08-01 08:06:38', NULL),
(3, 'asasasasas', '2022', '2026', 'asasasasasasasasa', ' kecimpring gula jawakecimpring gula jawa kecimpring gula jawa kecimpring gula jawakecimpring gula jawa kecimpring gula jawa', '2026-08-05 14:03:32', NULL),
(4, 'yhhguhuhuhuh', '2024', '2025', 'erwoitpowejtfeaofjeaop', 'wawawawawawawawawawawawa awaw awawawawaawa', '2026-08-05 14:04:26', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `website_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `ig` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `email`, `phone`, `address`, `description`, `ig`, `created_at`, `updated_at`) VALUES
(1, 'puji putri meidi', 'pujiputrim@gmail.com', '087730711039', 'Jalan Malaka III Gang 3 No. 110 RT 002 / RW 006, Kel. Malaka Sari, Kec. Duren Sawit, Jakarta Timur 13460', 'Mahasiswa Ilmu Komunikasi yang pada saat ini bergabung sebagai anggota Peserta Kelas Website Programming PPKD Jakarta Pusat. Belajar mengenai HTML, CSS+, Javascript, Laravel, PHP. Saat ini mengeksplor', 'linkedin.com/in/pujiiputrim', '2026-07-30 02:51:40', '2026-08-05 13:40:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `progress` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `skills`
--

INSERT INTO `skills` (`id`, `name`, `progress`, `created_at`, `updated_at`) VALUES
(1, 'HTML 5', 50, '2026-08-03 06:53:24', '2026-08-03 06:53:40'),
(2, 'Adobe Explore', 80, '2026-08-03 06:54:32', '2026-08-05 13:45:16'),
(3, 'CSS3', 67, '2026-08-03 06:54:48', NULL),
(5, 'Public Speaking', 95, '2026-08-03 07:21:17', '2026-08-05 13:48:07'),
(6, 'Google Workspace', 85, '2026-08-05 13:44:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `button1_text` varchar(30) NOT NULL,
  `button1_link` varchar(50) NOT NULL,
  `button2_text` varchar(30) NOT NULL,
  `button2_link` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `description`, `button1_text`, `button1_link`, `button2_text`, `button2_link`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(14, 'Judy Hopps', 'The Intelegent Bunny', 'Go found the momma of Cops life in Zootopia Movies, 3 seasons', 'Judy', 'https://youtu.be/VyDwTRFHQqY?si=MkE07tH2PKhGjEpQ', 'Hopps', 'https://youtu.be/VyDwTRFHQqY?si=MkE07tH2PKhGjEpQ', '6a6d931f53046_giphy-judyhopps.gif', 1, '2026-08-01 06:33:03', '2026-08-01 06:39:27'),
(16, 'Nick Wilde', 'The silly foxy guy', 'Nick Wilde the sexy fox in Zootopia universe', 'Nick', 'https://youtu.be/VyDwTRFHQqY?si=MkE07tH2PKhGjEpQ', 'Wilde', 'https://youtu.be/VyDwTRFHQqY?si=MkE07tH2PKhGjEpQ', '6a6d947d26b91_nick-wilde.gif', 1, '2026-08-01 06:38:53', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(9) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(3, 'meimei', 'meimei@gmail.com', '202020'),
(4, 'pistachio', 'kacang@gmail.com', 'peanut'),
(5, 'winnie', 'thepooh@gmail.com', 'madu'),
(11, 'kerang', 'kerang@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `resume`
--
ALTER TABLE `resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
