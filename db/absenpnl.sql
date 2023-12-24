-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table absensipnl.tb_admin
CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `aktif` varchar(5) NOT NULL,
  `foto` varchar(225) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table absensipnl.tb_admin: ~1 rows (approximately)
INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `username`, `password`, `aktif`, `foto`) VALUES
	(1, 'Muhammad Maulana', 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Y', '_DSF6740.JPG');

-- Dumping structure for table absensipnl.tb_dosen
CREATE TABLE IF NOT EXISTS `tb_dosen` (
  `id_dosen` int NOT NULL AUTO_INCREMENT,
  `nip` varchar(15) NOT NULL,
  `nama_dosen` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL,
  PRIMARY KEY (`id_dosen`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table absensipnl.tb_dosen: ~4 rows (approximately)
INSERT INTO `tb_dosen` (`id_dosen`, `nip`, `nama_dosen`, `email`, `password`, `foto`, `status`) VALUES
	(5, '001', 'Fatmawati S.Pd M.Pd', 'fatmawati@gmail.com', 'e193a01ecf8d30ad0affefd332ce934e32ffce72', 'guru.png', 'Y'),
	(6, '002', 'Rahayu S.T M.T', 'rahayu@gmail.com', '6fc978af728d43c59faa400d5f6e0471ac850d4c', '17603.png', 'Y'),
	(7, '003', 'Jaka Subadri S.T M.T', 'jakasubadri@gmail.com', '221407c03ae5c73109cce71d27e24637824f3333', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', 'Y'),
	(8, '004', 'Tiwi Sukmawati S.Kom M.Si', 'tiwisukmawati@gmail.com', 'c63528a52274a35d1c07bd9e55a83c6eb073de81', '17603.png', 'Y');

-- Dumping structure for table absensipnl.tb_mahasiswa
CREATE TABLE IF NOT EXISTS `tb_mahasiswa` (
  `id_mahasiswa` int NOT NULL AUTO_INCREMENT,
  `nis` varchar(60) NOT NULL,
  `nama_mahasiswa` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL,
  `th_angkatan` year NOT NULL,
  `id_mkelas` int NOT NULL,
  PRIMARY KEY (`id_mahasiswa`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table absensipnl.tb_mahasiswa: ~5 rows (approximately)
INSERT INTO `tb_mahasiswa` (`id_mahasiswa`, `nis`, `nama_mahasiswa`, `tempat_lahir`, `tgl_lahir`, `jk`, `alamat`, `password`, `foto`, `status`, `th_angkatan`, `id_mkelas`) VALUES
	(1, '001', 'Imam ', 'Jakarta', '2020-03-01', 'L', 'Jl. Mawar', 'e193a01ecf8d30ad0affefd332ce934e32ffce72', '', '1', '2020', 1),
	(2, '002', 'asep', 'bogor', '2012-06-02', 'P', 'jl. batok tenjo-bogor', '6fc978af728d43c59faa400d5f6e0471ac850d4c', '', '1', '2019', 3),
	(3, '004', 'indah ', 'bogor', '2009-07-01', 'L', 'bogor', 'c63528a52274a35d1c07bd9e55a83c6eb073de81', '', '1', '2019', 1),
	(4, '12345', 'Suci', 'TANGERANG', '2002-09-21', 'P', 'Kademangan', '8cb2237d0679ca88db6464eac60da96345513964', '', '1', '2019', 1),
	(5, '2022573010100', 'momol', 'medan', '2023-11-29', 'L', 'sffswf', '78cc5652df2e5720e4712c51c1af2f2ec6e1be30', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', '2023', 5);

-- Dumping structure for table absensipnl.tb_master_matkul
CREATE TABLE IF NOT EXISTS `tb_master_matkul` (
  `id_mk` int NOT NULL AUTO_INCREMENT,
  `kode_mk` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mk` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_mk`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table absensipnl.tb_master_matkul: ~9 rows (approximately)
INSERT INTO `tb_master_matkul` (`id_mk`, `kode_mk`, `mk`) VALUES
	(1, 'MP-1561560093', 'Struktur Data'),
	(2, 'MP-1561560129', 'Desain Grafis'),
	(3, 'MP-1561871991', 'Pkn'),
	(4, 'MP-1561872004', 'Agama'),
	(5, 'MP-1561872013', 'B Inggris'),
	(6, 'MP-1561872026', 'Basis Data'),
	(7, 'MP-1561872043', 'Logika Algoritma'),
	(8, 'MP-1615002340', 'Pemograman Objek'),
	(9, 'MP-1701656390', 'Web');

-- Dumping structure for table absensipnl.tb_mengajar
CREATE TABLE IF NOT EXISTS `tb_mengajar` (
  `id_mengajar` int NOT NULL AUTO_INCREMENT,
  `kode_pelajaran` varchar(30) NOT NULL,
  `hari` varchar(40) NOT NULL,
  `jam_mengajar` varchar(60) NOT NULL,
  `jamke` varchar(11) NOT NULL,
  `id_dosen` int NOT NULL,
  `id_mk` int NOT NULL,
  `id_mkelas` int NOT NULL,
  `id_semester` int NOT NULL,
  `id_thajaran` int NOT NULL,
  PRIMARY KEY (`id_mengajar`),
  KEY `id_mk` (`id_mk`) USING BTREE,
  KEY `id_dosen` (`id_dosen`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table absensipnl.tb_mengajar: ~7 rows (approximately)
INSERT INTO `tb_mengajar` (`id_mengajar`, `kode_pelajaran`, `hari`, `jam_mengajar`, `jamke`, `id_dosen`, `id_mk`, `id_mkelas`, `id_semester`, `id_thajaran`) VALUES
	(1, 'MPL-1614670924', 'Senin', '09.00-10.00', '1-2', 1, 1, 1, 1, 2),
	(2, 'MPL-1614674537', 'Senin', '09.00-10.00', '1-2', 5, 1, 1, 1, 2),
	(4, 'MPL-1615004563', 'Senin', '08.00-09.00', '1', 6, 2, 3, 2, 2),
	(5, 'MPL-1616288498', 'Rabu', '09.00-10.00', '2', 8, 7, 1, 2, 2),
	(6, 'MPL-1582242668', 'Senin', '08.00-09.00', '1', 5, 1, 1, 4, 8),
	(8, 'MPL-1702964055', 'Selasa', '07.30-10.00', '1-4', 5, 3, 5, 4, 1),
	(9, 'MPL-1702994179', 'Rabu', '09.00-10.20', '3-4', 7, 1, 5, 4, 1);

-- Dumping structure for table absensipnl.tb_mkelas
CREATE TABLE IF NOT EXISTS `tb_mkelas` (
  `id_mkelas` int NOT NULL AUTO_INCREMENT,
  `kd_kelas` varchar(40) NOT NULL,
  `nama_kelas` varchar(40) NOT NULL,
  PRIMARY KEY (`id_mkelas`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table absensipnl.tb_mkelas: ~3 rows (approximately)
INSERT INTO `tb_mkelas` (`id_mkelas`, `kd_kelas`, `nama_kelas`) VALUES
	(5, 'KL-1616673105', 'TI'),
	(6, 'KL-1616673114', 'TRKJ'),
	(7, 'KL-1616673120', 'TRMM');

-- Dumping structure for table absensipnl.tb_semester
CREATE TABLE IF NOT EXISTS `tb_semester` (
  `id_semester` int NOT NULL AUTO_INCREMENT,
  `semester` varchar(45) NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id_semester`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table absensipnl.tb_semester: ~2 rows (approximately)
INSERT INTO `tb_semester` (`id_semester`, `semester`, `status`) VALUES
	(4, 'Ganjil', 1),
	(5, 'Genap', 0);

-- Dumping structure for table absensipnl.tb_thajaran
CREATE TABLE IF NOT EXISTS `tb_thajaran` (
  `id_thajaran` int NOT NULL AUTO_INCREMENT,
  `tahun_ajaran` varchar(30) NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id_thajaran`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table absensipnl.tb_thajaran: ~2 rows (approximately)
INSERT INTO `tb_thajaran` (`id_thajaran`, `tahun_ajaran`, `status`) VALUES
	(1, '2023/2024', 1),
	(8, '2022/2023', 0);

-- Dumping structure for table absensipnl._logabsensi
CREATE TABLE IF NOT EXISTS `_logabsensi` (
  `id_presensi` int NOT NULL AUTO_INCREMENT,
  `id_mengajar` int NOT NULL,
  `id_siswa` int NOT NULL,
  `tgl_absen` date NOT NULL,
  `ket` enum('H','I','S','T','A','C') NOT NULL,
  `pertemuan_ke` varchar(30) NOT NULL,
  PRIMARY KEY (`id_presensi`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table absensipnl._logabsensi: ~14 rows (approximately)
INSERT INTO `_logabsensi` (`id_presensi`, `id_mengajar`, `id_siswa`, `tgl_absen`, `ket`, `pertemuan_ke`) VALUES
	(1, 2, 1, '2021-03-02', '', '1'),
	(2, 4, 2, '2021-03-06', 'I', '1'),
	(3, 2, 1, '2021-03-21', 'H', '2'),
	(4, 2, 3, '2021-03-21', 'H', '3'),
	(5, 5, 1, '2021-03-21', 'H', '1'),
	(6, 5, 3, '2021-03-21', 'H', '1'),
	(7, 2, 1, '2021-03-23', 'H', '4'),
	(8, 2, 3, '2021-03-23', 'I', '4'),
	(9, 6, 1, '2021-03-23', 'H', '1'),
	(10, 6, 3, '2021-03-23', 'H', '1'),
	(11, 6, 4, '2021-03-23', 'H', '1'),
	(12, 6, 1, '2021-03-25', 'I', '2'),
	(13, 6, 3, '2021-03-25', 'I', '2'),
	(14, 6, 4, '2021-03-25', 'I', '2');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
