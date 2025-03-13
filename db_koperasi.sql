/*
 Navicat Premium Data Transfer

 Source Server         : xamp
 Source Server Type    : MySQL
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:5001
 Source Schema         : db_koperasi

 Target Server Type    : MySQL
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 12/03/2025 16:32:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_akses
-- ----------------------------
DROP TABLE IF EXISTS `tbl_akses`;
CREATE TABLE `tbl_akses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_akses
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_anggota
-- ----------------------------
DROP TABLE IF EXISTS `tbl_anggota`;
CREATE TABLE `tbl_anggota`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `no_agt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `binbinti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tmp_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_lahir` date NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kongsi1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kongsi2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kongsi3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_telp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_iuran` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_anggota
-- ----------------------------
INSERT INTO `tbl_anggota` VALUES (1, 'KSUA24100001', 'Saiful Anwar S.Pd.I.', 'laki', 'Bin Muhammad Basri', 'Purwodadi ', '1981-05-08', '3173060508790024', 'Kb. Dua Ratus Jakarta Barat', '', '', '', '081384076606', 1);
INSERT INTO `tbl_anggota` VALUES (2, 'KSUA24100002', 'Nanda Sabila Anwar', 'perempuan', 'Binti Saiful Anwar S.Pd.I.', 'Jakarta ', '2007-10-07', '3173065007070005', 'Kb. Dua Ratus Jakarta Barat', '', '', '', '081384076606', 1);
INSERT INTO `tbl_anggota` VALUES (3, 'KSUA24100003', 'Fathimah Anwar', 'perempuan', 'Binti Saiful Anwar S.Pd.I.', 'Jakarta ', '2007-03-27', '3173066703170017', 'Kb. Dua Ratus Jakarta Barat', '', '', '', '081384076606', 1);
INSERT INTO `tbl_anggota` VALUES (4, 'KSUA24100004', 'Juniarto', 'laki', 'Bin Turjono', 'Pekalongan ', '1971-03-04', '3173060304710004', 'Kebonduaratus No 25. Kamal.', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (5, 'KSUA24100005', 'Ropiah', 'perempuan', 'Binti  Ropingi', 'Jakarta ', '1975-06-07', '3173064607750015', 'Kebon Dua Ratus Jakarta Barat', '', '', '', '085891435416', 1);
INSERT INTO `tbl_anggota` VALUES (6, 'KSUA24100006', 'Maemun', 'laki', 'Bin Sakat', 'Bojonegoro ', '1973-07-19', '3578172207830010', 'Kb. Dua Ratus Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (7, 'KSUA24100007', 'Fitria Djuharia', 'perempuan', 'Binti Baiman Koham', 'Surabaya', '1982-07-30', '3578047007820012', 'Kb. Dua Ratus Jakarta Barat', '', '', '', '081282491460', 1);
INSERT INTO `tbl_anggota` VALUES (8, 'KSUA24100008', 'Yetti Rachmawati', 'perempuan', 'Binti Sukarmin', 'Cirebon ', '1977-02-22', '3173066202770007', 'Jakarta Barat', '', '', '', '08161451342', 1);
INSERT INTO `tbl_anggota` VALUES (9, 'KSUA24100009', 'Fatchul Munir', 'laki', 'Bin Hadi Noorohmad', 'Semarang ', '1976-05-11', '3173061105760004', 'Jakarta Barat', '', '', '', '085885330840', 1);
INSERT INTO `tbl_anggota` VALUES (10, 'KSUA24100010', 'Slamet Nur Hadi', 'laki', 'Bin Paino Prasetyo', 'Pasuruan ', '1989-12-19', '3514201912890002', 'Pergudangan PID Blok H No 4', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (11, 'KSUA24100011', 'Bunga Tustiani', 'perempuan', 'Binti Asmo Wiharjo Samijo', 'Wonogiri ', '1992-08-11', '3312075108920003', 'Pergudangan PID Blok H No 4', '', '', '', '085280696884', 1);
INSERT INTO `tbl_anggota` VALUES (12, 'KSUA24100012', 'Mukhammad Syafii', 'laki', 'Bin Slamet Nur Hadi', 'Wonogiri ', '1992-08-01', '3312072812170002', 'Pergudangan PID Blok H No 4', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (13, 'KSUA24100013', 'Mirda Baini', 'perempuan', 'Binti Muhzani', 'Tangerang ', '1982-07-18', '3603145807820006', 'Tangerang', '', '', '', '085730359885', 1);
INSERT INTO `tbl_anggota` VALUES (14, 'KSUA24100014', 'Dandi Putra Islami', 'laki', 'Bin Sardi', 'Tangerang ', '2006-01-25', '3603142501060002', 'Tangerang', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (15, 'KSUA24100015', 'Uswatun khasanah', 'perempuan', 'Binti Djumadi', 'Purbalingga ', '1983-06-05', '3603144506830013', 'Perumahan Puri Kamal ', '', '', '', '087780325668', 1);
INSERT INTO `tbl_anggota` VALUES (16, 'KSUA24100016', 'Ai Laela', 'perempuan', 'Binti Indi Suhendi', 'Cianjur ', '1976-02-02', '3603144202760004', 'Jl. Keb. Mede Jakbar', '', '', '', '085776297080', 1);
INSERT INTO `tbl_anggota` VALUES (17, 'KSUA24100017', 'Alistina', 'perempuan', 'Binti Sugeng', 'Malang  ', '1980-11-02', '3173014211800015', 'Kp. Sawah Mede Jakbar', '', '', '', '087883653020', 1);
INSERT INTO `tbl_anggota` VALUES (18, 'KSUA24100018', 'Mochamad Saleh', 'laki', 'Bin Djunaedi', 'Jakarta  ', '1981-04-11', '3173011104810005', 'Kp. Sawah Mede Jakbar', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (19, 'KSUA24100019', 'Mardi', 'laki', 'Bin Mahsan', 'Jakarta', '1990-05-12', '3173061205900009', 'Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (20, 'KSUA24100020', 'Winda Rosita', 'perempuan', 'Binti Syarifudin', 'Jambi ', '1990-08-20', '3603146008900004', 'Dadap Tangerang', '', '', '', '0895324482058', 1);
INSERT INTO `tbl_anggota` VALUES (21, 'KSUA24100021', 'Heru herianto', 'laki', 'Bin A.Rozi', 'Jakarta ', '1984-04-02', '3173060204840007', 'Kp. DADAP ROMENE RT.01 / 011', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (22, 'KSUA24100022', 'Aziz Purnama', 'laki', 'Bin Akhmad Nasrojikin', 'Tegal ', '2001-07-20', '3173062007010008', 'Kb. Dua Ratus Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (23, 'KSUA24100023', 'Kusdiati', 'perempuan', 'Binti Salyo', 'Tegal ', '1976-04-13', '3173065304760010', 'Kp. Sawah Mede Jakbar', '', '', '', '087878614884', 1);
INSERT INTO `tbl_anggota` VALUES (24, 'KSUA24100024', 'Isa Yusuf', 'laki', 'Bin Yusuf', 'Brebes ', '1982-08-13', '3173011308821001', 'Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (25, 'KSUA24100025', 'Tri Widianingsih', 'perempuan', 'Binti Tumino', 'Purworejo ', '1981-06-08', '31730148068110001', 'Kb. Dua Ratus Jakarta Barat', '', '', '', '082119088185', 1);
INSERT INTO `tbl_anggota` VALUES (26, 'KSUA24100026', 'Listyaningsih', 'perempuan', 'Binti Mulyono', 'Jakarta ', '1989-05-18', '3173085805890004', 'Jakarta Barat', '(CC) Naning Metriyani', '', '', '085772509313', 1);
INSERT INTO `tbl_anggota` VALUES (27, 'KSUA24100027', 'Suwanti', 'perempuan', 'Binti Kurdi', 'Jakarta ', '1961-08-18', '3173065808610003', 'Jakarta Barat', '', '', '', '081389140229', 1);
INSERT INTO `tbl_anggota` VALUES (28, 'KSUA24100028', 'Yasmirin', 'perempuan', 'Binti Supar (Alm)', 'Blora ', '1978-03-12', '3173065203780010', 'Kp. Belakang RawaTerong', '', '', '', '081225490252', 1);
INSERT INTO `tbl_anggota` VALUES (29, 'KSUA24100029', 'M. Carudin', 'laki', 'Bin Dakim', 'Brebes ', '1976-07-20', '3173062007760007', 'Kp. Belakang Rawa Terong', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (30, 'KSUA24100030', 'Ridhan Maulana Al Fadhila', 'laki', 'Bin M. carudin', 'Brebes ', '2004-04-08', '3329160408040003', 'Kp. Belakang RawaTerong', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (31, 'KSUA24100031', 'Rano Hertono', 'laki', 'Bin Herman', 'Tangerang', '1981-09-16', '3603141609810002', 'Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (32, 'KSUA24100032', 'Nining Yuhaeni', 'perempuan', 'Binti Wastama', 'Indramayu ', '1983-11-11', '3603145111830001', 'Jakarta Barat', '', '', '', '0881012433458', 1);
INSERT INTO `tbl_anggota` VALUES (33, 'KSUA24100033', 'Kayyisah Hafidzah As shofa', 'perempuan', 'Binti Rano Hertono', 'Tangerang ', '2016-05-18', '3603145805160001', 'Jakarta Barat', '', '', '', '0881012433458', 1);
INSERT INTO `tbl_anggota` VALUES (34, 'KSUA24100034', 'Isabella Septiani', 'perempuan', 'Binti Juju Junaidi', 'Wonogiri ', '1993-09-26', '3312076609930002', 'Dadap Tangerang', '', '', '', '081348052665', 1);
INSERT INTO `tbl_anggota` VALUES (35, 'KSUA24100035', 'Aisyah', 'perempuan', 'Binti Aji', 'Indramayu ', '1992-04-21', '3212016104920002', 'Kp. Belakang', '(CC) Rohanah', '', '', '083819474085', 1);
INSERT INTO `tbl_anggota` VALUES (36, 'KSUA24100036', 'Farida', 'perempuan', 'Binti Muhammad Johar', 'Palembang', '1979-02-12', '3603145202790004', 'Perum Duta Bandara Permai', '', '', '', '082122246827', 1);
INSERT INTO `tbl_anggota` VALUES (37, 'KSUA24100037', 'Surifno', 'laki', 'Bin Ngadimin', 'Batang ', '1981-02-18', '3173061802810007', 'Batu Ceper Tangerang', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (38, 'KSUA24100038', 'Dahliyah', 'perempuan', 'Binti Rasuli', 'Batang ', '1983-06-10', '3173065006830026', 'Batu Ceper Tangerang', '', '', '', '085771798524', 1);
INSERT INTO `tbl_anggota` VALUES (39, 'KSUA24100039', 'Permaisuri', 'perempuan', 'Binti Ahmad HS', 'Palembang ', '1973-06-27', '3172016706730008', 'Jakarta Barat', '', '', '', '081314756344', 1);
INSERT INTO `tbl_anggota` VALUES (40, 'KSUA24100040', 'Erah Nasaroh', 'perempuan', 'Binti Idris', 'Kuningan ', '1982-01-04', '3603144401820006', 'Perum Griya Dadap Tangerang', '', '', '', '085718782653', 1);
INSERT INTO `tbl_anggota` VALUES (41, 'KSUA24100041', 'Sunarti', 'perempuan', 'Binti Bibit Biyanto', 'Klaten ', '1976-05-26', '3603146605760001', 'Kp Kebon Besar Tangerang', '', '', '', '082386545304', 1);
INSERT INTO `tbl_anggota` VALUES (42, 'KSUA24100042', 'Marsan', 'laki', 'Bin Mardi', 'Jakarta ', '1988-10-03', '3173060310880007', 'Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (43, 'KSUA24100043', 'Yanti Heryanti', 'perempuan', 'Binti Udi', 'Cirebon ', '1986-09-01', '3603144109860006', 'Cirebon', '', '', '', '081388883295', 1);
INSERT INTO `tbl_anggota` VALUES (44, 'KSUA24100044', 'Nadi Gunaedy', 'laki', 'Bin Ahman Dirin', 'Jakarta ', '1976-03-25', '31730625037660001', 'Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (45, 'KSUA24100045', 'Anah', 'perempuan', 'Binti Aming', 'Jakarta ', '1977-06-15', '3173065506770007', 'Jakarta Barat', '', '', '', '089275772576', 1);
INSERT INTO `tbl_anggota` VALUES (46, 'KSUA24100046', 'Sana\'ah', 'perempuan', 'Binti Samid', 'Cirebon ', '1980-05-03', '3209385504820002', 'Tangerang', '', '', '', '083825148459', 1);
INSERT INTO `tbl_anggota` VALUES (47, 'KSUA24100047', 'Nuriah', 'perempuan', 'Binti Muhadi', 'Pemalang ', '1983-07-25', '3173066507830008', 'Jakarta Barat', '', '', '', '081310075383', 1);
INSERT INTO `tbl_anggota` VALUES (48, 'KSUA24100048', 'Muhammad Hamdany Munawwa', 'laki', 'Binti Fatchul Munir', ' Jakarta ', '2002-05-31', '3173063105020005', 'Jakarta/ Solo', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (49, 'KSUA24100049', 'Neneng Helawati', 'perempuan', 'Binti Marwan Idrus', 'Tangerang ', '1983-03-23', '3603146303830007', 'Tangerang', '', '', '', '087826102431', 1);
INSERT INTO `tbl_anggota` VALUES (50, 'KSUA24100050', 'Dwi Suwita Handayani', 'perempuan', 'Binti Satari', 'Purworejo ', '1989-07-03', '3173014307890014', 'Duta Bandara Permao', '', '', '', '087878883237', 1);
INSERT INTO `tbl_anggota` VALUES (51, 'KSUA24100051', 'Endang Sulis', 'perempuan', 'Binti Jaid', 'Mengandungsari', '1981-02-09', '3173064902810010', 'Cluster Griya Dadap A8/21', '', '', '', '085711163328', 1);
INSERT INTO `tbl_anggota` VALUES (52, 'KSUA24100052', 'Tri Nuria', 'perempuan', 'Binti Marsudi', 'Telogorejo', '2002-11-02', '1807064211020003', 'Pergudangan Pantai Indah Dadap', '', '', '', '083852620417', 1);
INSERT INTO `tbl_anggota` VALUES (53, 'KSUA24100053', 'Putri Rodiati', 'perempuan', 'Binti Juremi', 'Buana Sakti ', '2003-03-25', '1807066503030003', 'Pergudangan Pantai Indah Dadap.png', '', '', '', '085781816495', 1);
INSERT INTO `tbl_anggota` VALUES (54, 'KSUA24100054', 'Nina Novita', 'perempuan', 'Binti Kateman', 'Jakarta ', '1983-11-23', '3173066311830011', 'Pergudangan pantai indah dadap', '', '', '', '081280084764', 1);
INSERT INTO `tbl_anggota` VALUES (55, 'KSUA24100055', 'Siti Kusriyah', 'perempuan', 'Binti Sarjono', 'Magelang ', '1979-08-07', '3173014708790009', 'Kebun Mede Kamal Jakarta Barat', '(CC) Sum Sumiati', '', '', '081311202788', 1);
INSERT INTO `tbl_anggota` VALUES (56, 'KSUA24100056', 'Kuliyah Rusyidah', 'perempuan', 'Binti Katemi', 'Magelang ', '1984-06-10', '3173065006840022', 'Jakarta ', '(CC) Santi', '', '', '081908662577', 1);
INSERT INTO `tbl_anggota` VALUES (57, 'KSUA24100057', 'Nurul Khotimah', 'perempuan', 'Binti Moh.Khaerudin', 'Kebumen', '1986-03-26', '3305016603860009', 'Perum.Dadap Indah BlokC3 No.18', '', '', '', '082111033972', 1);
INSERT INTO `tbl_anggota` VALUES (58, 'KSUA24100058', 'Mulyadi', 'laki', 'Bin Rohat', 'Pemalang ', '1977-05-25', '3173062505770017', 'Tangerang', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (59, 'KSUA24100059', 'Megawati Turnip', 'perempuan', 'Binti Betin Turnip', 'Pematang Siantar ', '1975-09-15', '3173065509750017', 'Jakarta Barat', '', '', '', '0895340172091', 1);
INSERT INTO `tbl_anggota` VALUES (60, 'KSUA24100060', 'Priyati Sri Ekosani', 'perempuan', 'Binti Ahmad Makhali', 'Jakarta ', '1969-07-31', '3172017107690001', 'Jakarta Barat', '', '', '', '087887226581', 1);
INSERT INTO `tbl_anggota` VALUES (61, 'KSUA24100061', 'Mariya', 'perempuan', 'Binti Padli', 'Cirebon', '1984-04-02', '3209195107840008', 'Kayu Besar Jakarta Barat', '', '', '', '081514620945', 1);
INSERT INTO `tbl_anggota` VALUES (62, 'KSUA24100062', 'Jovan Abi Nugroho', 'laki', 'Bin Maemun', 'Surabaya ', '2007-05-17', '3578041705070005', 'Surabaya', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (63, 'KSUA24100063', 'Turmiyati', 'perempuan', 'Binti Parto Diharjo (alm)', 'Jakarta ', '1976-06-12', '3173065206760024', 'Rawa Melati Jakbar', '(CC) Iis Masitoh', '(CC) Ani Kuswanti', '(CC) Chomsah Lusiah', '', 1);
INSERT INTO `tbl_anggota` VALUES (64, 'KSUA24100064', 'Aulia Nur Septiani ', 'perempuan', 'Binti Gimin', 'Jakarta ', '2006-09-06', '3603144609000006', 'Griya Dadap', '', '', '', '082122156560', 1);
INSERT INTO `tbl_anggota` VALUES (65, 'KSUA24100065', 'Tuti Nuryati', 'perempuan', 'Binti Kamijan', 'Jakarta ', '1976-10-25', '3173066510760006', 'Kp. Sawah Mede Jakbar', '', '', '', '0895342457123', 1);
INSERT INTO `tbl_anggota` VALUES (66, 'KSUA24100066', 'Sartini', 'perempuan', 'Binti Dul Basar', 'Jakarta ', '1974-04-10', '3173065004740006', 'Jakarta Barat', '', '', '', '089635813842', 1);
INSERT INTO `tbl_anggota` VALUES (67, 'KSUA24100067', 'Rakmadi', 'laki', 'Bin Kasnan', 'Brebes ', '1979-06-25', '3329142506790004', 'Pulogading', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (68, 'KSUA24100068', 'Slamet Agung Wahono', 'laki', 'Bin Soetrisno', 'Grobogan ', '1991-10-31', '3315023110910002', 'Jln. Raya Dadap no 30 A', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (69, 'KSUA24100069', 'Abdul Charis', 'laki', 'Bin Machfudz', 'Cirebon ', '1998-03-12', '3209311203980006', 'Jl. Kp. Sawah Jakarta Barat', '(CC) Edi Susanto', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (70, 'KSUA24100070', 'Dela Nia Wati', 'perempuan', 'Binti Sardi', 'Makartitama ', '1995-04-22', '1805286204950001', 'Tangerang', '', '', '', '081219048537', 1);
INSERT INTO `tbl_anggota` VALUES (71, 'KSUA24100071', 'Maya Komala Sari', 'perempuan', 'Binti Fajri', 'Bogor ', '1982-07-14', '3201185407820003', 'Kalideres Jakarta Barat', '', '', '', '083130711582', 1);
INSERT INTO `tbl_anggota` VALUES (72, 'KSUA24100072', 'Mumus', 'laki', 'Bin Suanda', 'Lebak', '1999-07-24', '3602122407990001', 'Kp. Maraya', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (73, 'KSUA24100073', 'M syabilan', 'laki', 'Bin Basrowi', 'Tangerang', '1982-09-07', '3603110709820012', 'Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (74, 'KSUA24100074', 'Agus Triwibowo', 'laki', 'Bin Sri Suseno', 'Klaten ', '1985-09-23', '3310102309850001', 'Wonogiri,', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (75, 'KSUA24100075', 'Ariswanto', 'laki', 'Bin Samdani', 'Brebes ', '1990-12-12', '3329101212900002', 'Dadap Tangerang', 'Muhamad Khariri', 'Aji Respati', 'Rusdi', '', 1);
INSERT INTO `tbl_anggota` VALUES (76, 'KSUA24100076', 'Sulami', 'perempuan', 'Binti Muhadi', 'Sragen ', '1974-10-15', '3603144202740002', 'Tangerang', '', '', '', '082122395392', 1);
INSERT INTO `tbl_anggota` VALUES (77, 'KSUA24100077', 'Siti Alwiyah', 'perempuan', 'Binti Darsono', 'Batang ', '1988-08-16', '3604205609880002', 'Jakarta Barat', '', '', '', '081218017651', 1);
INSERT INTO `tbl_anggota` VALUES (78, 'KSUA24100078', 'Mulhimmah', 'perempuan', 'Binti Ahmad Jazuli', 'Bekasi ', '1989-08-23', '3216016308890003', 'Bekasi', '', '', '', '087817061576', 1);
INSERT INTO `tbl_anggota` VALUES (79, 'KSUA24100079', 'Ipah aripah', 'perempuan', 'Binti Adzan sudjana', 'Jakarta ', '1974-01-12', '3173065201740006', ' Jl.Kampung Sawah Mede', '', '', '', '08881860927', 1);
INSERT INTO `tbl_anggota` VALUES (80, 'KSUA24100080', 'Ratmo', 'laki', 'Bin Sakiman', 'Wonogiri ', '1983-05-29', '3173062905830007', 'Jl. Kampung Sawah Mede', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (81, 'KSUA24100081', 'Soleman', 'laki', 'Bin Sohid', 'Kebumen ', '1973-09-04', '3603140409730001', 'Tangerang', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (82, 'KSUA24100082', 'Ipit Pitriyani', 'perempuan', 'Binti Nendi', 'Bogor ', '1988-03-05', '3201194503880009', 'Kali Deres Jakbar', '', '', '', '085772567748', 1);
INSERT INTO `tbl_anggota` VALUES (83, 'KSUA24100083', 'Erna Dwi Wulandari', 'perempuan', 'Binti Sugeng', 'Wonogiri ', '1992-12-28', '3312076812920001', 'Kp. Sawah Mede', '', '', '', '081283505909', 1);
INSERT INTO `tbl_anggota` VALUES (84, 'KSUA24100084', 'Sutarni', 'perempuan', 'Binti Kamijan', 'Wonogiri ', '1992-12-29', '3173067012700012', 'Kebon Mede', '(CC) Juniyati', '', '', '085770758525', 1);
INSERT INTO `tbl_anggota` VALUES (85, 'KSUA24100085', 'Sutini', 'perempuan', 'Binti Suwitotaruno', 'Wonogiri ', '1992-12-30', '3603144808720001', 'Tangerang', '', '', '', '085295395239', 1);
INSERT INTO `tbl_anggota` VALUES (86, 'KSUA24100086', 'Rastono', 'laki', 'Bin Raswid', 'Tegal', '1990-01-01', '1801130101900039', 'Tangerang', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (87, 'KSUA24100087', 'Fadil Sumadiono', 'laki', 'Bin Sukardi', 'Jakarta ', '1973-11-21', '3174022111680002', 'Jakarta Selatan', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (88, 'KSUA24100088', 'Rosika', 'perempuan', 'Binti Mursin Utama', 'Jakarta ', '1980-04-22', '3175016204800005', 'Kebon Mede Jakbar', '', '', '', '089526679573', 1);
INSERT INTO `tbl_anggota` VALUES (89, 'KSUA24100089', 'Yani', 'perempuan', 'Binti Saman', 'Tangerang ', '1988-06-09', '3603144906880003', 'Kp. Dadap Sawah Tangerang', '', '', '', '087889907664', 1);
INSERT INTO `tbl_anggota` VALUES (90, 'KSUA24100090', 'Heni Susanti', 'perempuan', 'Binti SADJI', 'Grobogan ', '1982-01-27', '3603146701820005', 'Tangerang', '(CC) Nur Janah', '', '', '085884543755', 1);
INSERT INTO `tbl_anggota` VALUES (91, 'KSUA24100091', 'Harsih Hastuti', 'perempuan', 'Binti Turiman mulyo sudarmo', 'Kebumen', '1994-02-05', '3305164502940001', 'Jln Kebon Mede Rt001/ Rw006 No 145', '', '', '', '08999207389', 1);
INSERT INTO `tbl_anggota` VALUES (92, 'KSUA24100092', 'Arif Prayoga', 'laki', 'Bin Janudin', 'Lebak ', '1993-05-17', '3602091705930002', 'Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (93, 'KSUA24100093', 'Sairoh', 'perempuan', 'Binti Ramin', 'Indramayu ', '1977-01-05', '3212154501770004', 'Jakarta Barat', '', '', '', '081514296480', 1);
INSERT INTO `tbl_anggota` VALUES (94, 'KSUA24100094', 'Barokah', 'perempuan', 'Binti H. Abdurakhim', 'Pemalang ', '1969-06-12', '3173065206690002', 'Kamal Kali Deres Jakarta Barat', '', '', '', '085771392401', 1);
INSERT INTO `tbl_anggota` VALUES (95, 'KSUA24100095', 'Sri Haryati', 'perempuan', 'Binti Siman', 'Jakarta ', '1993-01-17', '3173065701930008', 'Jakarta Barat', '', '', '', '085778634882', 1);
INSERT INTO `tbl_anggota` VALUES (96, 'KSUA24100096', 'Ichlas Tawakal', 'laki', 'Binti Sjachrian Affandi', 'Bekasi ', '1991-03-28', '3275042803910014', 'Bekasi Selatan', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (97, 'KSUA24100097', 'Nursiah', 'perempuan', 'Binti Kasna', 'Pandeglang ', '1999-06-06', '3601174606990001', 'Blok H4, Dadap, Kosambi , Tangerang', '(CC) Nadya Firda', '(CC) Rahayu Utami', '', '087875172241', 1);
INSERT INTO `tbl_anggota` VALUES (98, 'KSUA24100098', 'Mega Dwi Faujiah', 'perempuan', 'Binti Akhmad Nasrojikin', 'Tangerang ', '2007-06-11', '3173065106070008', 'Kalideres Jakarta Barat ', '', '', '', '087878614884', 1);
INSERT INTO `tbl_anggota` VALUES (99, 'KSUA24100099', 'Sahati ', 'perempuan', 'Binti Wiro utomo', 'Sleman ', '1968-03-23', '3173066203680004', 'Jakarta Barat', '', '', '', '089531004463', 1);
INSERT INTO `tbl_anggota` VALUES (100, 'KSUA24100100', 'Ananda Putri Alisa', 'perempuan', 'Binti Mochamad Saleh', 'Jakarta ', '2006-01-11', '3173015101061003', 'Kp. Sawah Mede', '', '', '', '087883653020', 1);
INSERT INTO `tbl_anggota` VALUES (101, 'KSUA24100101', 'Annisa Halwa', 'perempuan', 'Binti Fachrudin', 'Jakarta ', '2003-11-10', '3173065011030007', 'Jakarta Barat', '', '', '', '083811956146', 1);
INSERT INTO `tbl_anggota` VALUES (102, 'KSUA24100102', 'Teguh Pamuji', 'laki', 'Bin Sandarto (alm)', 'Kebumen ', '1982-08-04', '3305180408820002', 'Tangerang', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (103, 'KSUA24100103', 'Darussalam', 'laki', 'Bin Sri Nurbaiti', 'jakarta ', '1985-03-28', '3173012803850021', 'Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (104, 'KSUA24100104', 'Dada Wilda Munawar', 'laki', 'Bin Eddy Djunaedy (alm)', 'Cianjur ', '1969-06-08', '3603140806690003', 'Jl. Raya Dadap no 30 A', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (105, 'KSUA24100105', 'Amirkan', 'laki', 'Bin Romdhon', 'Demak ', '1997-10-16', '3321121610970001', 'Lingkungan III Tegal Alur Jakbar', '(CC) Dede Suparno', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (106, 'KSUA24100106', 'Siti Saniati', 'perempuan', 'Binti Sukoyo', 'Pekalongan ', '1985-01-31', '3326117101850021', 'DKI Jakarta', '', '', '', '085932975632', 1);
INSERT INTO `tbl_anggota` VALUES (107, 'KSUA24100107', 'Naila Khilya', 'perempuan', 'Binti Fachrudin', 'Jakarta ', '2006-06-21', '3173066106060002', 'Jakarta Barat', '', '', '', '085697669398', 1);
INSERT INTO `tbl_anggota` VALUES (108, 'KSUA24100108', 'Farida Nurul Huda', 'perempuan', 'Binti Baiman Koham', 'Surabaya ', '1984-06-07', '3578044706840003', 'Surabaya', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (109, 'KSUA24100109', 'Muhamad Irfan', 'laki', 'Bin Iran', 'Bogor ', '1988-05-14', '3201151405880007', 'Kebon Mede', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (110, 'KSUA24100110', 'Anita Fitria Hariwijaya', 'perempuan', 'Binti Sutiswo', 'Banjarnegara', '1989-05-08', '3173064805891002', 'Dadap Indah A2 No.4', '', '', '', '081339321308', 1);
INSERT INTO `tbl_anggota` VALUES (111, 'KSUA24100111', 'Nina Yuliasih', 'perempuan', 'Binti Agus Salim', 'Tangerang ', '1991-11-23', '3671086311910005', 'JL. Lingkungan 3, Rt.09/03 Tegal Alur', '', '', '', '085706317613', 1);
INSERT INTO `tbl_anggota` VALUES (112, 'KSUA24110112', 'Mufidah', 'perempuan', 'Binti Noat', 'Pemalang ', '1983-02-10', '3173015002830010', 'Jl. Kampung Sawah Mede', 'CC. Murdaningrum', '', '', '08159557790', 1);
INSERT INTO `tbl_anggota` VALUES (117, 'OTHER', 'Lainnya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tbl_anggota` VALUES (118, '123456', 'Moch Firman Firdaus', 'laki', 'BinMahmud', 'Sidoarjo', '1998-09-16', '213214214214', 'Sidoarjo', '-', '-', '-', '0986435436436', 1);

-- ----------------------------
-- Table structure for tbl_barang
-- ----------------------------
DROP TABLE IF EXISTS `tbl_barang`;
CREATE TABLE `tbl_barang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_barang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis` int NULL DEFAULT NULL,
  `harga_beli` decimal(10, 0) NULL DEFAULT NULL,
  `harga_jual` decimal(10, 0) NULL DEFAULT NULL,
  `qty` decimal(10, 0) NULL DEFAULT NULL,
  `uom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `margin` decimal(10, 0) NULL DEFAULT NULL,
  `create_at` datetime NULL DEFAULT NULL,
  `tgl_update_stock` datetime NULL DEFAULT NULL,
  `set_diskon` decimal(10, 0) NULL DEFAULT 0,
  `min_qty` int NULL DEFAULT 0,
  `status` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_barang
-- ----------------------------
INSERT INTO `tbl_barang` VALUES (1, 'BRG-2502-0001', 'Beras @50KG', 1, 640000, 700000, 12, 'Kg', 60000, '2025-02-27 08:53:35', '2025-02-27 08:53:35', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (2, 'BRG-2502-0002', 'Gula GMP @50 Kg', 1, 860000, 900000, 15, 'Kg', 40000, '2025-02-27 08:57:23', '2025-02-27 08:57:23', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (3, 'BRG-2502-0003', 'Gula GMP', 1, 18000, 20000, 18, 'Kg', 2000, '2025-02-27 08:57:49', '2025-03-02 13:56:02', 3000, 3, 1);
INSERT INTO `tbl_barang` VALUES (4, 'BRG-2502-0004', 'INDOMIE AYAM SPESIAL @DOS', 1, 103000, 105000, 6, 'DOS', 2000, '2025-02-27 08:58:11', '2025-02-27 08:58:11', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (5, 'BRG-2502-0005', 'INDOMIE GORENG DOS', 1, 111000, 115000, 5, 'DOS', 4000, '2025-02-27 08:58:37', '2025-02-27 08:58:37', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (6, 'BRG-2502-0006', 'INDOMIE GORENG ', 1, 3000, 3500, 7, 'Pcs', 500, '2025-02-27 08:58:54', '2025-02-27 08:58:54', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (7, 'BRG-2502-0007', 'INDOMIE SOTO', 1, 2700, 3000, 9, 'Pcs', 300, '2025-02-27 09:00:12', '2025-02-27 09:00:12', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (8, 'BRG-2502-0008', 'KECAP SEDAP @520ml', 1, 7500, 8500, 3, 'Ml', 1000, '2025-02-27 09:00:54', '2025-02-27 09:00:54', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (9, 'BRG-2502-0009', 'Minyak Kita @1L', 1, 0, 0, 0, 'L', 0, '2025-02-27 09:01:17', '2025-02-27 09:01:17', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (10, 'BRG-2502-0010', 'MIKA TELOR PACK', 1, 45000, 50000, 10, 'Pack', 5000, '2025-02-27 09:02:49', '2025-02-27 09:02:49', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (11, 'BRG-2502-0011', 'MIKA TELOR @pcs', 1, 1000, 2000, 9, 'Pcs', 1000, '2025-02-27 09:03:19', '2025-02-27 09:03:19', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (12, 'BRG-2502-0012', 'TELOR PETI @15Kg', 1, 360000, 380000, 10, 'Kg', 20000, '2025-02-27 09:03:49', '2025-02-27 09:03:49', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (13, 'BRG-2502-0013', 'TELOR', 1, 10000, 12000, 7, 'Kg', 2000, '2025-02-27 09:04:17', '2025-02-27 09:04:17', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (14, 'BRG-2502-0014', 'TERIGU LENCANA MERAH', 1, 110000, 115000, 9, 'Kg', 5000, '2025-02-27 09:05:22', '2025-02-27 09:05:22', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (15, 'BRG-2502-0015', 'TERIGU LENCANA MERAH', 1, 128000, 130000, 9, 'Kg', 2000, '2025-02-27 09:05:36', '2025-02-27 09:05:36', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (16, 'BRG-2502-0016', 'TROPICAL @ 6Krat', 1, 215000, 220000, 10, 'KRAT', 5000, '2025-02-27 09:06:03', '2025-02-27 09:06:03', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (17, 'BRG-2502-0017', 'TROPICAL @2L', 1, 40000, 45000, 8, 'L', 5000, '2025-02-27 09:06:27', '2025-02-27 09:06:27', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (18, 'BRG-2502-0018', 'BERAS SYATHIBI @ 5 KG', 1, 74000, 77000, 9, 'Kg', 3000, '2025-02-27 09:12:50', '2025-02-27 09:12:50', 0, 0, 1);

-- ----------------------------
-- Table structure for tbl_deposit
-- ----------------------------
DROP TABLE IF EXISTS `tbl_deposit`;
CREATE TABLE `tbl_deposit`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `anggota_id` int NULL DEFAULT NULL,
  `nominal` decimal(10, 0) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_deposit
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dtl_trans
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dtl_trans`;
CREATE TABLE `tbl_dtl_trans`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `head_trans` int NULL DEFAULT NULL,
  `kode_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `qty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total_harga` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_dtl_trans
-- ----------------------------
INSERT INTO `tbl_dtl_trans` VALUES (1, 1, 'BRG-2502-0004', '1', '105000');
INSERT INTO `tbl_dtl_trans` VALUES (2, 1, 'BRG-2502-0017', '1', '45000');

-- ----------------------------
-- Table structure for tbl_history_barang
-- ----------------------------
DROP TABLE IF EXISTS `tbl_history_barang`;
CREATE TABLE `tbl_history_barang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `barang_id` int NULL DEFAULT NULL,
  `qty` int NULL DEFAULT NULL,
  `history_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_history_barang
-- ----------------------------
INSERT INTO `tbl_history_barang` VALUES (1, 1, 7, '2025-02-28 22:48:36');
INSERT INTO `tbl_history_barang` VALUES (2, 2, 10, '2025-02-28 22:51:04');
INSERT INTO `tbl_history_barang` VALUES (3, 3, 20, '2025-03-02 08:20:26');

-- ----------------------------
-- Table structure for tbl_iuran
-- ----------------------------
DROP TABLE IF EXISTS `tbl_iuran`;
CREATE TABLE `tbl_iuran`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `anggota_id` int NULL DEFAULT NULL,
  `nominal` decimal(10, 0) NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT current_timestamp,
  `periode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1357 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_iuran
-- ----------------------------
INSERT INTO `tbl_iuran` VALUES (1, 1, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (2, 1, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (3, 1, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (4, 1, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (5, 1, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (6, 1, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (7, 1, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (8, 1, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (9, 1, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (10, 1, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (11, 1, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (12, 1, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (13, 2, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (14, 2, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (15, 2, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (16, 2, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (17, 2, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (18, 2, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (19, 2, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (20, 2, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (21, 2, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (22, 2, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (23, 2, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (24, 2, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (25, 3, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (26, 3, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (27, 3, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (28, 3, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (29, 3, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (30, 3, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (31, 3, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (32, 3, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (33, 3, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (34, 3, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (35, 3, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (36, 3, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (37, 4, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (38, 4, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (39, 4, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (40, 4, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (41, 4, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (42, 4, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (43, 4, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (44, 4, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (45, 4, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (46, 4, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (47, 4, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (48, 4, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (49, 5, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (50, 5, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (51, 5, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (52, 5, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (53, 5, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (54, 5, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (55, 5, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (56, 5, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (57, 5, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (58, 5, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (59, 5, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (60, 5, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (61, 6, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (62, 6, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (63, 6, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (64, 6, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (65, 6, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (66, 6, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (67, 6, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (68, 6, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (69, 6, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (70, 6, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (71, 6, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (72, 6, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (73, 7, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (74, 7, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (75, 7, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (76, 7, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (77, 7, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (78, 7, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (79, 7, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (80, 7, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (81, 7, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (82, 7, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (83, 7, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (84, 7, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (85, 8, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (86, 8, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (87, 8, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (88, 8, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (89, 8, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (90, 8, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (91, 8, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (92, 8, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (93, 8, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (94, 8, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (95, 8, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (96, 8, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (97, 9, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (98, 9, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (99, 9, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (100, 9, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (101, 9, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (102, 9, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (103, 9, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (104, 9, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (105, 9, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (106, 9, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (107, 9, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (108, 9, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (109, 10, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (110, 10, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (111, 10, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (112, 10, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (113, 10, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (114, 10, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (115, 10, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (116, 10, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (117, 10, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (118, 10, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (119, 10, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (120, 10, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (121, 11, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (122, 11, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (123, 11, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (124, 11, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (125, 11, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (126, 11, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (127, 11, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (128, 11, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (129, 11, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (130, 11, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (131, 11, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (132, 11, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (133, 12, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (134, 12, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (135, 12, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (136, 12, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (137, 12, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (138, 12, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (139, 12, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (140, 12, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (141, 12, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (142, 12, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (143, 12, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (144, 12, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (145, 13, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (146, 13, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (147, 13, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (148, 13, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (149, 13, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (150, 13, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (151, 13, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (152, 13, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (153, 13, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (154, 13, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (155, 13, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (156, 13, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (157, 14, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (158, 14, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (159, 14, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (160, 14, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (161, 14, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (162, 14, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (163, 14, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (164, 14, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (165, 14, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (166, 14, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (167, 14, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (168, 14, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (169, 15, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (170, 15, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (171, 15, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (172, 15, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (173, 15, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (174, 15, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (175, 15, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (176, 15, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (177, 15, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (178, 15, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (179, 15, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (180, 15, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (181, 16, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (182, 16, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (183, 16, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (184, 16, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (185, 16, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (186, 16, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (187, 16, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (188, 16, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (189, 16, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (190, 16, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (191, 16, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (192, 16, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (193, 17, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (194, 17, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (195, 17, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (196, 17, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (197, 17, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (198, 17, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (199, 17, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (200, 17, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (201, 17, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (202, 17, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (203, 17, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (204, 17, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (205, 18, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (206, 18, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (207, 18, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (208, 18, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (209, 18, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (210, 18, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (211, 18, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (212, 18, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (213, 18, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (214, 18, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (215, 18, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (216, 18, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (217, 19, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (218, 19, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (219, 19, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (220, 19, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (221, 19, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (222, 19, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (223, 19, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (224, 19, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (225, 19, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (226, 19, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (227, 19, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (228, 19, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (229, 20, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (230, 20, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (231, 20, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (232, 20, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (233, 20, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (234, 20, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (235, 20, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (236, 20, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (237, 20, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (238, 20, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (239, 20, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (240, 20, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (241, 21, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (242, 21, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (243, 21, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (244, 21, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (245, 21, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (246, 21, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (247, 21, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (248, 21, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (249, 21, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (250, 21, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (251, 21, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (252, 21, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (253, 22, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (254, 22, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (255, 22, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (256, 22, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (257, 22, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (258, 22, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (259, 22, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (260, 22, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (261, 22, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (262, 22, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (263, 22, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (264, 22, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (265, 23, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (266, 23, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (267, 23, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (268, 23, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (269, 23, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (270, 23, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (271, 23, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (272, 23, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (273, 23, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (274, 23, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (275, 23, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (276, 23, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (277, 24, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (278, 24, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (279, 24, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (280, 24, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (281, 24, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (282, 24, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (283, 24, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (284, 24, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (285, 24, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (286, 24, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (287, 24, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (288, 24, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (289, 25, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (290, 25, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (291, 25, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (292, 25, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (293, 25, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (294, 25, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (295, 25, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (296, 25, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (297, 25, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (298, 25, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (299, 25, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (300, 25, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (301, 26, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (302, 26, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (303, 26, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (304, 26, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (305, 26, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (306, 26, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (307, 26, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (308, 26, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (309, 26, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (310, 26, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (311, 26, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (312, 26, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (313, 27, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (314, 27, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (315, 27, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (316, 27, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (317, 27, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (318, 27, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (319, 27, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (320, 27, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (321, 27, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (322, 27, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (323, 27, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (324, 27, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (325, 28, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (326, 28, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (327, 28, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (328, 28, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (329, 28, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (330, 28, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (331, 28, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (332, 28, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (333, 28, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (334, 28, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (335, 28, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (336, 28, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (337, 29, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (338, 29, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (339, 29, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (340, 29, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (341, 29, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (342, 29, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (343, 29, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (344, 29, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (345, 29, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (346, 29, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (347, 29, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (348, 29, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (349, 30, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (350, 30, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (351, 30, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (352, 30, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (353, 30, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (354, 30, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (355, 30, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (356, 30, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (357, 30, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (358, 30, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (359, 30, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (360, 30, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (361, 31, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (362, 31, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (363, 31, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (364, 31, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (365, 31, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (366, 31, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (367, 31, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (368, 31, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (369, 31, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (370, 31, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (371, 31, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (372, 31, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (373, 32, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (374, 32, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (375, 32, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (376, 32, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (377, 32, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (378, 32, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (379, 32, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (380, 32, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (381, 32, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (382, 32, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (383, 32, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (384, 32, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (385, 33, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (386, 33, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (387, 33, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (388, 33, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (389, 33, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (390, 33, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (391, 33, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (392, 33, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (393, 33, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (394, 33, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (395, 33, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (396, 33, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (397, 34, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (398, 34, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (399, 34, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (400, 34, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (401, 34, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (402, 34, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (403, 34, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (404, 34, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (405, 34, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (406, 34, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (407, 34, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (408, 34, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (409, 35, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (410, 35, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (411, 35, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (412, 35, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (413, 35, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (414, 35, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (415, 35, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (416, 35, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (417, 35, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (418, 35, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (419, 35, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (420, 35, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (421, 36, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (422, 36, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (423, 36, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (424, 36, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (425, 36, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (426, 36, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (427, 36, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (428, 36, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (429, 36, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (430, 36, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (431, 36, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (432, 36, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (433, 37, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (434, 37, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (435, 37, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (436, 37, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (437, 37, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (438, 37, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (439, 37, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (440, 37, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (441, 37, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (442, 37, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (443, 37, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (444, 37, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (445, 38, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (446, 38, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (447, 38, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (448, 38, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (449, 38, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (450, 38, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (451, 38, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (452, 38, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (453, 38, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (454, 38, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (455, 38, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (456, 38, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (457, 39, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (458, 39, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (459, 39, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (460, 39, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (461, 39, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (462, 39, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (463, 39, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (464, 39, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (465, 39, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (466, 39, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (467, 39, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (468, 39, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (469, 40, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (470, 40, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (471, 40, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (472, 40, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (473, 40, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (474, 40, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (475, 40, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (476, 40, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (477, 40, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (478, 40, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (479, 40, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (480, 40, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (481, 41, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (482, 41, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (483, 41, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (484, 41, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (485, 41, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (486, 41, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (487, 41, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (488, 41, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (489, 41, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (490, 41, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (491, 41, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (492, 41, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (493, 42, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (494, 42, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (495, 42, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (496, 42, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (497, 42, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (498, 42, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (499, 42, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (500, 42, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (501, 42, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (502, 42, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (503, 42, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (504, 42, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (505, 43, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (506, 43, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (507, 43, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (508, 43, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (509, 43, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (510, 43, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (511, 43, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (512, 43, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (513, 43, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (514, 43, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (515, 43, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (516, 43, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (517, 44, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (518, 44, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (519, 44, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (520, 44, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (521, 44, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (522, 44, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (523, 44, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (524, 44, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (525, 44, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (526, 44, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (527, 44, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (528, 44, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (529, 45, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (530, 45, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (531, 45, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (532, 45, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (533, 45, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (534, 45, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (535, 45, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (536, 45, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (537, 45, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (538, 45, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (539, 45, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (540, 45, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (541, 46, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (542, 46, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (543, 46, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (544, 46, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (545, 46, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (546, 46, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (547, 46, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (548, 46, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (549, 46, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (550, 46, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (551, 46, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (552, 46, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (553, 47, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (554, 47, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (555, 47, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (556, 47, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (557, 47, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (558, 47, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (559, 47, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (560, 47, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (561, 47, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (562, 47, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (563, 47, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (564, 47, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (565, 48, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (566, 48, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (567, 48, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (568, 48, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (569, 48, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (570, 48, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (571, 48, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (572, 48, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (573, 48, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (574, 48, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (575, 48, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (576, 48, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (577, 49, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (578, 49, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (579, 49, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (580, 49, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (581, 49, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (582, 49, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (583, 49, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (584, 49, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (585, 49, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (586, 49, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (587, 49, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (588, 49, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (589, 50, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (590, 50, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (591, 50, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (592, 50, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (593, 50, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (594, 50, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (595, 50, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (596, 50, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (597, 50, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (598, 50, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (599, 50, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (600, 50, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (601, 51, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (602, 51, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (603, 51, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (604, 51, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (605, 51, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (606, 51, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (607, 51, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (608, 51, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (609, 51, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (610, 51, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (611, 51, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (612, 51, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (613, 52, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (614, 52, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (615, 52, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (616, 52, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (617, 52, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (618, 52, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (619, 52, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (620, 52, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (621, 52, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (622, 52, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (623, 52, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (624, 52, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (625, 53, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (626, 53, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (627, 53, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (628, 53, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (629, 53, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (630, 53, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (631, 53, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (632, 53, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (633, 53, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (634, 53, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (635, 53, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (636, 53, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (637, 54, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (638, 54, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (639, 54, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (640, 54, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (641, 54, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (642, 54, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (643, 54, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (644, 54, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (645, 54, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (646, 54, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (647, 54, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (648, 54, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (649, 55, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (650, 55, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (651, 55, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (652, 55, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (653, 55, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (654, 55, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (655, 55, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (656, 55, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (657, 55, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (658, 55, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (659, 55, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (660, 55, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (661, 56, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (662, 56, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (663, 56, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (664, 56, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (665, 56, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (666, 56, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (667, 56, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (668, 56, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (669, 56, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (670, 56, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (671, 56, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (672, 56, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (673, 57, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (674, 57, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (675, 57, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (676, 57, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (677, 57, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (678, 57, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (679, 57, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (680, 57, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (681, 57, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (682, 57, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (683, 57, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (684, 57, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (685, 58, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (686, 58, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (687, 58, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (688, 58, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (689, 58, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (690, 58, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (691, 58, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (692, 58, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (693, 58, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (694, 58, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (695, 58, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (696, 58, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (697, 59, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (698, 59, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (699, 59, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (700, 59, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (701, 59, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (702, 59, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (703, 59, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (704, 59, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (705, 59, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (706, 59, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (707, 59, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (708, 59, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (709, 60, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (710, 60, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (711, 60, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (712, 60, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (713, 60, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (714, 60, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (715, 60, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (716, 60, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (717, 60, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (718, 60, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (719, 60, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (720, 60, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (721, 61, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (722, 61, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (723, 61, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (724, 61, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (725, 61, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (726, 61, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (727, 61, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (728, 61, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (729, 61, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (730, 61, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (731, 61, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (732, 61, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (733, 62, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (734, 62, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (735, 62, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (736, 62, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (737, 62, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (738, 62, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (739, 62, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (740, 62, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (741, 62, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (742, 62, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (743, 62, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (744, 62, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (745, 63, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (746, 63, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (747, 63, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (748, 63, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (749, 63, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (750, 63, 200000, '2025-03-13 01:31:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (751, 63, 200000, '2025-03-13 01:31:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (752, 63, 200000, '2025-03-13 01:31:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (753, 63, 200000, '2025-03-13 01:31:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (754, 63, 200000, '2025-03-13 01:31:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (755, 63, 200000, '2025-03-13 01:31:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (756, 63, 200000, '2025-03-13 01:31:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (757, 64, 200000, '2025-03-13 01:31:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (758, 64, 200000, '2025-03-13 01:31:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (759, 64, 200000, '2025-03-13 01:31:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (760, 64, 200000, '2025-03-13 01:31:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (761, 64, 200000, '2025-03-13 01:31:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (762, 64, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (763, 64, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (764, 64, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (765, 64, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (766, 64, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (767, 64, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (768, 64, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (769, 65, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (770, 65, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (771, 65, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (772, 65, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (773, 65, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (774, 65, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (775, 65, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (776, 65, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (777, 65, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (778, 65, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (779, 65, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (780, 65, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (781, 66, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (782, 66, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (783, 66, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (784, 66, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (785, 66, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (786, 66, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (787, 66, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (788, 66, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (789, 66, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (790, 66, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (791, 66, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (792, 66, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (793, 67, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (794, 67, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (795, 67, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (796, 67, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (797, 67, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (798, 67, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (799, 67, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (800, 67, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (801, 67, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (802, 67, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (803, 67, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (804, 67, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (805, 68, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (806, 68, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (807, 68, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (808, 68, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (809, 68, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (810, 68, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (811, 68, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (812, 68, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (813, 68, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (814, 68, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (815, 68, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (816, 68, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (817, 69, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (818, 69, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (819, 69, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (820, 69, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (821, 69, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (822, 69, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (823, 69, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (824, 69, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (825, 69, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (826, 69, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (827, 69, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (828, 69, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (829, 70, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (830, 70, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (831, 70, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (832, 70, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (833, 70, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (834, 70, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (835, 70, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (836, 70, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (837, 70, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (838, 70, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (839, 70, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (840, 70, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (841, 71, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (842, 71, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (843, 71, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (844, 71, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (845, 71, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (846, 71, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (847, 71, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (848, 71, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (849, 71, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (850, 71, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (851, 71, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (852, 71, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (853, 72, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (854, 72, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (855, 72, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (856, 72, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (857, 72, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (858, 72, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (859, 72, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (860, 72, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (861, 72, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (862, 72, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (863, 72, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (864, 72, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (865, 73, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (866, 73, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (867, 73, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (868, 73, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (869, 73, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (870, 73, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (871, 73, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (872, 73, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (873, 73, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (874, 73, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (875, 73, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (876, 73, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (877, 74, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (878, 74, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (879, 74, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (880, 74, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (881, 74, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (882, 74, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (883, 74, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (884, 74, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (885, 74, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (886, 74, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (887, 74, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (888, 74, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (889, 75, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (890, 75, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (891, 75, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (892, 75, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (893, 75, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (894, 75, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (895, 75, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (896, 75, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (897, 75, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (898, 75, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (899, 75, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (900, 75, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (901, 76, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (902, 76, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (903, 76, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (904, 76, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (905, 76, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (906, 76, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (907, 76, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (908, 76, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (909, 76, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (910, 76, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (911, 76, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (912, 76, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (913, 77, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (914, 77, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (915, 77, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (916, 77, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (917, 77, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (918, 77, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (919, 77, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (920, 77, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (921, 77, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (922, 77, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (923, 77, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (924, 77, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (925, 78, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (926, 78, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (927, 78, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (928, 78, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (929, 78, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (930, 78, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (931, 78, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (932, 78, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (933, 78, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (934, 78, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (935, 78, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (936, 78, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (937, 79, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (938, 79, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (939, 79, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (940, 79, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (941, 79, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (942, 79, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (943, 79, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (944, 79, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (945, 79, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (946, 79, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (947, 79, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (948, 79, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (949, 80, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (950, 80, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (951, 80, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (952, 80, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (953, 80, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (954, 80, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (955, 80, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (956, 80, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (957, 80, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (958, 80, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (959, 80, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (960, 80, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (961, 81, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (962, 81, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (963, 81, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (964, 81, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (965, 81, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (966, 81, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (967, 81, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (968, 81, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (969, 81, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (970, 81, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (971, 81, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (972, 81, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (973, 82, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (974, 82, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (975, 82, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (976, 82, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (977, 82, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (978, 82, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (979, 82, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (980, 82, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (981, 82, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (982, 82, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (983, 82, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (984, 82, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (985, 83, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (986, 83, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (987, 83, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (988, 83, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (989, 83, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (990, 83, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (991, 83, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (992, 83, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (993, 83, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (994, 83, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (995, 83, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (996, 83, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (997, 84, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (998, 84, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (999, 84, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1000, 84, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1001, 84, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1002, 84, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1003, 84, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1004, 84, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1005, 84, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1006, 84, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1007, 84, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1008, 84, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1009, 85, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1010, 85, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1011, 85, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1012, 85, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1013, 85, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1014, 85, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1015, 85, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1016, 85, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1017, 85, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1018, 85, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1019, 85, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1020, 85, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1021, 86, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1022, 86, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1023, 86, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1024, 86, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1025, 86, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1026, 86, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1027, 86, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1028, 86, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1029, 86, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1030, 86, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1031, 86, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1032, 86, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1033, 87, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1034, 87, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1035, 87, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1036, 87, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1037, 87, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1038, 87, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1039, 87, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1040, 87, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1041, 87, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1042, 87, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1043, 87, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1044, 87, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1045, 88, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1046, 88, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1047, 88, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1048, 88, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1049, 88, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1050, 88, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1051, 88, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1052, 88, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1053, 88, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1054, 88, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1055, 88, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1056, 88, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1057, 89, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1058, 89, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1059, 89, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1060, 89, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1061, 89, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1062, 89, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1063, 89, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1064, 89, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1065, 89, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1066, 89, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1067, 89, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1068, 89, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1069, 90, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1070, 90, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1071, 90, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1072, 90, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1073, 90, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1074, 90, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1075, 90, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1076, 90, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1077, 90, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1078, 90, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1079, 90, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1080, 90, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1081, 91, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1082, 91, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1083, 91, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1084, 91, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1085, 91, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1086, 91, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1087, 91, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1088, 91, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1089, 91, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1090, 91, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1091, 91, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1092, 91, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1093, 92, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1094, 92, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1095, 92, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1096, 92, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1097, 92, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1098, 92, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1099, 92, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1100, 92, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1101, 92, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1102, 92, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1103, 92, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1104, 92, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1105, 93, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1106, 93, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1107, 93, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1108, 93, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1109, 93, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1110, 93, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1111, 93, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1112, 93, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1113, 93, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1114, 93, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1115, 93, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1116, 93, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1117, 94, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1118, 94, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1119, 94, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1120, 94, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1121, 94, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1122, 94, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1123, 94, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1124, 94, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1125, 94, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1126, 94, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1127, 94, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1128, 94, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1129, 95, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1130, 95, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1131, 95, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1132, 95, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1133, 95, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1134, 95, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1135, 95, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1136, 95, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1137, 95, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1138, 95, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1139, 95, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1140, 95, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1141, 96, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1142, 96, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1143, 96, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1144, 96, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1145, 96, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1146, 96, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1147, 96, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1148, 96, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1149, 96, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1150, 96, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1151, 96, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1152, 96, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1153, 97, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1154, 97, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1155, 97, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1156, 97, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1157, 97, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1158, 97, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1159, 97, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1160, 97, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1161, 97, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1162, 97, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1163, 97, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1164, 97, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1165, 98, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1166, 98, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1167, 98, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1168, 98, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1169, 98, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1170, 98, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1171, 98, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1172, 98, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1173, 98, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1174, 98, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1175, 98, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1176, 98, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1177, 99, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1178, 99, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1179, 99, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1180, 99, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1181, 99, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1182, 99, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1183, 99, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1184, 99, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1185, 99, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1186, 99, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1187, 99, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1188, 99, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1189, 100, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1190, 100, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1191, 100, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1192, 100, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1193, 100, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1194, 100, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1195, 100, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1196, 100, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1197, 100, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1198, 100, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1199, 100, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1200, 100, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1201, 101, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1202, 101, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1203, 101, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1204, 101, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1205, 101, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1206, 101, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1207, 101, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1208, 101, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1209, 101, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1210, 101, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1211, 101, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1212, 101, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1213, 102, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1214, 102, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1215, 102, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1216, 102, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1217, 102, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1218, 102, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1219, 102, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1220, 102, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1221, 102, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1222, 102, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1223, 102, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1224, 102, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1225, 103, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1226, 103, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1227, 103, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1228, 103, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1229, 103, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1230, 103, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1231, 103, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1232, 103, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1233, 103, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1234, 103, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1235, 103, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1236, 103, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1237, 104, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1238, 104, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1239, 104, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1240, 104, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1241, 104, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1242, 104, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1243, 104, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1244, 104, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1245, 104, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1246, 104, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1247, 104, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1248, 104, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1249, 105, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1250, 105, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1251, 105, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1252, 105, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1253, 105, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1254, 105, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1255, 105, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1256, 105, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1257, 105, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1258, 105, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1259, 105, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1260, 105, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1261, 106, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1262, 106, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1263, 106, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1264, 106, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1265, 106, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1266, 106, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1267, 106, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1268, 106, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1269, 106, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1270, 106, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1271, 106, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1272, 106, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1273, 107, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1274, 107, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1275, 107, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1276, 107, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1277, 107, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1278, 107, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1279, 107, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1280, 107, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1281, 107, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1282, 107, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1283, 107, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1284, 107, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1285, 108, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1286, 108, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1287, 108, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1288, 108, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1289, 108, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1290, 108, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1291, 108, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1292, 108, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1293, 108, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1294, 108, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1295, 108, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1296, 108, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1297, 109, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1298, 109, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1299, 109, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1300, 109, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1301, 109, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1302, 109, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1303, 109, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1304, 109, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1305, 109, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1306, 109, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1307, 109, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1308, 109, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1309, 110, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1310, 110, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1311, 110, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1312, 110, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1313, 110, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1314, 110, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1315, 110, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1316, 110, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1317, 110, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1318, 110, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1319, 110, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1320, 110, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1321, 111, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1322, 111, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1323, 111, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1324, 111, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1325, 111, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1326, 111, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1327, 111, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1328, 111, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1329, 111, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1330, 111, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1331, 111, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1332, 111, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1333, 112, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1334, 112, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1335, 112, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1336, 112, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1337, 112, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1338, 112, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1339, 112, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1340, 112, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1341, 112, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1342, 112, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1343, 112, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1344, 112, 200000, '2025-03-13 01:32:00', '1225', NULL);
INSERT INTO `tbl_iuran` VALUES (1345, 118, 200000, '2025-03-13 01:32:00', '0125', NULL);
INSERT INTO `tbl_iuran` VALUES (1346, 118, 200000, '2025-03-13 01:32:00', '0225', NULL);
INSERT INTO `tbl_iuran` VALUES (1347, 118, 200000, '2025-03-13 01:32:00', '0325', NULL);
INSERT INTO `tbl_iuran` VALUES (1348, 118, 200000, '2025-03-13 01:32:00', '0425', NULL);
INSERT INTO `tbl_iuran` VALUES (1349, 118, 200000, '2025-03-13 01:32:00', '0525', NULL);
INSERT INTO `tbl_iuran` VALUES (1350, 118, 200000, '2025-03-13 01:32:00', '0625', NULL);
INSERT INTO `tbl_iuran` VALUES (1351, 118, 200000, '2025-03-13 01:32:00', '0725', NULL);
INSERT INTO `tbl_iuran` VALUES (1352, 118, 200000, '2025-03-13 01:32:00', '0825', NULL);
INSERT INTO `tbl_iuran` VALUES (1353, 118, 200000, '2025-03-13 01:32:00', '0925', NULL);
INSERT INTO `tbl_iuran` VALUES (1354, 118, 200000, '2025-03-13 01:32:00', '1025', NULL);
INSERT INTO `tbl_iuran` VALUES (1355, 118, 200000, '2025-03-13 01:32:00', '1125', NULL);
INSERT INTO `tbl_iuran` VALUES (1356, 118, 200000, '2025-03-13 01:32:00', '1225', NULL);

-- ----------------------------
-- Table structure for tbl_level
-- ----------------------------
DROP TABLE IF EXISTS `tbl_level`;
CREATE TABLE `tbl_level`  (
  `id` int NOT NULL,
  `level_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_level
-- ----------------------------
INSERT INTO `tbl_level` VALUES (1, 'Super User');
INSERT INTO `tbl_level` VALUES (2, 'Admin');
INSERT INTO `tbl_level` VALUES (3, 'Kasir');

-- ----------------------------
-- Table structure for tbl_transaksi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_transaksi`;
CREATE TABLE `tbl_transaksi`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `no_transaksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `diskon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `grand_total` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uang_bayar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uang_kembali` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_transaksi` datetime NULL DEFAULT NULL,
  `pelanggan_id` int NULL DEFAULT NULL,
  `lainnya` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `metode_bayar` int NULL DEFAULT NULL,
  `kasir_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_transaksi
-- ----------------------------
INSERT INTO `tbl_transaksi` VALUES (1, 'TRX-2503-0001', '0', '150000', '150000', '0', '2025-03-09 00:10:00', 5, NULL, 1, NULL);

-- ----------------------------
-- Table structure for tbl_uom
-- ----------------------------
DROP TABLE IF EXISTS `tbl_uom`;
CREATE TABLE `tbl_uom`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_uom
-- ----------------------------
INSERT INTO `tbl_uom` VALUES (1, 'Kg', 'Kilogram');
INSERT INTO `tbl_uom` VALUES (2, 'KRAT', 'Krat');
INSERT INTO `tbl_uom` VALUES (3, 'DOS', 'Karton');
INSERT INTO `tbl_uom` VALUES (4, 'Pcs', 'Pieces');
INSERT INTO `tbl_uom` VALUES (5, 'Ml', 'Mililiter');
INSERT INTO `tbl_uom` VALUES (6, 'L', 'Liter');
INSERT INTO `tbl_uom` VALUES (7, 'Pack', 'Pack');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `level` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 1);
INSERT INTO `tbl_user` VALUES (2, 'Tukiyem', 'kasir', 'c7911af3adbd12a035b289556d96470a', 3, 1);
INSERT INTO `tbl_user` VALUES (3, 'Super User', 'su', '0b180078d994cb2b5ed89d7ce8e7eea2', 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
