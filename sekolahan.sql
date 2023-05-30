-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Bulan Mei 2023 pada 17.23
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolahan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(5) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_telp` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id`, `nama`, `alamat`, `no_telp`) VALUES
(1, 'Hartono', 'Jl.Klipang RT 05 RW 09, Kota Semarang', '085638691154'),
(2, 'Septi Puspita', 'Jl.Karanggawang RT 08 RW 07, Kota Semarang', '081668260185'),
(3, 'Hendy Rahman', 'Jl.Sikluwung RT 12 RW 06, Kota Semarang', '088500375012'),
(4, 'Tama Malik', 'Jl.Kinibalu RT 01 Rw 08, Kota Semarang', '088160278350'),
(5, 'Joko Winarno', 'Jl.Gayamsari RT 05 RW 08, Kota Semarang\r\n', '088500178254'),
(6, 'Rahayu', 'Jl.Genuk Sari RT 06 RW 02, Kota Semarang', '088360957135'),
(7, 'Yulikah', 'Jl.Tlogosari RT 04 RW 02, Kota Semarang', '088294739674'),
(8, 'Riska Yuda', 'Jl.Jangli Gabeng RT 13 RW 02, Kota Semarang', '088377349701'),
(9, 'Andi Septo', 'Jl.Sawi Raya RT 01 RW 09, Kota Semarang', '088593370123'),
(10, 'Trejo Markojo', 'Jl.Bayam Raya RT 02 RW 08, Kota Semarang', '088277530816'),
(11, 'Ningtyas', 'Jl.Kinibalu Selatan RT 09 RW 01, Kota Semarang', '088188508538'),
(12, 'Wikya Sari', 'Jl.Sendangguwo RT 09 RE 03, Kota Semarang', '088277593412'),
(13, 'Santi Lastuti', 'Jl.Pucanggading RT 04 RW 09, Kota Semarang', '088588301743'),
(14, 'Agus', 'Jl.Wonodri RT 07 RW 01, Kota Semarang', '088185026354'),
(15, 'Maharani Putri', 'Jl.Tegalsari RT 06 RW 03, Kota Semarang', '088599036143');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id` int(5) NOT NULL,
  `merk` varchar(100) DEFAULT NULL,
  `warna` varchar(100) DEFAULT NULL,
  `harga` varchar(100) DEFAULT NULL,
  `stok` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id`, `merk`, `warna`, `harga`, `stok`) VALUES
(1, 'Toyota Kijang Innova', 'Hitam', 'Rp. 369,9 - 471,9 Juta', 5),
(2, 'Mitsubishi Xpander', 'Merah', 'Rp.258,2 - 312,9 Juta', 3),
(3, 'Toyota Avanza', 'Putih', 'Rp. 233,1 - 298,5 Juta', 0),
(4, 'Honda Mobilio', 'Putih', 'Rp.235,9 Juta', 4),
(5, 'Hyundai Stargazer', 'Grey', 'Rp.247,2 - 311,8 Juta', 4),
(6, 'Suzuki XL7', 'Merah', 'Rp.254,8 - 292,7 Juta', 6),
(7, 'BMW M3 Sedan', 'Blue', 'Rp. 2,5 Milyar', 2),
(8, 'Kia Grand Carnival', 'Grey', 'Rp.828 - 928 Juta', 2),
(9, 'Mercedes Benz EQE', 'Blue', 'Rp. 2,22 Milyar', 1),
(10, 'Lexus ES', 'Putih', 'Rp. 1,22 Milyar', 0),
(11, 'Suzuki Ertiga', 'Putih', 'Rp 228,2 - 262,6 Juta', 6),
(12, 'Alphard', 'Hitam', 'Rp 1,23 - 1,66 Milyar', 1),
(13, 'Nissan Serena', 'Merah', 'Rp 539,3 Juta ', 3),
(14, 'Jaguar XF', 'Biru', 'Rp 1,96 Milyar', 1),
(15, 'Mitsubishi Pajero Sport', 'Putih', 'Rp 552,1 - 735,6 Juta', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(5) NOT NULL,
  `nama_pelanggan` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_telp` char(100) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `nama_pelanggan`, `alamat`, `no_telp`, `tanggal_transaksi`) VALUES
(1, 'Yahya Zofar', 'Jl.Ngemplak RT 05 RW 09, Kota Semarang', '088917460183', '2022-01-20'),
(2, 'Kimira Mayke', 'Jl.Lamper Tengah RT 02 RW 09, Kota Semarang', '085397019673', '2022-03-01'),
(3, 'Juan Rizky', 'Jl.Kyai Tambak Deres 4 RT 01 RW 06, Kota Surabaya', '081639784610', '2022-03-01'),
(4, 'Cello Marselino', 'Jl.Abdul Muis RT 09 RW 15, Kota Jakarta', '085183620947', '2022-06-06'),
(5, 'Anya Geraldine', 'Jl. Perumahan Pondok Indah RT 12 RW 06, Kota Jakarta Selatan ', '089497116834', '2022-07-10'),
(6, 'Mahen Danuarta', 'Jl. Perumahan Pondok Indah RT 11 RW 05, Kota Jakarta Selatan ', '085601639967', '2022-07-29'),
(7, 'Jung Jamal', 'Jl. Wongso Dirjan RT 19 RW 07, Kota Jogja ', '081381156377', '2022-10-05'),
(8, 'Dimas Prasetyo', 'Jl. Kebondalem RT 04 RW 05, Temanggung', '088233646572', '2022-10-12'),
(9, 'Fadil Jaidi', 'Jl. Jati Asih RT 08 RW 01, Kota Bekasi', '0858835286744', '2022-12-22'),
(10, 'Huang Lucas', 'Jl. Pedurungan RT 11 RW 12, Kota Semarang', '081687283653', '2023-02-03'),
(11, 'Winwin Wardana', 'Jl. Graha Wahid RT 09 RW 09, Kota Semarang\r\n', '083784611092', '2023-03-18'),
(12, 'Aretha Dara', 'Jl.Jati Asih RT 05 RW 06, Kota Bekasi', '085844019472', '2023-03-22'),
(13, 'Agaisha Sharadiva', 'Jl.Ngemplak RT 01 RW 09, Kota Semarang', '081788401632', '2023-04-09'),
(14, 'Rigel Atmaja', 'Jl.Tebet Raya RT 15 RW 15, Jakarta Selatan', '088588335127', '2023-04-20'),
(15, 'Aira Margareth', 'Jl.Pattimura 51 RT 08 RW 04, Kota Malang', '088539184046', '2023-05-29');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
