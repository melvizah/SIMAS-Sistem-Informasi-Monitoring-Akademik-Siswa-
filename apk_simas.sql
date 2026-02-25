-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2025 at 03:15 AM
-- Server version: 11.7.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apk_simas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@simas.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id_mapel` int(11) NOT NULL,
  `nama_mapel` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id_mapel`, `nama_mapel`) VALUES
(1, 'Bahasa Indonesia'),
(2, 'Ilmu Pengetahuan Alam dan Sosial (IPAS)'),
(3, 'Pendidikan Pancasila dan Kewarganegaraan (PPKn)'),
(4, 'Matematika'),
(5, 'Seni Budaya dan Keterampilan (SBK)'),
(6, 'Pendidikan Jasmani, Olahraga, dan Kesehatan (PJOK)'),
(7, 'Pendidikan Agama dan Budi Pekerti'),
(8, 'Bahasa Inggris'),
(9, 'Bahasa Jawa');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `NISN` varchar(20) DEFAULT NULL,
  `NAMA` varchar(100) DEFAULT NULL,
  `nilai_uh1` float DEFAULT NULL,
  `nilai_uh2` float DEFAULT NULL,
  `nilai_uh3` float DEFAULT NULL,
  `nilai_uh4` float DEFAULT NULL,
  `nilai_uh5` float DEFAULT NULL,
  `nilai_uts` float DEFAULT NULL,
  `nilai_sikap` float DEFAULT NULL,
  `rata_rata` float DEFAULT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `NISN`, `NAMA`, `nilai_uh1`, `nilai_uh2`, `nilai_uh3`, `nilai_uh4`, `nilai_uh5`, `nilai_uts`, `nilai_sikap`, `rata_rata`, `id_guru`, `id_mapel`, `semester`) VALUES
(17, '0098765401', 'Aisha Nabila Putri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(18, '0098765402', 'Arga Pratama Rizki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(19, '0098765403', 'Kayla Aurel Zahra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(20, '0098765404', 'Rayhan Alvaro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(21, '0098765405', 'Zara Amelia Putri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(22, '0098765406', 'Keanu Dimas Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(23, '0098765407', 'Hana Qurratu Aini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(24, '0098765408', 'Zidan Malik Farel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(25, '0098765409', 'Laila Putri Anggraeni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(26, '0098765410', 'Daffa Rizky Aditya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(27, '0098765411', 'Nayla Putri Ramadhani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(28, '0098765412', 'Rafi Arya Nugraha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(29, '0098765413', 'Zahra Anindya Khairunisa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(30, '0098765414', 'Farel Aditya Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(31, '0098765415', 'Alya Syafira Putri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(32, '0098765416', 'Rehan Bagas Pradana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(33, '0098765417', 'Celine Aureliana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(34, '0098765418', 'Fabian Nur Alvaro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(35, '0098765419', 'Khansa Adelia Ramadhani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(36, '0098765420', 'Naufal Ghani Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(37, '0098765421', 'Adinda Salma Zahira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(38, '0098765422', 'Dilan Aditya Fajar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(39, '0098765423', 'Rafa Zakiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(40, '0098765424', 'Nayara Keisya Putri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(41, '0098765425', 'Rizky Haidar Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(42, '0098765426', 'Amira Cahyani Putri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(43, '0098765427', 'Daryl Nathan Prakoso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(44, '0098765428', 'Kirana Maulida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(45, '0098765429', 'Fathan Yusril Ananda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(46, '0098765430', 'Shakila Zahra Anjani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(48, '0098765701', 'Alvaro Reihan Mahendra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(49, '0098765702', 'Nayla Kirani Putri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(50, '0098765703', 'Rafi Ahmad Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(51, '0098765704', 'Alya Zahra Khairunnisa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(52, '0098765705', 'Fadhil Ramadhan Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(53, '0098765706', 'Cinta Maharani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(54, '0098765707', 'Dimas Arya Nugraha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(55, '0098765708', 'Salsabila Rahmawati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(56, '0098765709', 'Rizky Ananda Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(57, '0098765710', 'Tiara Putri Lestari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(58, '0098765711', 'Bagas Dwi Pamungkas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(59, '0098765712', 'Anindya Cahya Putri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(60, '0098765713', 'Reno Febriansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(61, '0098765714', 'Amira Nasywa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(62, '0098765715', 'Dio Aryo Prakoso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(63, '0098765716', 'Nadia Azzahra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(64, '0098765717', 'Farhan Dwi Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(65, '0098765718', 'Keyla Amanda Putri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(66, '0098765719', 'Yoga Pradana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(67, '0098765720', 'Felisha Maharani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(68, '0098765721', 'Gilang Aditya Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(69, '0098765722', 'Aurelina Putri Ramadhani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(70, '0098765723', 'Reza Fahrezi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(71, '0098765724', 'Indah Permata Sari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(72, '0098765725', 'Aditya Rangga Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(73, '0098765726', 'Nisrina Khansa Putri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(74, '0098765727', 'Farel Muhammad Rizky', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(75, '0098765728', 'Citra Amelia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(76, '0098765729', 'Arkan Fadillah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(77, '0098765730', 'Zahra Meisya Putri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(86, '0098765401', 'Aisha Nabila Putri', 90, 75, 80, 90, 89, 70, 80, 82, 1, 1, '1'),
(89, '0098765421', 'Adinda Salma Zahira', 90, 90, 79, 78, 89, 100, 60, 83.71, 1, 1, '1'),
(92, '0098765725', 'Aditya Rangga Saputra', 100, 100, 80, 90, 100, 90, 100, 94.29, 2, 8, '1');

-- --------------------------------------------------------

--
-- Table structure for table `rekap_absensi`
--

CREATE TABLE `rekap_absensi` (
  `id` int(11) NOT NULL,
  `nisn` varchar(10) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `sakit` int(11) DEFAULT NULL,
  `izin` int(11) DEFAULT NULL,
  `alpha` int(11) DEFAULT NULL,
  `total_hadir` int(11) DEFAULT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rekap_absensi`
--

INSERT INTO `rekap_absensi` (`id`, `nisn`, `nama`, `semester`, `sakit`, `izin`, `alpha`, `total_hadir`, `id_guru`, `id_mapel`) VALUES
(10, '0098666001', 'Ravan Elvano Prasetya', '1', 2, 0, 0, 58, 6, 4),
(11, '0098666002', 'Alea Nadhira Putri', '1', 1, 0, 0, 59, 6, 4),
(12, '0098666003', 'Davin Arsyan Maulana', '1', 0, 1, 0, 59, 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `NISN` varchar(10) NOT NULL,
  `NAMA` varchar(100) DEFAULT NULL,
  `NOMOR_HP` varchar(20) DEFAULT NULL,
  `NAMA_WALI` varchar(100) DEFAULT NULL,
  `NOMOR_WALI` varchar(20) DEFAULT NULL,
  `ALAMAT` text DEFAULT NULL,
  `id_guru` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`NISN`, `NAMA`, `NOMOR_HP`, `NAMA_WALI`, `NOMOR_WALI`, `ALAMAT`, `id_guru`) VALUES
('0098666001', 'Ravan Elvano Prasetya', '081244114001', 'Lina Marlina', '081233119201', 'Jl. Raya Bringin No. 1, Taman, Sidoarjo', 6),
('0098666002', 'Alea Nadhira Putri', '081244114002', 'Rudi Hartono', '081355028699', 'Jl. Raya Tebel No. 2, Taman, Sidoarjo', 6),
('0098666003', 'Davin Arsyan Maulana', '081244114003', 'Rina Kustiani', '081366002399', 'Jl. Raya Ketegan No. 3, Taman, Sidoarjo', 6),
('0098666004', 'Kayla Adeline Zahira', '081244114004', 'Yudi Kurniawan', '081233116622', 'Jl. Raya Geluran No. 4, Taman, Sidoarjo', 6),
('0098666005', 'Rafi Aditya Ramadhan', '081244114005', 'Wulan Lestari', '081266556666', 'Jl. Raya Pepelegi No. 5, Taman, Sidoarjo', 6),
('0098666006', 'Anaya Azzura Khairunnisa', '081244114006', 'Eko Santoso', '081366991144', 'Jl. Raya Bringin No. 6, Taman, Sidoarjo', 6),
('0098666007', 'Zidane Alfarizky Pratama', '081244114007', 'Dewi Anggraeni', '081255491100', 'Jl. Raya Tebel No. 7, Taman, Sidoarjo', 6),
('0098666008', 'Luna Shafira Maheswari', '081244114008', 'Sigit Prasetyo', '081244009900', 'Jl. Raya Ngelom No. 8, Taman, Sidoarjo', 6),
('0098666009', 'Naufal Rizky Damar', '081244114009', 'Fitri Hapsari', '081333225500', 'Jl. Raya Ketegan No. 9, Taman, Sidoarjo', 6),
('0098666010', 'Adelia Quinara Putri', '081244114010', 'Rahmat Hidayat', '081299099600', 'Jl. Raya Geluran No. 10, Taman, Sidoarjo', 6),
('0098666011', 'Zahwan Revaldi Kusuma', '081244114011', 'Siti Lestari', '081266441133', 'Jl. Raya Taman No. 11, Sidoarjo', 6),
('0098666012', 'Fiona Alisha Maharani', '081244114012', 'Andri Suwito', '081366115522', 'Jl. Raya Bringin No. 12, Taman, Sidoarjo', 6),
('0098666013', 'Hafidz Dwi Rahman', '081244114013', 'Tari Yuliana', '081233445599', 'Jl. Raya Ketegan No. 13, Taman, Sidoarjo', 6),
('0098666014', 'Clarissa Nayla Rahmi', '081244114014', 'Ridwan Satria', '081355444311', 'Jl. Raya Geluran No. 14, Taman, Sidoarjo', 6),
('0098666015', 'Arka Maulana Yusuf', '081244114015', 'Wati Kurniati', '081255416600', 'Jl. Raya Bringin Tengah No. 15, Taman, Sidoarjo', 6),
('0098666016', 'Nayara Aurelia Fadila', '081244114016', 'Bambang Sugiarto', '081233110011', 'Jl. Raya Tebel No. 16, Taman, Sidoarjo', 6),
('0098666017', 'Elvano Rizqan Mahendra', '081244114017', 'Tania Wulandari', '081366009900', 'Jl. Raya Ketegan No. 17, Taman, Sidoarjo', 6),
('0098666018', 'Mikhaela Syarifa Putri', '081244114018', 'Bayu Pratama', '081299118800', 'Jl. Raya Geluran No. 18, Taman, Sidoarjo', 6),
('0098666019', 'Rafael Giovani Santoso', '081244114019', 'Ratih Widyasari', '081355006600', 'Jl. Raya Bringin No. 19, Taman, Sidoarjo', 6),
('0098666020', 'Zivana Melinda Ayu', '081244114020', 'Teguh Handoko', '081233116600', 'Jl. Raya Tebel No. 20, Taman, Sidoarjo', 6),
('0098666021', 'Iqbal Damar Fathoni', '081244114021', 'Rina Novitasari', '081244011000', 'Jl. Raya Ketegan No. 21, Taman, Sidoarjo', 6),
('0098666022', 'Caitlyn Amira Zahra', '081244114022', 'Bagus Hidayat', '081266552200', 'Jl. Raya Geluran No. 22, Taman, Sidoarjo', 6),
('0098666023', 'Farel Radian Prakoso', '081244114023', 'Rohani Wibowo', '081233119900', 'Jl. Raya Bringin No. 23, Taman, Sidoarjo', 6),
('0098666024', 'Adeline Khayla Salsabila', '081244114024', 'Fajar Riyadi', '081366008899', 'Jl. Raya Tebel No. 24, Taman, Sidoarjo', 6),
('0098666025', 'Dylan Arvin Maheza', '081244114025', 'Nani Sulastri', '081255446600', 'Jl. Raya Bringin No. 25, Taman, Sidoarjo', 6),
('0098666026', 'Aurora Jazmine Safira', '081244114026', 'Dian Hariyanto', '081299113300', 'Jl. Raya Ngelom No. 26, Taman, Sidoarjo', 6),
('0098666027', 'Reyhan Fadhlan Pratama', '081244114027', 'Mega Andini', '081366114400', 'Jl. Raya Geluran No. 27, Taman, Sidoarjo', 6),
('0098666028', 'Zahira Avira Rahman', '081244114028', 'Anton Kurniawan', '081233446600', 'Jl. Raya Bringin No. 28, Taman, Sidoarjo', 6),
('0098666029', 'Aditya Bramasta Yusuf', '081244114029', 'Hesti Marlina', '081244010100', 'Jl. Raya Tebel No. 29, Taman, Sidoarjo', 6),
('0098666030', 'Freya Kalista Nuraini', '081244114030', 'Bayu Firmansyah', '081266442200', 'Jl. Raya Ketegan No. 30, Taman, Sidoarjo', 6),
('0098765401', 'Aisha Nabila Putri', '081244569801', 'Rina Kartikasari', '081322017789', 'Jl. Raya Taman No. 12, Sidoarjo', 1),
('0098765402', 'Arga Pratama Rizki', '081244569802', 'Budi Santoso', '082166025543', 'Jl. Mawar Indah No. 5, Taman, Sidoarjo', 1),
('0098765403', 'Kayla Aurel Zahra', '081244569803', 'Hendra Kurniawan', '081532105567', 'Jl. Melati No. 9, Taman, Sidoarjo', 1),
('0098765404', 'Rayhan Alvaro', '081244569804', 'Nurul Azizah', '081288763345', 'Jl. Pandan Indah No. 8, Taman, Sidoarjo', 1),
('0098765405', 'Zara Amelia Putri', '081244569805', 'Rudi Hartono', '081355669901', 'Jl. Diponegoro No. 31, Taman, Sidoarjo', 1),
('0098765406', 'Keanu Dimas Saputra', '081244569806', 'Sari Puspita', '081271008833', 'Jl. Rajawali No. 5, Taman, Sidoarjo', 1),
('0098765407', 'Hana Qurratu Aini', '081244569807', 'Wahyu Gunawan', '082290876654', 'Jl. Gubeng Kertajaya No. 27, Taman, Sidoarjo', 1),
('0098765408', 'Zidan Malik Farel', '081244569808', 'Dewi Lestari', '081250439982', 'Jl. Semolowaru No. 11, Taman, Sidoarjo', 1),
('0098765409', 'Laila Putri Anggraeni', '081244569809', 'Arman Setiawan', '081344427761', 'Jl. Raya Menur No. 88, Taman, Sidoarjo', 1),
('0098765410', 'Daffa Rizky Aditya', '081244569810', 'Yuliana Dewi', '081322004412', 'Jl. Anggrek No. 4, Taman, Sidoarjo', 1),
('0098765411', 'Nayla Putri Ramadhani', '081244569811', 'Dimas Prasetyo', '081277015598', 'Jl. Flamboyan No. 10, Taman, Sidoarjo', 1),
('0098765412', 'Rafi Arya Nugraha', '081244569812', 'Lina Wahyuni', '082199543309', 'Jl. Dahlia No. 15, Taman, Sidoarjo', 1),
('0098765413', 'Zahra Anindya Khairunisa', '081244569813', 'Hary Setiadi', '081280056677', 'Jl. Cemara No. 21, Taman, Sidoarjo', 1),
('0098765414', 'Farel Aditya Saputra', '081244569814', 'Fitriani Rahma', '081233221900', 'Jl. Garuda No. 6, Taman, Sidoarjo', 1),
('0098765415', 'Alya Syafira Putri', '081244569815', 'Joko Priyono', '081344112250', 'Jl. Mangga No. 3, Taman, Sidoarjo', 1),
('0098765416', 'Rehan Bagas Pradana', '081244569816', 'Sinta Marlina', '081388805564', 'Jl. Teratai No. 7, Taman, Sidoarjo', 1),
('0098765417', 'Celine Aureliana', '081244569817', 'Gunawan Saputra', '082270058890', 'Jl. Sawo No. 13, Taman, Sidoarjo', 1),
('0098765418', 'Fabian Nur Alvaro', '081244569818', 'Mita Ardiani', '081277722245', 'Jl. Pandanwangi No. 22, Taman, Sidoarjo', 1),
('0098765419', 'Khansa Adelia Ramadhani', '081244569819', 'Aditya Pramono', '081355604422', 'Jl. Kenongo No. 11, Taman, Sidoarjo', 1),
('0098765420', 'Naufal Ghani Pratama', '081244569820', 'Fika Amalia', '081333007768', 'Jl. Raya Ketegan No. 17, Taman, Sidoarjo', 1),
('0098765421', 'Adinda Salma Zahira', '081244569821', 'Roni Triyono', '081322005599', 'Jl. Geluran No. 18, Taman, Sidoarjo', 1),
('0098765422', 'Dilan Aditya Fajar', '081244569822', 'Novi Rahmahwati', '081244116655', 'Jl. Ketegan Baru No. 2, Taman, Sidoarjo', 1),
('0098765423', 'Rafa Zakiansyah', '081244569823', 'Weni Kristina', '081355009933', 'Jl. Sedati No. 5, Taman, Sidoarjo', 1),
('0098765424', 'Nayara Keisya Putri', '081244569824', 'Ari Wibowo', '081299994401', 'Jl. Pepelegi No. 10, Taman, Sidoarjo', 1),
('0098765425', 'Rizky Haidar Ramadhan', '081244569825', 'Nur Indah Sari', '081311128876', 'Jl. Wage No. 27, Taman, Sidoarjo', 1),
('0098765426', 'Amira Cahyani Putri', '081244569826', 'Dedi Kurnia', '081255432290', 'Jl. Sukodono No. 19, Taman, Sidoarjo', 1),
('0098765427', 'Daryl Nathan Prakoso', '081244569827', 'Sulastri Handayani', '081376541120', 'Jl. Jetis No. 3, Taman, Sidoarjo', 1),
('0098765428', 'Kirana Maulida', '081244569828', 'Andi Susanto', '081266124411', 'Jl. Sawunggaling No. 2, Taman, Sidoarjo', 1),
('0098765429', 'Fathan Yusril Ananda', '081244569829', 'Dewi Aprillia', '081277893344', 'Jl. Balongsari No. 1, Taman, Sidoarjo', 1),
('0098765430', 'Shakila Zahra Anjani', '081244569830', 'Bayu Kristanto', '081388112255', 'Jl. Taman Pinang No. 20, Sidoarjo', 1),
('0098765701', 'Alvaro Reihan Mahendra', '081245000101', 'Rika Andayani', '081377016654', 'Jl. Raya Tebel No. 4, Taman, Sidoarjo', 2),
('0098765702', 'Nayla Kirani Putri', '081245000102', 'Siti Nurhayati', '081377016655', 'Jl. Pahlawan No. 23, Waru, Sidoarjo', 2),
('0098765703', 'Rafi Ahmad Pratama', '081245000103', 'Dewi Sartika', '081377016656', 'Jl. Diponegoro No. 9, Taman, Sidoarjo', 2),
('0098765704', 'Alya Zahra Khairunnisa', '081245000104', 'Lina Marlina', '081377016657', 'Jl. Anggrek No. 17, Gedangan', 2),
('0098765705', 'Fadhil Ramadhan Putra', '081245000105', 'Sri Mulyani', '081377016658', 'Jl. Cemara No. 5, Buduran', 2),
('0098765706', 'Cinta Maharani', '081245000106', 'Tutik Widyaningsih', '081377016659', 'Jl. Mawar No. 22, Sidoarjo Kota', 2),
('0098765707', 'Dimas Arya Nugraha', '081245000107', 'Yuli Astuti', '081377016660', 'Jl. Kenanga No. 14, Waru', 2),
('0098765708', 'Salsabila Rahmawati', '081245000108', 'Nuraini Handayani', '081377016661', 'Jl. Melati No. 18, Taman', 2),
('0098765709', 'Rizky Ananda Saputra', '081245000109', 'Endang Wulandari', '081377016662', 'Jl. Garuda No. 6, Candi', 2),
('0098765710', 'Tiara Putri Lestari', '081245000110', 'Lilis Kurniawati', '081377016663', 'Jl. Teratai No. 11, Gedangan', 2),
('0098765711', 'Bagas Dwi Pamungkas', '081245000111', 'Yuliana Retno', '081377016664', 'Jl. Wijaya Kusuma No. 15, Sidoarjo', 2),
('0098765712', 'Anindya Cahya Putri', '081245000112', 'Nurul Hidayah', '081377016665', 'Jl. Rungkut No. 31, Waru', 2),
('0098765713', 'Reno Febriansyah', '081245000113', 'Siti Khotimah', '081377016666', 'Jl. Raya Larangan No. 8, Candi', 2),
('0098765714', 'Amira Nasywa', '081245000114', 'Maya Sari', '081377016667', 'Jl. Gajah Mada No. 3, Taman', 2),
('0098765715', 'Dio Aryo Prakoso', '081245000115', 'Lina Herawati', '081377016668', 'Jl. Veteran No. 20, Buduran', 2),
('0098765716', 'Nadia Azzahra', '081245000116', 'Sulastri Handoko', '081377016669', 'Jl. Mawar No. 7, Sidoarjo', 2),
('0098765717', 'Farhan Dwi Saputra', '081245000117', 'Rini Puspitasari', '081377016670', 'Jl. Pandan No. 12, Candi', 2),
('0098765718', 'Keyla Amanda Putri', '081245000118', 'Rita Lestari', '081377016671', 'Jl. Kenari No. 9, Gedangan', 2),
('0098765719', 'Yoga Pradana', '081245000119', 'Dewi Anggraini', '081377016672', 'Jl. Raya Wonoayu No. 25, Wonoayu', 2),
('0098765720', 'Felisha Maharani', '081245000120', 'Yunita Rahayu', '081377016673', 'Jl. Cempaka No. 2, Sidoarjo', 2),
('0098765721', 'Gilang Aditya Putra', '081245000121', 'Nurhayati', '081377016674', 'Jl. Pucang No. 8, Taman', 2),
('0098765722', 'Aurelina Putri Ramadhani', '081245000122', 'Tri Wahyuni', '081377016675', 'Jl. Tambakrejo No. 14, Candi', 2),
('0098765723', 'Reza Fahrezi', '081245000123', 'Yani Mulyati', '081377016676', 'Jl. Raya Pagerwojo No. 11, Buduran', 2),
('0098765724', 'Indah Permata Sari', '081245000124', 'Tini Suhartini', '081377016677', 'Jl. Arjuna No. 10, Gedangan', 2),
('0098765725', 'Aditya Rangga Saputra', '081245000125', 'Rukmini Hapsari', '081377016678', 'Jl. Raya Gempol No. 15, Porong', 2),
('0098765726', 'Nisrina Khansa Putri', '081245000126', 'Sri Handayani', '081377016679', 'Jl. Taman Pinang No. 4, Sidoarjo', 2),
('0098765727', 'Farel Muhammad Rizky', '081245000127', 'Wati Kusumawati', '081377016680', 'Jl. Diponegoro No. 17, Waru', 2),
('0098765728', 'Citra Amelia', '081245000128', 'Nani Nurjanah', '081377016681', 'Jl. Raya Pepe No. 6, Sedati', 2),
('0098765729', 'Arkan Fadillah', '081245000129', 'Rita Andayani', '081377016682', 'Jl. Asem No. 13, Sidoarjo', 2),
('0098765730', 'Zahra Meisya Putri', '081245000130', 'Novi Marlina', '081377016683', 'Jl. Kutilang No. 9, Candi', 2),
('0098765731', 'Raka Aditya Nugroho', '081246000131', 'Dewi Anggraini', '081377017001', 'Jl. Raya Tropodo No. 5, Waru, Sidoarjo', 3),
('0098765732', 'Anisa Rahmadani', '081246000132', 'Lestari Kusuma', '081377017002', 'Jl. Candi Lontar No. 7, Taman, Sidoarjo', 3),
('0098765733', 'Zidan Prasetyo', '081246000133', 'Yulianti Purnama', '081377017003', 'Jl. Raya Wedoro No. 10, Buduran', 3),
('0098765734', 'Melati Nur Aini', '081246000134', 'Rina Andriani', '081377017004', 'Jl. Ketintang No. 22, Sidoarjo', 3),
('0098765735', 'Ilham Dwi Pradana', '081246000135', 'Fitri Wulandari', '081377017005', 'Jl. Raya Sawohan No. 9, Sedati', 3),
('0098765736', 'Sabrina Alifah Putri', '081246000136', 'Yunita Astari', '081377017006', 'Jl. Raya Wage No. 3, Taman, Sidoarjo', 3),
('0098765737', 'Reyhan Fathurrahman', '081246000137', 'Laila Mulyani', '081377017007', 'Jl. Raya Jati No. 8, Candi', 3),
('0098765738', 'Kirana Fadilah', '081246000138', 'Rahayu Sari', '081377017008', 'Jl. Mawar Putih No. 16, Gedangan', 3),
('0098765739', 'Rafi Maulana', '081246000139', 'Nur Aisyah', '081377017009', 'Jl. Raya Kletek No. 20, Taman', 3),
('0098765740', 'Aulia Cantika Prameswari', '081246000140', 'Tutik Rohmawati', '081377017010', 'Jl. Melur No. 11, Buduran', 3),
('0098765741', 'Davin Rizky Saputra', '081246000141', 'Lia Anggraini', '081377017011', 'Jl. Beringin No. 4, Wonoayu', 3),
('0098765742', 'Nadira Cahaya Putri', '081246000142', 'Marlina Wati', '081377017012', 'Jl. Raya Pepe No. 13, Sedati', 3),
('0098765743', 'Ardian Putra Mahesa', '081246000143', 'Tri Handayani', '081377017013', 'Jl. Srikaya No. 9, Sidoarjo', 3),
('0098765744', 'Clarisa Ayunda', '081246000144', 'Yanti Nurlina', '081377017014', 'Jl. Anggrek Timur No. 18, Gedangan', 3),
('0098765745', 'Naufal Rizqi Pradana', '081246000145', 'Sari Widyaningsih', '081377017015', 'Jl. Raya Pagerwojo No. 2, Buduran', 3),
('0098765746', 'Salma Nuraini', '081246000146', 'Indah Wulandari', '081377017016', 'Jl. Kenongo No. 15, Taman', 3),
('0098765747', 'Rendra Kusuma Wijaya', '081246000147', 'Nina Hartati', '081377017017', 'Jl. Jenggolo No. 6, Sidoarjo', 3),
('0098765748', 'Ameera Safira Putri', '081246000148', 'Tina Rosmala', '081377017018', 'Jl. Sekardangan No. 17, Sidoarjo', 3),
('0098765749', 'Fauzan Akbar Ramadhan', '081246000149', 'Rita Purnamasari', '081377017019', 'Jl. Raya Tebel Barat No. 5, Taman', 3),
('0098765750', 'Laras Intan Pratiwi', '081246000150', 'Mira Handayani', '081377017020', 'Jl. Raya Tropodo Utara No. 8, Waru', 3),
('0098765751', 'Iqbal Nugraha Putra', '081246000151', 'Yuni Astuti', '081377017021', 'Jl. Raya Ponti No. 9, Buduran', 3),
('0098765752', 'Shafa Zahira Rahma', '081246000152', 'Eka Marlina', '081377017022', 'Jl. Raya Kebonsari No. 7, Candi', 3),
('0098765753', 'Rino Anggara Pratama', '081246000153', 'Kusmiati Retno', '081377017023', 'Jl. Raya Sedati No. 14, Sedati', 3),
('0098765754', 'Dinda Maharani Putri', '081246000154', 'Sri Rahayu', '081377017024', 'Jl. Sunandar No. 5, Wonoayu', 3),
('0098765755', 'Aldy Fabian Ramadhani', '081246000155', 'Ratna Yuliana', '081377017025', 'Jl. Raya Tambak Oso No. 21, Waru', 3),
('0098765756', 'Vania Safitri', '081246000156', 'Heni Kusumawati', '081377017026', 'Jl. Kenanga Indah No. 10, Gedangan', 3),
('0098765757', 'Bima Aditya Saputra', '081246000157', 'Nurmawati Lestari', '081377017027', 'Jl. Raya Bluru No. 19, Sidoarjo', 3),
('0098765758', 'Intan Melati Zahra', '081246000158', 'Mega Andayani', '081377017028', 'Jl. Raya Krian No. 12, Krian', 3),
('0098765759', 'Hafidz Rahman', '081246000159', 'Dewi Oktaviani', '081377017029', 'Jl. Raya Aloha No. 6, Gedangan', 3),
('0098765760', 'Putri Amanda Rahmadani', '081246000160', 'Rini Fadillah', '081377017030', 'Jl. Mangga No. 4, Sidoarjo', 3),
('0098765761', 'Rafiq Hidayatullah', '081247000161', 'Siti Marlina', '081377018001', 'Jl. Raya Pucang No. 10, Sidoarjo', 4),
('0098765762', 'Alya Nursyifa Putri', '081247000162', 'Tri Handayani', '081377018002', 'Jl. Raya Tropodo Timur No. 6, Waru', 4),
('0098765763', 'Davin Ahmad Ramadhan', '081247000163', 'Lina Marlina', '081377018003', 'Jl. Raya Sedati Gede No. 12, Sedati', 4),
('0098765764', 'Nayla Febriani', '081247000164', 'Maya Andriani', '081377018004', 'Jl. Raya Larangan No. 8, Candi', 4),
('0098765765', 'Rehan Aryasatya', '081247000165', 'Yuli Wulandari', '081377018005', 'Jl. Bluru Kidul No. 3, Sidoarjo', 4),
('0098765766', 'Safira Dwi Lestari', '081247000166', 'Rina Astuti', '081377018006', 'Jl. Raya Wage Selatan No. 15, Taman', 4),
('0098765767', 'Rangga Pradipta', '081247000167', 'Dewi Lestari', '081377018007', 'Jl. Raya Pagerwojo No. 2, Buduran', 4),
('0098765768', 'Nabila Zahra', '081247000168', 'Tutik Nuraini', '081377018008', 'Jl. Raya Ketegan No. 7, Taman', 4),
('0098765769', 'Aditiya Maulana', '081247000169', 'Sri Puspitasari', '081377018009', 'Jl. Raya Gempol No. 5, Porong', 4),
('0098765770', 'Citra Anggun Prameswari', '081247000170', 'Rahayu Wati', '081377018010', 'Jl. Raya Beringin No. 14, Wonoayu', 4),
('0098765771', 'Faiz Alfarizi', '081247000171', 'Yuli Handayani', '081377018011', 'Jl. Raya Ponti Timur No. 9, Buduran', 4),
('0098765772', 'Raina Putri Azzahra', '081247000172', 'Rita Yuningsih', '081377018012', 'Jl. Raya Pepe Selatan No. 11, Sedati', 4),
('0098765773', 'Bagas Firmansyah', '081247000173', 'Endang Wulandari', '081377018013', 'Jl. Raya Gedangan No. 3, Gedangan', 4),
('0098765774', 'Aurelia Syifa Ramadhani', '081247000174', 'Tini Puspitasari', '081377018014', 'Jl. Raya Tambakrejo No. 20, Waru', 4),
('0098765775', 'Ilham Rizky Prakoso', '081247000175', 'Nurhayati', '081377018015', 'Jl. Raya Ganting No. 7, Gedangan', 4),
('0098765776', 'Dewi Anindya Putri', '081247000176', 'Lilis Kurniawati', '081377018016', 'Jl. Raya Suko No. 19, Sidoarjo', 4),
('0098765777', 'Rizal Dwi Saputra', '081247000177', 'Lina Astuti', '081377018017', 'Jl. Raya Pagerwojo Barat No. 9, Buduran', 4),
('0098765778', 'Indira Ayu Pratiwi', '081247000178', 'Yunita Marlina', '081377018018', 'Jl. Raya Kenongo No. 8, Taman', 4),
('0098765779', 'Arya Fadhlan Pratama', '081247000179', 'Nani Rahmawati', '081377018019', 'Jl. Raya Tropodo Barat No. 15, Waru', 4),
('0098765780', 'Keisha Dwi Maharani', '081247000180', 'Tutik Rosiana', '081377018020', 'Jl. Raya Jenggolo No. 11, Sidoarjo', 4),
('0098765781', 'Reno Akbar Fathoni', '081247000181', 'Mega Lestari', '081377018021', 'Jl. Raya Bluru Tengah No. 2, Sidoarjo', 4),
('0098765782', 'Shania Putri Lestari', '081247000182', 'Rini Kusumawati', '081377018022', 'Jl. Raya Larangan Timur No. 6, Candi', 4),
('0098765783', 'Galang Wira Nugraha', '081247000183', 'Tatik Mulyani', '081377018023', 'Jl. Raya Wage Timur No. 10, Taman', 4),
('0098765784', 'Amelia Zahra', '081247000184', 'Yuni Dwi Handayani', '081377018024', 'Jl. Raya Pepe Barat No. 13, Sedati', 4),
('0098765785', 'Yusuf Ramadhan', '081247000185', 'Rita Astuti', '081377018025', 'Jl. Raya Tropodo Tengah No. 5, Waru', 4),
('0098765786', 'Dinda Salsabila Putri', '081247000186', 'Mira Lestari', '081377018026', 'Jl. Raya Ganting Utara No. 18, Gedangan', 4),
('0098765787', 'Rian Dimas Putra', '081247000187', 'Lia Rosmala', '081377018027', 'Jl. Raya Ponti Barat No. 9, Buduran', 4),
('0098765788', 'Viona Amara Pratiwi', '081247000188', 'Heni Marlina', '081377018028', 'Jl. Raya Pagerwojo Timur No. 14, Buduran', 4),
('0098765789', 'Azzam Muhammad', '081247000189', 'Dewi Yuliana', '081377018029', 'Jl. Raya Tebel Selatan No. 8, Taman', 4),
('0098765790', 'Lestari Anjani Putri', '081247000190', 'Rina Yuliana', '081377018030', 'Jl. Raya Candi Baru No. 7, Candi', 4),
('0098765791', 'Farel Aditya Ramadhan', '081248000191', 'Dewi Astuti', '081377019001', 'Jl. Raya Buduran No. 3, Sidoarjo', 5),
('0098765792', 'Sabrina Nabila Putri', '081248000192', 'Rina Puspitasari', '081377019002', 'Jl. Raya Larangan No. 11, Candi', 5),
('0098765793', 'Rian Pratama Nugroho', '081248000193', 'Maya Nuraini', '081377019003', 'Jl. Raya Sedati Agung No. 8, Sedati', 5),
('0098765794', 'Aurelina Syifa Ramadhani', '081248000194', 'Tutik Lestari', '081377019004', 'Jl. Raya Pepe No. 6, Sedati', 5),
('0098765795', 'Fahri Muhammad Rizky', '081248000195', 'Sari Dewanti', '081377019005', 'Jl. Raya Tropodo No. 9, Waru', 5),
('0098765796', 'Nayla Cahya Prameswari', '081248000196', 'Lina Hartati', '081377019006', 'Jl. Raya Wage No. 10, Taman', 5),
('0098765797', 'Gavin Dwi Prakoso', '081248000197', 'Nurul Handayani', '081377019007', 'Jl. Raya Bluru Tengah No. 7, Sidoarjo', 5),
('0098765798', 'Cindy Melani Putri', '081248000198', 'Rina Marlina', '081377019008', 'Jl. Raya Pagerwojo No. 13, Buduran', 5),
('0098765799', 'Rifqi Althaf Ramadhan', '081248000199', 'Yuli Sari', '081377019009', 'Jl. Raya Jenggolo No. 4, Sidoarjo', 5),
('0098765800', 'Aisyah Putri Fadillah', '081248000200', 'Rini Kusumawati', '081377019010', 'Jl. Raya Ketegan No. 5, Taman', 5),
('0098765801', 'Zaky Arya Nugraha', '081248000201', 'Lestari Handayani', '081377019011', 'Jl. Raya Ganting No. 15, Gedangan', 5),
('0098765802', 'Dinda Ayu Lestari', '081248000202', 'Mira Andriyani', '081377019012', 'Jl. Raya Tebel Barat No. 12, Taman', 5),
('0098765803', 'Bintang Prakoso Putra', '081248000203', 'Fitri Wulandari', '081377019013', 'Jl. Raya Tropodo Tengah No. 3, Waru', 5),
('0098765804', 'Kayla Amelia Zahra', '081248000204', 'Sulastri Hidayah', '081377019014', 'Jl. Raya Wage Selatan No. 9, Taman', 5),
('0098765805', 'Fadhil Aryo Pratama', '081248000205', 'Indah Lestari', '081377019015', 'Jl. Raya Ponti No. 6, Buduran', 5),
('0098765806', 'Nadia Nur Aini', '081248000206', 'Dewi Rahayu', '081377019016', 'Jl. Raya Tambak Oso No. 20, Waru', 5),
('0098765807', 'Rizky Dwi Pangestu', '081248000207', 'Rita Andriani', '081377019017', 'Jl. Raya Larangan Timur No. 8, Candi', 5),
('0098765808', 'Tiara Lestari Putri', '081248000208', 'Sri Mulyani', '081377019018', 'Jl. Raya Kenongo No. 11, Taman', 5),
('0098765809', 'Darren Ahmad Pradipta', '081248000209', 'Yunita Retno', '081377019019', 'Jl. Raya Gempol No. 5, Porong', 5),
('0098765810', 'Alya Cahyani', '081248000210', 'Tini Marlina', '081377019020', 'Jl. Raya Tropodo Timur No. 10, Waru', 5),
('0098765811', 'Rayhan Putra Mahendra', '081248000211', 'Rahayu Marlina', '081377019021', 'Jl. Raya Pepe Timur No. 7, Sedati', 5),
('0098765812', 'Salsa Fadilah Putri', '081248000212', 'Nina Kusumawati', '081377019022', 'Jl. Raya Gedangan Utara No. 9, Gedangan', 5),
('0098765813', 'Akbar Rizqi Ramadhan', '081248000213', 'Maya Sari', '081377019023', 'Jl. Raya Wage Tengah No. 4, Taman', 5),
('0098765814', 'Celine Natasya', '081248000214', 'Rina Yulianti', '081377019024', 'Jl. Raya Pagerwojo Selatan No. 12, Buduran', 5),
('0098765815', 'Hafiz Ardiansyah', '081248000215', 'Tutik Astuti', '081377019025', 'Jl. Raya Suko No. 6, Sidoarjo', 5),
('0098765816', 'Amira Safitri', '081248000216', 'Yuli Rahayu', '081377019026', 'Jl. Raya Bluru Selatan No. 16, Sidoarjo', 5),
('0098765817', 'Rian Aditya Prakoso', '081248000217', 'Nurma Lestari', '081377019027', 'Jl. Raya Aloha No. 8, Gedangan', 5),
('0098765818', 'Livia Amanda Putri', '081248000218', 'Mega Handayani', '081377019028', 'Jl. Raya Ponti Selatan No. 14, Buduran', 5),
('0098765819', 'Daffa Farel Putra', '081248000219', 'Sari Retnowati', '081377019029', 'Jl. Raya Ganting Barat No. 5, Gedangan', 5),
('0098765820', 'Nabila Shafira Zahra', '081248000220', 'Rini Puspita', '081377019030', 'Jl. Raya Tebel Timur No. 3, Taman', 5),
('0098765821', 'Ardan Pratama Rizky', '081249000221', 'Lina Andriyani', '081377020001', 'Jl. Raya Sedati Baru No. 10, Sedati', 9),
('0098765822', 'Naila Azzahra Putri', '081249000222', 'Rini Handayani', '081377020002', 'Jl. Raya Tebel Utara No. 8, Taman', 9),
('0098765823', 'Fadlan Dwi Saputra', '081249000223', 'Sulastri Wulandari', '081377020003', 'Jl. Raya Pepe Barat No. 5, Sedati', 9),
('0098765824', 'Kayla Maharani', '081249000224', 'Lestari Puspitasari', '081377020004', 'Jl. Raya Wage Barat No. 6, Taman', 9),
('0098765825', 'Raihan Alif Nugraha', '081249000225', 'Nurmawati Sari', '081377020005', 'Jl. Raya Candi Tengah No. 12, Candi', 9),
('0098765826', 'Citra Amelia Ramadhani', '081249000226', 'Maya Kusumawati', '081377020006', 'Jl. Raya Bluru Lor No. 9, Sidoarjo', 9),
('0098765827', 'Bagus Arya Prakoso', '081249000227', 'Fitri Lestari', '081377020007', 'Jl. Raya Pagerwojo Selatan No. 7, Buduran', 9),
('0098765828', 'Nadila Putri Zahra', '081249000228', 'Dewi Yuliani', '081377020008', 'Jl. Raya Ponti Timur No. 15, Buduran', 9),
('0098765829', 'Reyhan Ahmad Saputra', '081249000229', 'Tutik Purnamasari', '081377020009', 'Jl. Raya Tambakrejo No. 11, Waru', 9),
('0098765830', 'Sania Ayu Ramadhani', '081249000230', 'Yunita Marlina', '081377020010', 'Jl. Raya Trosobo No. 3, Taman', 9),
('0098765831', 'Gilang Pradana Putra', '081249000231', 'Rahayu Lestari', '081377020011', 'Jl. Raya Aloha Barat No. 6, Gedangan', 9),
('0098765832', 'Ameera Syifa Putri', '081249000232', 'Indah Wati', '081377020012', 'Jl. Raya Ganting Utara No. 10, Gedangan', 9),
('0098765833', 'Dimas Ramadhan Prakoso', '081249000233', 'Sri Handayani', '081377020013', 'Jl. Raya Kenongo Tengah No. 8, Taman', 9),
('0098765834', 'Aurelina Khansa Putri', '081249000234', 'Rina Dewi Astuti', '081377020014', 'Jl. Raya Bluru Selatan No. 9, Sidoarjo', 9),
('0098765835', 'Farel Adi Saputra', '081249000235', 'Yuli Rahmawati', '081377020015', 'Jl. Raya Gedangan Tengah No. 11, Gedangan', 9),
('0098765836', 'Viona Ayunda Prameswari', '081249000236', 'Rita Kusumawati', '081377020016', 'Jl. Raya Tropodo Barat No. 14, Waru', 9),
('0098765837', 'Reno Fadhil Mahendra', '081249000237', 'Lina Rahayu', '081377020017', 'Jl. Raya Tebel Selatan No. 13, Taman', 9),
('0098765838', 'Laras Cahya Putri', '081249000238', 'Tini Marlina', '081377020018', 'Jl. Raya Larangan Tengah No. 5, Candi', 9),
('0098765839', 'Iqbal Rangga Pratama', '081249000239', 'Rini Andriyani', '081377020019', 'Jl. Raya Ponti Selatan No. 7, Buduran', 9),
('0098765840', 'Amira Nasywa Putri', '081249000240', 'Marlina Wulandari', '081377020020', 'Jl. Raya Sedati Gede No. 2, Sedati', 9),
('0098765841', 'Rizky Dwi Pangestu', '081249000241', 'Tri Yuliana', '081377020021', 'Jl. Raya Tropodo Tengah No. 17, Waru', 9),
('0098765842', 'Celine Amelia', '081249000242', 'Dewi Nuraini', '081377020022', 'Jl. Raya Ganting Barat No. 4, Gedangan', 9),
('0098765843', 'Zidan Mahesa Putra', '081249000243', 'Tutik Suryani', '081377020023', 'Jl. Raya Tambak Oso No. 10, Waru', 9),
('0098765844', 'Anindya Safira Putri', '081249000244', 'Rina Puspita', '081377020024', 'Jl. Raya Ponti Barat No. 8, Buduran', 9),
('0098765845', 'Raka Fahrezi Putra', '081249000245', 'Mega Lestari', '081377020025', 'Jl. Raya Wage Tengah No. 9, Taman', 9),
('0098765846', 'Salsabila Dwi Lestari', '081249000246', 'Lilis Anggraini', '081377020026', 'Jl. Raya Ganting Timur No. 6, Gedangan', 9),
('0098765847', 'Daffa Alamsyah', '081249000247', 'Rahayu Hartati', '081377020027', 'Jl. Raya Suko No. 18, Sidoarjo', 9),
('0098765848', 'Alya Zahira Prameswari', '081249000248', 'Rini Lestari', '081377020028', 'Jl. Raya Tropodo Selatan No. 15, Waru', 9),
('0098765849', 'Hafidz Arya Saputra', '081249000249', 'Yunita Rahayu', '081377020029', 'Jl. Raya Gedangan Timur No. 5, Gedangan', 9),
('0098765850', 'Della Kirana Putri', '081249000250', 'Siti Marlina', '081377020030', 'Jl. Raya Larangan Utara No. 7, Candi', 9),
('0098765851', 'Akbar Ramadhan Putra', '081249000251', 'Siti Rahmawati', '081377020031', 'Jl. Raya Pepe Timur No. 3, Sedati', 10),
('0098765852', 'Nayla Anindita Zahra', '081249000252', 'Lina Puspitasari', '081377020032', 'Jl. Raya Tropodo Tengah No. 5, Waru', 10),
('0098765853', 'Rafi Muhammad Farhan', '081249000253', 'Maya Lestari', '081377020033', 'Jl. Raya Bluru Barat No. 12, Sidoarjo', 10),
('0098765854', 'Saskia Amanda Putri', '081249000254', 'Rina Ayu Wulandari', '081377020034', 'Jl. Raya Ponti Timur No. 9, Buduran', 10),
('0098765855', 'Fikri Dwi Saputra', '081249000255', 'Lestari Nuraini', '081377020035', 'Jl. Raya Candi Selatan No. 14, Candi', 10),
('0098765856', 'Tiara Maharani', '081249000256', 'Rohani Marlina', '081377020036', 'Jl. Raya Wage Utara No. 7, Taman', 10),
('0098765857', 'Rehan Rizqi Pradana', '081249000257', 'Fitri Andriyani', '081377020037', 'Jl. Raya Tambakrejo No. 4, Waru', 10),
('0098765858', 'Alya Febriani Putri', '081249000258', 'Yuliana Sari', '081377020038', 'Jl. Raya Ponti Barat No. 6, Buduran', 10),
('0098765859', 'Davin Alvaro Mahendra', '081249000259', 'Mega Rahayu', '081377020039', 'Jl. Raya Aloha Selatan No. 8, Gedangan', 10),
('0098765860', 'Celine Ardelia Putri', '081249000260', 'Tini Kurniasih', '081377020040', 'Jl. Raya Tropodo Barat No. 10, Waru', 10),
('0098765861', 'Naufal Adrian Prakoso', '081249000261', 'Dewi Marlina', '081377020041', 'Jl. Raya Gedangan Tengah No. 11, Gedangan', 10),
('0098765862', 'Anya Dwi Lestari', '081249000262', 'Sri Rahayu', '081377020042', 'Jl. Raya Larangan Timur No. 9, Candi', 10),
('0098765863', 'Rayan Bagas Pratama', '081249000263', 'Nurma Sulastri', '081377020043', 'Jl. Raya Ponti Tengah No. 7, Buduran', 10),
('0098765864', 'Viona Shafira Putri', '081249000264', 'Rina Hartati', '081377020044', 'Jl. Raya Sedati Barat No. 3, Sedati', 10),
('0098765865', 'Aditya Rangga Saputra', '081249000265', 'Tutik Lestari', '081377020045', 'Jl. Raya Ganting Tengah No. 12, Gedangan', 10),
('0098765866', 'Salsabila Fitri Ramadhani', '081249000266', 'Rohmah Puspitasari', '081377020046', 'Jl. Raya Tropodo Utara No. 15, Waru', 10),
('0098765867', 'Farrel Dimas Prakoso', '081249000267', 'Dewi Anggraini', '081377020047', 'Jl. Raya Tebel Barat No. 10, Taman', 10),
('0098765868', 'Anindya Khansa Putri', '081249000268', 'Rina Sari', '081377020048', 'Jl. Raya Ponti Selatan No. 5, Buduran', 10),
('0098765869', 'Rizky Arkan Pradana', '081249000269', 'Fitri Marlina', '081377020049', 'Jl. Raya Bluru Selatan No. 9, Sidoarjo', 10),
('0098765870', 'Ameera Zahra Putri', '081249000270', 'Lina Handayani', '081377020050', 'Jl. Raya Sedati Tengah No. 8, Sedati', 10),
('0098765871', 'Reyhan Fadhil Putra', '081249000271', 'Tini Rahayu', '081377020051', 'Jl. Raya Ponti Barat No. 6, Buduran', 10),
('0098765872', 'Nabila Syifa Rahma', '081249000272', 'Dewi Andriyani', '081377020052', 'Jl. Raya Tebel Selatan No. 14, Taman', 10),
('0098765873', 'Gavin Arya Saputra', '081249000273', 'Rohani Lestari', '081377020053', 'Jl. Raya Tambak Oso No. 10, Waru', 10),
('0098765874', 'Laras Azzahra Putri', '081249000274', 'Yuliani Hartati', '081377020054', 'Jl. Raya Tropodo Selatan No. 11, Waru', 10),
('0098765875', 'Zidane Akmal Pratama', '081249000275', 'Mega Wulandari', '081377020055', 'Jl. Raya Gedangan Selatan No. 8, Gedangan', 10),
('0098765876', 'Aurelina Febriyanti', '081249000276', 'Siti Nuraini', '081377020056', 'Jl. Raya Wage Barat No. 4, Taman', 10),
('0098765877', 'Rafa Prasetyo Putra', '081249000277', 'Lestari Marlina', '081377020057', 'Jl. Raya Ponti Utara No. 5, Buduran', 10),
('0098765878', 'Nadira Anggun Prameswari', '081249000278', 'Rina Rahmawati', '081377020058', 'Jl. Raya Sedati Timur No. 7, Sedati', 10),
('0098765879', 'Darren Alif Nugraha', '081249000279', 'Tuti Handayani', '081377020059', 'Jl. Raya Candi Utara No. 10, Candi', 10),
('0098765880', 'Keira Ayunda Putri', '081249000280', 'Dewi Marlina', '081377020060', 'Jl. Raya Larangan Tengah No. 6, Candi', 10),
('0098765881', 'Rafif Aditya Saputra', '081249000281', 'Lina Rosita', '081377020061', 'Jl. Raya Aloha Utara No. 5, Gedangan', 11),
('0098765882', 'Clarissa Ayu Ramadhani', '081249000282', 'Siti Marlina', '081377020062', 'Jl. Raya Tropodo Barat No. 11, Waru', 11),
('0098765883', 'Fahri Ramadhan Prakoso', '081249000283', 'Fitri Anggraini', '081377020063', 'Jl. Raya Bluru Timur No. 7, Sidoarjo', 11),
('0098765884', 'Zahira Putri Anindya', '081249000284', 'Yuliani Wulandari', '081377020064', 'Jl. Raya Ponti Selatan No. 8, Buduran', 11),
('0098765885', 'Iqbal Fadillah Pratama', '081249000285', 'Rohmah Andriyani', '081377020065', 'Jl. Raya Wage Selatan No. 9, Taman', 11),
('0098765886', 'Tasya Maharani', '081249000286', 'Mega Hartati', '081377020066', 'Jl. Raya Sedati Tengah No. 5, Sedati', 11),
('0098765887', 'Reza Dwi Pangestu', '081249000287', 'Dewi Puspitasari', '081377020067', 'Jl. Raya Candi Barat No. 10, Candi', 11),
('0098765888', 'Amelinda Syifa Putri', '081249000288', 'Lestari Rahayu', '081377020068', 'Jl. Raya Ponti Barat No. 4, Buduran', 11),
('0098765889', 'Rizki Adnan Mahendra', '081249000289', 'Tuti Yuliana', '081377020069', 'Jl. Raya Tambakrejo No. 7, Waru', 11),
('0098765890', 'Nisrina Dwi Lestari', '081249000290', 'Rina Marlina', '081377020070', 'Jl. Raya Tropodo Selatan No. 8, Waru', 11),
('0098765891', 'Farhan Dimas Alif', '081249000291', 'Sulastri Handayani', '081377020071', 'Jl. Raya Gedangan Timur No. 6, Gedangan', 11),
('0098765892', 'Cintya Amelia Putri', '081249000292', 'Rina Suryani', '081377020072', 'Jl. Raya Ponti Tengah No. 9, Buduran', 11),
('0098765893', 'Alvaro Rizky Pradana', '081249000293', 'Rohani Puspitasari', '081377020073', 'Jl. Raya Tropodo Tengah No. 5, Waru', 11),
('0098765894', 'Naila Syifa Ramadhani', '081249000294', 'Dewi Anggraini', '081377020074', 'Jl. Raya Sedati Timur No. 3, Sedati', 11),
('0098765895', 'Galang Prasetyo Putra', '081249000295', 'Lina Wulandari', '081377020075', 'Jl. Raya Ponti Utara No. 10, Buduran', 11),
('0098765896', 'Adelina Khaira Putri', '081249000296', 'Tini Kusumawati', '081377020076', 'Jl. Raya Aloha Tengah No. 7, Gedangan', 11),
('0098765897', 'Reno Bagus Prakoso', '081249000297', 'Marlina Hartati', '081377020077', 'Jl. Raya Tropodo Timur No. 8, Waru', 11),
('0098765898', 'Felisya Dwi Lestari', '081249000298', 'Rina Marliani', '081377020078', 'Jl. Raya Ganting Selatan No. 9, Gedangan', 11),
('0098765899', 'Hafidz Arya Pratama', '081249000299', 'Dewi Rahayu', '081377020079', 'Jl. Raya Larangan Tengah No. 5, Candi', 11),
('0098765900', 'Anya Kirani Putri', '081249000300', 'Yuliana Wati', '081377020080', 'Jl. Raya Wage Timur No. 8, Taman', 11),
('0098765901', 'Rafli Naufal Ramadhan', '081249000301', 'Mega Nuraini', '081377020081', 'Jl. Raya Ponti Selatan No. 6, Buduran', 11),
('0098765902', 'Kirana Ayunda Putri', '081249000302', 'Rohmah Lestari', '081377020082', 'Jl. Raya Tropodo Utara No. 9, Waru', 11),
('0098765903', 'Revan Akmal Prakoso', '081249000303', 'Fitri Handayani', '081377020083', 'Jl. Raya Gedangan Tengah No. 11, Gedangan', 11),
('0098765904', 'Alyssa Amira Putri', '081249000304', 'Siti Yuliani', '081377020084', 'Jl. Raya Sedati Gede No. 7, Sedati', 11),
('0098765905', 'Dava Rangga Mahendra', '081249000305', 'Tuti Rahayu', '081377020085', 'Jl. Raya Tropodo Barat No. 10, Waru', 11),
('0098765906', 'Dinda Khansa Ramadhani', '081249000306', 'Rina Hartini', '081377020086', 'Jl. Raya Ponti Tengah No. 8, Buduran', 11),
('0098765907', 'Rizwan Farel Pratama', '081249000307', 'Lestari Marlina', '081377020087', 'Jl. Raya Ganting Barat No. 9, Gedangan', 11),
('0098765908', 'Nayla Aurel Putri', '081249000308', 'Maya Kusumawati', '081377020088', 'Jl. Raya Larangan Selatan No. 6, Candi', 11),
('0098765909', 'Darren Fadlan Saputra', '081249000309', 'Rina Wulandari', '081377020089', 'Jl. Raya Ponti Timur No. 4, Buduran', 11),
('0098765910', 'Sabrina Azalea Putri', '081249000310', 'Yuliana Sari', '081377020090', 'Jl. Raya Sedati Utara No. 5, Sedati', 11),
('0098765911', 'Rafly Putra Pradana', '081249000311', 'Lina Kurniasih', '081377020091', 'Jl. Raya Tambak Oso No. 6, Waru', 12),
('0098765912', 'Nayara Azzahra Putri', '081249000312', 'Siti Rahayu', '081377020092', 'Jl. Raya Bluru Lor No. 8, Sidoarjo', 12),
('0098765913', 'Fadhil Akbar Saputra', '081249000313', 'Mega Andriyani', '081377020093', 'Jl. Raya Wage Barat No. 5, Taman', 12),
('0098765914', 'Cintya Ayunda Prameswari', '081249000314', 'Rina Marlina', '081377020094', 'Jl. Raya Ponti Barat No. 10, Buduran', 12),
('0098765915', 'Revan Alvaro Mahendra', '081249000315', 'Dewi Lestari', '081377020095', 'Jl. Raya Tropodo Tengah No. 12, Waru', 12),
('0098765916', 'Amira Nabila Ramadhani', '081249000316', 'Tini Kusumawati', '081377020096', 'Jl. Raya Aloha Timur No. 6, Gedangan', 12),
('0098765917', 'Rizky Farel Nugraha', '081249000317', 'Yuliana Puspitasari', '081377020097', 'Jl. Raya Candi Selatan No. 7, Candi', 12),
('0098765918', 'Aurelia Khansa Putri', '081249000318', 'Lestari Handayani', '081377020098', 'Jl. Raya Ganting Tengah No. 9, Gedangan', 12),
('0098765919', 'Raihan Dimas Prakoso', '081249000319', 'Rohmah Yuliani', '081377020099', 'Jl. Raya Sedati Utara No. 3, Sedati', 12),
('0098765920', 'Sania Febriani Putri', '081249000320', 'Maya Hartati', '081377020100', 'Jl. Raya Ponti Utara No. 11, Buduran', 12),
('0098765921', 'Gilang Aditya Ramadhan', '081249000321', 'Rina Sulastri', '081377020101', 'Jl. Raya Tropodo Timur No. 8, Waru', 12),
('0098765922', 'Vania Amelia Putri', '081249000322', 'Lina Rahmawati', '081377020102', 'Jl. Raya Aloha Barat No. 4, Gedangan', 12),
('0098765923', 'Farel Rangga Putra', '081249000323', 'Siti Nuraini', '081377020103', 'Jl. Raya Wage Tengah No. 6, Taman', 12),
('0098765924', 'Nisrina Shafira Putri', '081249000324', 'Yuliani Andriyani', '081377020104', 'Jl. Raya Ponti Selatan No. 5, Buduran', 12),
('0098765925', 'Daffa Ramadhan Pratama', '081249000325', 'Fitri Marlina', '081377020105', 'Jl. Raya Tambakrejo No. 7, Waru', 12),
('0098765926', 'Alya Kirani Putri', '081249000326', 'Rohmah Lestari', '081377020106', 'Jl. Raya Tropodo Selatan No. 9, Waru', 12),
('0098765927', 'Zidan Arya Saputra', '081249000327', 'Dewi Wulandari', '081377020107', 'Jl. Raya Sedati Barat No. 10, Sedati', 12),
('0098765928', 'Nabila Safira Rahma', '081249000328', 'Tuti Yuliana', '081377020108', 'Jl. Raya Ponti Tengah No. 8, Buduran', 12),
('0098765929', 'Reyhan Akmal Pradana', '081249000329', 'Lestari Kusumawati', '081377020109', 'Jl. Raya Gedangan Tengah No. 6, Gedangan', 12),
('0098765930', 'Anindya Zahra Putri', '081249000330', 'Rina Puspitasari', '081377020110', 'Jl. Raya Larangan Timur No. 5, Candi', 12),
('0098765931', 'Reno Dwi Pangestu', '081249000331', 'Lina Hartini', '081377020111', 'Jl. Raya Ponti Timur No. 7, Buduran', 12),
('0098765932', 'Celine Amelia Putri', '081249000332', 'Maya Anggraini', '081377020112', 'Jl. Raya Tropodo Barat No. 9, Waru', 12),
('0098765933', 'Ardan Rizqi Mahendra', '081249000333', 'Yuliana Lestari', '081377020113', 'Jl. Raya Aloha Tengah No. 11, Gedangan', 12),
('0098765934', 'Keira Nasywa Putri', '081249000334', 'Tini Handayani', '081377020114', 'Jl. Raya Wage Timur No. 4, Taman', 12),
('0098765935', 'Bagus Alif Pratama', '081249000335', 'Dewi Suryani', '081377020115', 'Jl. Raya Ganting Barat No. 10, Gedangan', 12),
('0098765936', 'Laras Ayunda Putri', '081249000336', 'Lestari Andriyani', '081377020116', 'Jl. Raya Ponti Barat No. 6, Buduran', 12),
('0098765937', 'Fikri Ramadhan Prakoso', '081249000337', 'Mega Marlina', '081377020117', 'Jl. Raya Sedati Tengah No. 9, Sedati', 12),
('0098765938', 'Saskia Anindita Putri', '081249000338', 'Rina Puspita', '081377020118', 'Jl. Raya Larangan Tengah No. 7, Candi', 12),
('0098765939', 'Davin Naufal Putra', '081249000339', 'Yuliani Kusumawati', '081377020119', 'Jl. Raya Tropodo Tengah No. 10, Waru', 12),
('0098765940', 'Ameera Dwi Lestari', '081249000340', 'Tuti Hartati', '081377020120', 'Jl. Raya Ponti Selatan No. 9, Buduran', 12),
('0098766101', 'Nayla Keisha Ramadhani', '081244115001', 'Taufik Hidayat', '081233113201', 'Jl. Raya Bringin No. 1, Taman, Sidoarjo', 7),
('0098766102', 'Rendra Alvino Saputra', '081244115002', 'Lilis Marlina', '081355028711', 'Jl. Raya Tebel No. 2, Taman, Sidoarjo', 7),
('0098766103', 'Alya Safina Rahmawati', '081244115003', 'Rifki Prasetyo', '081377002477', 'Jl. Raya Ketegan No. 3, Taman, Sidoarjo', 7),
('0098766104', 'Darren Ilham Prakoso', '081244115004', 'Yuni Astuti', '081233117712', 'Jl. Raya Geluran No. 4, Taman, Sidoarjo', 7),
('0098766105', 'Caitlyn Arsyila Putri', '081244115005', 'Bambang Widodo', '081277556611', 'Jl. Raya Pepelegi No. 5, Taman, Sidoarjo', 7),
('0098766106', 'Razan Fathur Rachman', '081244115006', 'Dina Kurniasih', '081377991111', 'Jl. Raya Bringin No. 6, Taman, Sidoarjo', 7),
('0098766107', 'Amelia Zhafira Salsabila', '081244115007', 'Eko Riyanto', '081255491122', 'Jl. Raya Tebel No. 7, Taman, Sidoarjo', 7),
('0098766108', 'Fahri Zidan Ramadhan', '081244115008', 'Susi Rahayu', '081244009944', 'Jl. Raya Ngelom No. 8, Taman, Sidoarjo', 7),
('0098766109', 'Saskia Almeira Putri', '081244115009', 'Budi Prakoso', '081333225533', 'Jl. Raya Ketegan No. 9, Taman, Sidoarjo', 7),
('0098766110', 'Kenan Dwi Ardiansyah', '081244115010', 'Ratna Ayuningtyas', '081299099744', 'Jl. Raya Geluran No. 10, Taman, Sidoarjo', 7),
('0098766111', 'Luna Marsha Aurelia', '081244115011', 'Ahmad Fadli', '081277441122', 'Jl. Raya Taman No. 11, Sidoarjo', 7),
('0098766112', 'Alvino Rafasya Nugraha', '081244115012', 'Desi Kartika', '081377115533', 'Jl. Raya Bringin No. 12, Taman, Sidoarjo', 7),
('0098766113', 'Clarisa Melani Ayunda', '081244115013', 'Arif Hidayat', '081233445577', 'Jl. Raya Ketegan No. 13, Taman, Sidoarjo', 7),
('0098766114', 'Davin Rafif Pradana', '081244115014', 'Nur Aisyah', '081355444322', 'Jl. Raya Geluran No. 14, Taman, Sidoarjo', 7),
('0098766115', 'Meisya Dinda Khairani', '081244115015', 'Taufan Santoso', '081255416644', 'Jl. Raya Bringin Tengah No. 15, Taman, Sidoarjo', 7),
('0098766116', 'Ghani Reinaldo Mahendra', '081244115016', 'Yuli Hartanti', '081233110022', 'Jl. Raya Tebel No. 16, Taman, Sidoarjo', 7),
('0098766117', 'Nabila Adzani Zahra', '081244115017', 'Hendra Saputra', '081377009911', 'Jl. Raya Ketegan No. 17, Taman, Sidoarjo', 7),
('0098766118', 'Elvano Rakha Firmansyah', '081244115018', 'Sari Wahyuni', '081299118811', 'Jl. Raya Geluran No. 18, Taman, Sidoarjo', 7),
('0098766119', 'Anindya Tasya Maharani', '081244115019', 'Teguh Setiawan', '081355007744', 'Jl. Raya Bringin No. 19, Taman, Sidoarjo', 7),
('0098766120', 'Rifky Azzam Alfarez', '081244115020', 'Nia Andriani', '081233117744', 'Jl. Raya Tebel No. 20, Taman, Sidoarjo', 7),
('0098766121', 'Kirana Adeline Putri', '081244115021', 'Fajar Hidayat', '081244011011', 'Jl. Raya Ketegan No. 21, Taman, Sidoarjo', 7),
('0098766122', 'Aqil Dzaky Pratama', '081244115022', 'Rina Amalia', '081277552211', 'Jl. Raya Geluran No. 22, Taman, Sidoarjo', 7),
('0098766123', 'Selena Nadine Aurel', '081244115023', 'Dedi Kurniawan', '081233119944', 'Jl. Raya Bringin No. 23, Taman, Sidoarjo', 7),
('0098766124', 'Rayyan Abimanyu Kusuma', '081244115024', 'Tika Lestari', '081377008811', 'Jl. Raya Tebel No. 24, Taman, Sidoarjo', 7),
('0098766125', 'Chelsea Aluna Dewi', '081244115025', 'Bagus Riyanto', '081255447711', 'Jl. Raya Bringin No. 25, Taman, Sidoarjo', 7),
('0098766126', 'Zavier Kenzie Adyatma', '081244115026', 'Maya Fitriana', '081299113311', 'Jl. Raya Ngelom No. 26, Taman, Sidoarjo', 7),
('0098766127', 'Aurora Nayla Prameswari', '081244115027', 'Rio Adi Saputra', '081377114411', 'Jl. Raya Geluran No. 27, Taman, Sidoarjo', 7),
('0098766128', 'Yasir Daffa Ramadhan', '081244115028', 'Endah Puspitasari', '081233446611', 'Jl. Raya Bringin No. 28, Taman, Sidoarjo', 7),
('0098766129', 'Haura Shafira Zahira', '081244115029', 'Anton Suwito', '081244010122', 'Jl. Raya Tebel No. 29, Taman, Sidoarjo', 7),
('0098766130', 'Rafael Aditya Nugroho', '081244115030', 'Rika Handayani', '081277442211', 'Jl. Raya Ketegan No. 30, Taman, Sidoarjo', 7),
('0098766131', 'Adnan Farel Mahardika', '081244115131', 'Intan Sari', '081233111331', 'Jl. Raya Bringin No. 31, Taman, Sidoarjo', 8),
('0098766132', 'Nayara Clarissa Putri', '081244115132', 'Dewi Rahmani', '081233111332', 'Jl. Raya Geluran No. 32, Taman, Sidoarjo', 8),
('0098766133', 'Reyhan Zidan Pratama', '081244115133', 'Arif Sutanto', '081233111333', 'Jl. Raya Pepelegi No. 33, Taman, Sidoarjo', 8),
('0098766134', 'Aura Kayla Zhafira', '081244115134', 'Siska Marlina', '081233111334', 'Jl. Raya Ketegan No. 34, Taman, Sidoarjo', 8),
('0098766135', 'Rafif Ghani Putra', '081244115135', 'Novi Kartika', '081233111335', 'Jl. Raya Bringin No. 35, Taman, Sidoarjo', 8),
('0098766136', 'Nadya Clarine Maharani', '081244115136', 'Erna Sulastri', '081233111336', 'Jl. Raya Geluran No. 36, Taman, Sidoarjo', 8),
('0098766137', 'Faiz Alvaro Ramadhani', '081244115137', 'Yuni Rahmadani', '081233111337', 'Jl. Raya Pepelegi No. 37, Taman, Sidoarjo', 8),
('0098766138', 'Alya Qirani Zahra', '081244115138', 'Handayani Ratna', '081233111338', 'Jl. Raya Ketegan No. 38, Taman, Sidoarjo', 8),
('0098766139', 'Gilang Arya Dwiputra', '081244115139', 'Siswanti Rahma', '081233111339', 'Jl. Raya Bringin No. 39, Taman, Sidoarjo', 8),
('0098766140', 'Celine Mareta Prameswari', '081244115140', 'Rudi Kurnia', '081233111340', 'Jl. Raya Geluran No. 40, Taman, Sidoarjo', 8),
('0098766141', 'Raden Farel Abimanyu', '081244115141', 'Lina Wulandari', '081233111341', 'Jl. Raya Pepelegi No. 41, Taman, Sidoarjo', 8),
('0098766142', 'Kaila Audrina Zahira', '081244115142', 'Tita Marlina', '081233111342', 'Jl. Raya Ketegan No. 42, Taman, Sidoarjo', 8),
('0098766143', 'Naufal Rizky Saputra', '081244115143', 'Siska Pratiwi', '081233111343', 'Jl. Raya Bringin No. 43, Taman, Sidoarjo', 8),
('0098766144', 'Zahra Aluna Prameswari', '081244115144', 'Kartika Ayu', '081233111344', 'Jl. Raya Geluran No. 44, Taman, Sidoarjo', 8),
('0098766145', 'Revan Dika Pradipta', '081244115145', 'Nur Sulastri', '081233111345', 'Jl. Raya Pepelegi No. 45, Taman, Sidoarjo', 8),
('0098766146', 'Elora Mikayla Putri', '081244115146', 'Sarah Widya', '081233111346', 'Jl. Raya Ketegan No. 46, Taman, Sidoarjo', 8),
('0098766147', 'Rizky Alvaro Maheswara', '081244115147', 'Rani Sutrisno', '081233111347', 'Jl. Raya Bringin No. 47, Taman, Sidoarjo', 8),
('0098766148', 'Aurelia Nadhifa Zahra', '081244115148', 'Erika Purnama', '081233111348', 'Jl. Raya Geluran No. 48, Taman, Sidoarjo', 8),
('0098766149', 'Fathir Daffa Aulia', '081244115149', 'Maya Handayani', '081233111349', 'Jl. Raya Pepelegi No. 49, Taman, Sidoarjo', 8),
('0098766150', 'Kayla Meira Annisa', '081244115150', 'Dian Kurnia', '081233111350', 'Jl. Raya Ketegan No. 50, Taman, Sidoarjo', 8),
('0098766151', 'Rayhan Zhafran Nugraha', '081244115151', 'Hendri Prasetyo', '081233111351', 'Jl. Raya Bringin No. 51, Taman, Sidoarjo', 8),
('0098766152', 'Nayla Aurelia Putri', '081244115152', 'Tri Wahyuni', '081233111352', 'Jl. Raya Geluran No. 52, Taman, Sidoarjo', 8),
('0098766153', 'Gibran Aditya Prakoso', '081244115153', 'Indah Lestari', '081233111353', 'Jl. Raya Pepelegi No. 53, Taman, Sidoarjo', 8),
('0098766154', 'Cinta Clarissa Maharani', '081244115154', 'Rizka Amalia', '081233111354', 'Jl. Raya Ketegan No. 54, Taman, Sidoarjo', 8),
('0098766155', 'Farel Naufal Ramadhan', '081244115155', 'Indra Kartono', '081233111355', 'Jl. Raya Bringin No. 55, Taman, Sidoarjo', 8),
('0098766156', 'Salsabila Zahwa Pramesti', '081244115156', 'Mega Andini', '081233111356', 'Jl. Raya Geluran No. 56, Taman, Sidoarjo', 8),
('0098766157', 'Arden Zaky Perdana', '081244115157', 'Ratih Herlina', '081233111357', 'Jl. Raya Pepelegi No. 57, Taman, Sidoarjo', 8),
('0098766158', 'Nadira Cinta Saputri', '081244115158', 'Umi Setiani', '081233111358', 'Jl. Raya Ketegan No. 58, Taman, Sidoarjo', 8),
('0098766159', 'Zidan Reyhan Mahendra', '081244115159', 'Dewi Hartatik', '081233111359', 'Jl. Raya Bringin No. 59, Taman, Sidoarjo', 8),
('0098766160', 'Alya Keisya Pradipta', '081244115160', 'Marlina Susanti', '081233111360', 'Jl. Raya Geluran No. 60, Taman, Sidoarjo', 8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` enum('admin','walikelas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `kelas`, `email`, `password`, `role`) VALUES
(1, 'admin', '-', 'admin@simas.com', 'admin123', 'admin'),
(2, 'Yeni Latus Solichah, S.Pd', '1A', 'yeni.latuszolichah@sdnganting.sch.id', 'yeni123', 'walikelas'),
(3, 'Aryono Putro, S.Pd', '1B', 'aryono.putro@sdnganting.sch.id', 'aryono234', 'walikelas'),
(4, 'Siswanti Bintarath, S.Pd', '2A', 'siswanti.bintarath@sdnganting.sch.id', 'siswanti345', 'walikelas'),
(5, 'Farahdhiya Qotrunnada Fajrin, S.Pd', '2B', 'farahdhiya.qotrunnada@sdnganting.sch.id', 'farah456', 'walikelas'),
(6, 'Khoirur Rizal, S.Pd', '3A', 'khoirur.rizal@sdnganting.sch.id', 'rizal567', 'walikelas'),
(7, 'Rini Mafulah, S.Pd', '3B', 'rini.mafulah@sdnganting.sch.id', 'rini678', 'walikelas'),
(8, 'Nurin Pramudianti, S.Pd', '4A', 'nurin.pramudianti@sdnganting.sch.id', 'nurin789', 'walikelas'),
(9, 'Linda Arafani Hadi Rurianti, S.Pd', '4B', 'linda.arafani@sdnganting.sch.id', 'linda890', 'walikelas'),
(10, 'Nurun Nisaul Lil-Muttaqin, S.Pd', '5A', 'nurun.nisaul@sdnganting.sch.id', 'nurun901', 'walikelas'),
(11, 'Fajar Ramadhan Ardiansah', '5B', 'fajar.ardiansah@sdnganting.sch.id', 'fajar012', 'walikelas'),
(12, 'Siti Fatimah, S.Pd', '6A', 'siti.fatimah@sdnganting.sch.id', 'siti345', 'walikelas'),
(13, 'Maratus Sholichah, S.Pd', '6B', 'maratus.sholichah@sdnganting.sch.id', 'maratus456', 'walikelas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `NISN` (`NISN`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `rekap_absensi`
--
ALTER TABLE `rekap_absensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `fk_rekapabsensi_siswa` (`nisn`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`NISN`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `rekap_absensi`
--
ALTER TABLE `rekap_absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`NISN`) REFERENCES `siswa` (`NISN`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_guru`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `nilai_ibfk_3` FOREIGN KEY (`id_mapel`) REFERENCES `mata_pelajaran` (`id_mapel`);

--
-- Constraints for table `rekap_absensi`
--
ALTER TABLE `rekap_absensi`
  ADD CONSTRAINT `fk_rekapabsensi_siswa` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`NISN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rekap_absensi_ibfk_1` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`NISN`),
  ADD CONSTRAINT `rekap_absensi_ibfk_2` FOREIGN KEY (`id_guru`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `rekap_absensi_ibfk_3` FOREIGN KEY (`id_mapel`) REFERENCES `mata_pelajaran` (`id_mapel`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
