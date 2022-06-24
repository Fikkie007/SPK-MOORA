-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 23 Jun 2022 pada 01.45
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_akhir_1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_bonus`
--

CREATE TABLE `tb_bonus` (
  `id` int(11) NOT NULL,
  `jumlah_bonus` varchar(128) NOT NULL,
  `min_nilai_yi` double NOT NULL,
  `max_nilai_yi` double NOT NULL,
  `id_user` int(11) NOT NULL,
  `email` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_bonus`
--

INSERT INTO `tb_bonus` (`id`, `jumlah_bonus`, `min_nilai_yi`, `max_nilai_yi`, `id_user`, `email`) VALUES
(4, '10000', 0, 0.27, 19, 'pimpinan@gmail.com'),
(5, '20000', 0.3, 1.5, 19, 'pimpinan@gmail.com'),
(6, '30000', 1.6, 2, 19, 'pimpinan@gmail.com'),
(7, '40000', 2.1, 2.5, 19, 'pimpinan@gmail.com'),
(8, '50000', 2.6, 3, 19, 'pimpinan@gmail.com'),
(9, '60000', 3.1, 3.5, 19, 'pimpinan@gmail.com'),
(10, '70000', 3.6, 4, 19, 'pimpinan@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nik` varchar(15) NOT NULL,
  `no_ktp` varchar(28) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `departemen` varchar(20) NOT NULL,
  `posisi` varchar(15) NOT NULL,
  `status` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id_karyawan`, `nik`, `no_ktp`, `nama_karyawan`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `departemen`, `posisi`, `status`) VALUES
(1, '00100400106', '3217062711770011', 'Mohamed Salah', 'L', 'Bandung', '1977-11-29', 'Kp. Bunisari RT04/RW11 Ds. Gadobangkong Kec. Ngamp', 'Spinning', 'Operator', '2022'),
(4, '001.004.00108\r\n', '3217061610740005\r\n', 'Son-Heung Min', 'L', 'Bandung', '1996-07-15', 'Graha Bukit Raya 3 Blok A9 No 1 RT01/RW25 Cilame Ngamprah Bandung Barat\r\n', 'Spinning', 'Operator', '2021'),
(5, '001.004.00128', '3217081511660005', 'Cristiano Ronaldo', 'L', 'Bandung', '1996-06-02', 'Kp. Cikurutug RT02/RW07 Ds. Tagogapu Kec. Padalarang Kab. Bandung Barat\r\n', 'Spinning', 'Operator', '2022'),
(6, '001.004.00138', '3217090202790033', 'Toto Juharta', 'L', 'Majalengka', '1996-06-21', 'Puri Indah Lestari Blok C4 No.6 Ds. Batujajar RT/02/16 KBB\r\n', 'Weaving', 'Operator', ''),
(8, '001.044.00169', '3277021504620002', 'Harry kane', 'L', 'Kuningan', '1978-08-09', 'Pondok Ranca Belut Block A15 RT01/11 Kel. Padasuka Kec. Cimahi Tengah', 'Weaving', 'Operator', ''),
(11, '001.004.00167', '3217081005740042', 'Diogo Jota', 'L', 'Magelang', '1974-05-10', 'Kp. Cipadangmanah RT02/16 Padalarang', 'Spinning', 'Operator', '2021'),
(13, '001.004.00174', '3217041607780006', 'Jamie Vardy', 'L', 'Bandung', '1978-07-16', 'Kp. Cikalong Kolot RT04/08 Ds. Cikalong Kec. Cikalong Wetan', 'Spinning', 'Operator', '2021'),
(14, '001.004.00177', '3277020304800024', 'Wilfried Zaha', 'L', 'Purworejo', '1980-04-03', 'Kp. Tangkil RT 06/07 Cigugur Tengah Cimahi Tengah', 'Spinning', 'Operator', '2021'),
(15, '001.004.00180', '3273061111770007', 'Raheem St', 'L', 'Bandung', '1977-11-06', 'Jl. Gg Saleh No. 175/66 RT05/06 Kel. Arjuna Kec. Cicendo-Bandung', 'Spinning', 'Operator', '2021'),
(16, '001.004.00197', '3171082409630001', 'Jarrod Bowen', 'L', 'Bandung', '1963-09-24', 'Jl Johar Baru utara No 11 RT 14/03 Ds Johar Baru Kec Johar Baru', 'Spinning', 'Operator', '2021'),
(17, '001.004.00198', '3277022006600019', 'Ivan Toney', 'L', 'Medan', '1960-05-20', 'Jl. Sriwijaya Raya H-14 Cimahi RT06/01 Karang Mekar Cimahi Tengah', 'Spinning', 'Operator', '2021'),
(18, '001.004.00327', '3217081310630006', 'Raphinha', 'L', 'Bandung', '1963-10-13', 'PPI Jl Nakula Blok G3/4 RT 05/27 Padalarang', 'Spinning', 'Operator', '2021'),
(19, '001.004.00329', '3217060702560007', 'Riyad Mahrez', 'L', 'Bandung', '1956-02-07', 'Kp Cikalong kolot RT 02/08 Ds Cikalong Kec Cikalong wetan', 'Spinning', 'Operator', '2021'),
(20, '001.004.00531', '3217060703760015', 'Teemu Pukki', 'L', 'Bandung', '1976-03-07', 'Cikalang RT 03/10 Ds Bojongkoneng Kec Ngamprah', 'Spinning', 'Operator', '2021'),
(241, '001.051.00386', '3277022509920014', 'Bukayo Saka', 'L', 'Cimahi', '1992-09-25', 'Jln Kebon Manggu RT 002/ RW 004 Kel Padasuka Kec Cimahi Tengah', 'Weaving', 'Operator', ''),
(242, '001.051.00387', '3217061907890008', 'Ollie Watkins', 'L', 'Serang', '1989-07-19', 'Jl Baros Pasar RT 02/01 Ds Lewigajah kec Cimahi Selatan', 'Weaving', 'Operator', ''),
(243, '001.051.00388', '3217062602920005', 'Michail Antonio', 'L', 'Bandung', '1992-02-26', 'Ngamprah kidul RT 04/02 Ds Ngamprah Kec Ngamprah', 'Weaving', 'Operator', ''),
(244, '001.052.00110', '3217060503660002', 'Richarlison', 'L', 'Bandung', '1966-03-05', 'Jl. Haji Gofur 66 Karya Bhakti IV RT02/02', 'Weaving', 'Operator', ''),
(245, '001.052.00283', '3217060911760011', 'Emmanuel Dennis', 'L', 'Cimahi', '1976-11-09', 'Kp. Ciloa RT02/02 Ds. Mekar Sari KBB', 'Weaving', 'Operator', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `bobot_kriteria` double NOT NULL,
  `jenis_kriteria` varchar(15) NOT NULL,
  `tahun` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`id_kriteria`, `nama_kriteria`, `bobot_kriteria`, `jenis_kriteria`, `tahun`) VALUES
(39, 'Tanggung jawab', 1.2, 'Benefit', '2021'),
(40, 'Kepribadian', 1.5, 'Benefit', '2021'),
(41, 'Absensi', 1, 'Cost', '2021'),
(42, 'Goals', 1.4, 'Benefit', '2022'),
(43, 'Assists', 1.6, 'Benefit', '2022'),
(44, 'Shot Accuracy', 1.1, 'Benefit', '2022'),
(45, 'Crosses', 1.3, 'Benefit', '2022'),
(46, 'Offsides', 1.6, 'Cost', '2022'),
(47, 'Shot Blocked', 1.4, 'Cost', '2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penilaian`
--

CREATE TABLE `tb_penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_sub_kriteria` int(11) NOT NULL,
  `tahun` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_penilaian`
--

INSERT INTO `tb_penilaian` (`id_penilaian`, `id_karyawan`, `id_sub_kriteria`, `tahun`) VALUES
(259, 1, 29, '2021'),
(260, 1, 31, '2021'),
(261, 1, 33, '2021'),
(262, 5, 28, '2021'),
(263, 5, 31, '2021'),
(264, 5, 33, '2021'),
(265, 11, 28, '2021'),
(266, 11, 30, '2021'),
(267, 11, 33, '2021'),
(268, 4, 28, '2021'),
(269, 4, 32, '2021'),
(270, 4, 33, '2021'),
(271, 13, 27, '2021'),
(272, 13, 30, '2021'),
(273, 13, 35, '2021'),
(274, 15, 29, '2021'),
(275, 15, 30, '2021'),
(276, 15, 35, '2021'),
(277, 14, 29, '2021'),
(278, 14, 32, '2021'),
(279, 14, 35, '2021'),
(280, 17, 29, '2021'),
(281, 17, 31, '2021'),
(282, 17, 33, '2021'),
(283, 18, 28, '2021'),
(284, 18, 31, '2021'),
(285, 18, 35, '2021'),
(286, 19, 29, '2021'),
(287, 19, 31, '2021'),
(288, 19, 33, '2021'),
(289, 16, 28, '2021'),
(290, 16, 30, '2021'),
(291, 16, 33, '2021'),
(292, 20, 27, '2021'),
(293, 20, 30, '2021'),
(294, 20, 33, '2021'),
(295, 1, 27, '2022'),
(296, 1, 28, '2022'),
(297, 1, 29, '2022'),
(298, 1, 30, '2022'),
(299, 1, 33, '2022'),
(300, 1, 35, '2022'),
(301, 5, 27, '2022'),
(302, 5, 28, '2022'),
(303, 5, 29, '2022'),
(304, 5, 30, '2022'),
(305, 5, 33, '2022'),
(306, 5, 35, '2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ranking`
--

CREATE TABLE `tb_ranking` (
  `id_ranking` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `nilai_yi` double NOT NULL,
  `tahun` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_ranking`
--

INSERT INTO `tb_ranking` (`id_ranking`, `id_karyawan`, `nilai_yi`, `tahun`) VALUES
(79, 13, 0.48264, '2021'),
(80, 18, 0.34022, '2021'),
(81, 15, 0.31341, '2021'),
(82, 20, 0.22152, '2021'),
(83, 14, 0.1978, '2021'),
(84, 11, 0.13691, '2021'),
(85, 16, 0.13691, '2021'),
(86, 5, 0.0791, '2021'),
(87, 4, 0.0213, '2021'),
(88, 1, -0.00551, '2021'),
(89, 17, -0.00551, '2021'),
(90, 19, -0.00551, '2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sub_kriteria`
--

CREATE TABLE `tb_sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nama_sub_kriteria` varchar(30) NOT NULL,
  `nilai_sub_kriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_sub_kriteria`
--

INSERT INTO `tb_sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `nama_sub_kriteria`, `nilai_sub_kriteria`) VALUES
(27, 42, 'Sangat Baik', 4),
(28, 43, 'Baik', 3),
(29, 44, 'Cukup', 2),
(30, 45, 'Sangat Baik', 4),
(31, 43, 'Baik', 3),
(32, 45, 'Cukup', 2),
(33, 46, '> 3', 4),
(35, 47, '< 3', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(512) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(19, 'Pimpinan', 'pimpinan@gmail.com', 'default.jpg', '$2y$10$QwqXl0ObmM11Li7ruFLF/O5JFDIr9AKFwF8Bxny/IaDHPprK2ZZ2e', 2, 1, 1625342262),
(21, 'Kepala Bagian Spinning', 'kabag@gmail.com', 'default.jpg', '$2y$10$n5BFK85pdrjP25sqWW1P/OBQow9/n1XMd.0N5RFFralriUx7Ngz1m', 3, 1, 1625346533),
(32, 'admin', 'admin@gmail.com', 'default.jpg', '$2y$10$MrBGBa.RR6BhbBTXqm5eX.vzHzvespgJH1MbtEfmDHzbai8Xjd0gy', 1, 1, 232434);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Hrd'),
(2, 'Pimpinan'),
(3, 'Kabag Spinning'),
(4, 'Kabag Weaving'),
(5, 'Kabag Celup'),
(6, 'Kabag Dyeing'),
(7, 'Kabag Finnishing'),
(8, 'Kabag Utility');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_bonus`
--
ALTER TABLE `tb_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_karyawan` (`id_karyawan`),
  ADD KEY `id_kriteria` (`id_sub_kriteria`);

--
-- Indeks untuk tabel `tb_ranking`
--
ALTER TABLE `tb_ranking`
  ADD PRIMARY KEY (`id_ranking`);

--
-- Indeks untuk tabel `tb_sub_kriteria`
--
ALTER TABLE `tb_sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_bonus`
--
ALTER TABLE `tb_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=882;

--
-- AUTO_INCREMENT untuk tabel `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT untuk tabel `tb_ranking`
--
ALTER TABLE `tb_ranking`
  MODIFY `id_ranking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `tb_sub_kriteria`
--
ALTER TABLE `tb_sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  ADD CONSTRAINT `tb_penilaian_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `tb_karyawan` (`id_karyawan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_penilaian_ibfk_2` FOREIGN KEY (`id_sub_kriteria`) REFERENCES `tb_sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_sub_kriteria`
--
ALTER TABLE `tb_sub_kriteria`
  ADD CONSTRAINT `tb_sub_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `tb_kriteria` (`id_kriteria`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
