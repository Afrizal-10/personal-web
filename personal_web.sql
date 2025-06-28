-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2025 at 04:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `personal_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `id_about` int(11) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`id_about`, `about`) VALUES
(0, '\"I am a Systems Information student with a strong interest in technology and digital system development. Throughout my studies, I have gained knowledge in data management, system analysis, and application development to support business and organizational needs. I am motivated to continuously improve my technical skills such as programming, database management, and system design, and to apply this knowledge in real-world projects. I am committed to becoming a professional who can effectively integrate technology with business requirements to deliver efficient and practical solutions.\"');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_artikel`
--

CREATE TABLE `tbl_artikel` (
  `id_artikel` int(11) NOT NULL,
  `nama_artikel` varchar(255) NOT NULL,
  `isi_artikel` text NOT NULL,
  `tanggal_post` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_artikel`
--

INSERT INTO `tbl_artikel` (`id_artikel`, `nama_artikel`, `isi_artikel`, `tanggal_post`) VALUES
(0, ' Artificial Intelligence', 'Artificial Intelligence (AI) adalah cabang dari ilmu komputer yang berfokus pada penciptaan sistem atau mesin yang bisa meniru kecerdasan manusia. Artinya, mesin tersebut bisa berpikir, belajar, menyelesaikan masalah, dan mengambil keputusan seperti manusia.', '2025-06-07 06:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id_gallery` int(11) NOT NULL,
  `judul` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id_gallery`, `judul`, `foto`) VALUES
(0, 'Filsafat', 'filsafat.jpg'),
(0, 'Jus Melon', 'download (3).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`) VALUES
(1, 'afrizal10', 'izal123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
