/*
 Navicat Premium Dump SQL

 Source Server         : localhost docker
 Source Server Type    : MySQL
 Source Server Version : 90200 (9.2.0)
 Source Host           : localhost:3310
 Source Schema         : db_koperasi

 Target Server Type    : MySQL
 Target Server Version : 90200 (9.2.0)
 File Encoding         : 65001

 Date: 04/03/2025 20:35:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_anggota
-- ----------------------------
INSERT INTO `tbl_anggota` VALUES (1, 'KSUA24100002', 'Nanda Sabila Anwar', 'perempuan', 'Binti Saif', 'Jakarta', '2007-07-10', '3173065007070005', 'Kb. Dua Ratus Jakarta Barat', '', '', '', '081384076606', 1);
INSERT INTO `tbl_anggota` VALUES (2, 'KSUA24100003', 'Fathimah Anwar', 'perempuan', 'Binti Saif', 'Jakarta', '2017-03-27', '3173066703170017', 'Kb. Dua Ratus Jakarta Barat', '', '', '', '081384076606', 1);
INSERT INTO `tbl_anggota` VALUES (3, 'KSUA24100004', 'Juniarto', 'laki', 'Bin Turjon', 'Pekalongan', '1971-04-03', '3173060304710004', 'Kebonduaratus No 25. Kamal.', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (4, 'KSUA24100005', 'Ropiah', 'perempuan', 'Binti  Rop', 'Jakarta', '1975-07-06', '3173064607750015', 'Kebon Dua Ratus Jakarta Barat', '', '', '', '085891435416', 1);
INSERT INTO `tbl_anggota` VALUES (5, 'KSUA24100006', 'Maemun', 'laki', 'Bin Sakat', 'Bojonegoro', '1983-07-22', '3578172207830010', 'Kb. Dua Ratus Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (6, 'KSUA24100007', 'Fitria Djuharia', 'perempuan', 'Binti Baim', 'Surabaya', '1982-07-30', '3578047007820012', 'Kb. Dua Ratus Jakarta Barat', '', '', '', '081282491460', 1);
INSERT INTO `tbl_anggota` VALUES (7, 'KSUA24100008', 'Yetti Rachmawati', 'perempuan', 'Binti Suka', 'Cirebon', '1977-02-22', '3173066202770007', 'Jakarta Barat', '', '', '', '08161451342', 1);
INSERT INTO `tbl_anggota` VALUES (8, 'KSUA24100009', 'Fatchul Munir', 'laki', 'Bin Hadi N', 'Semarang', '1976-05-11', '3173061105760004', 'Jakarta Barat', '', '', '', '085885330840', 1);
INSERT INTO `tbl_anggota` VALUES (9, 'KSUA24100010', 'Slamet Nur Hadi', 'laki', 'Bin Paino ', 'Pasuruan', '1989-12-19', '3514201912890002', 'Pergudangan PID Blok H No 4', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (10, 'KSUA24100011', 'Bunga Tustiani', 'perempuan', 'Binti Asmo', 'Wonogiri', '1992-08-11', '3312075108920003', 'Pergudangan PID Blok H No 4', '', '', '', '085280696884', 1);
INSERT INTO `tbl_anggota` VALUES (11, 'KSUA24100012', 'Mukhammad Syafii', 'laki', 'Bin Slamet', 'Wonogiri', '1992-08-11', '3312072812170002', 'Pergudangan PID Blok H No 4', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (12, 'KSUA24100013', 'Mirda Baini', 'perempuan', 'Binti Muhz', 'Tangerang', '1982-07-18', '3603145807820006', 'Tangerang', '', '', '', '085730359885', 1);
INSERT INTO `tbl_anggota` VALUES (13, 'KSUA24100014', 'Dandi Putra Islami', 'laki', 'Bin Sardi', 'Tangerang', '2006-01-25', '3603142501060002', 'Tangerang', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (14, 'KSUA24100015', 'Uswatun khasanah', 'perempuan', 'Binti Djum', 'Purbalingga', '1983-06-05', '3603144506830013', 'Perumahan Puri Kamal ', '', '', '', '087780325668', 1);
INSERT INTO `tbl_anggota` VALUES (15, 'KSUA24100016', 'Ai Laela', 'perempuan', 'Binti Indi', 'Cianjur', '1976-02-02', '3603144202760004', 'Jl. Keb. Mede Jakbar', '', '', '', '085776297080', 1);
INSERT INTO `tbl_anggota` VALUES (16, 'KSUA24100017', 'Alistina', 'perempuan', 'Binti Suge', 'Malang', '1980-11-02', '3173014211800015', 'Kp. Sawah Mede Jakbar', '', '', '', '087883653020', 1);
INSERT INTO `tbl_anggota` VALUES (17, 'KSUA24100018', 'Mochamad Saleh', 'laki', 'Bin Djunae', 'Jakarta', '1981-04-11', '3173011104810005', 'Kp. Sawah Mede Jakbar', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (18, 'KSUA24100019', 'Mardi', 'laki', 'Bin Mahsan', 'Jakarta', '1990-05-12', '3173061205900009', 'Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (19, 'KSUA24100020', 'Winda Rosita', 'perempuan', 'Binti Syar', 'Jambi', '1990-08-20', '3603146008900004', 'Dadap Tangerang', '', '', '', '0895324482058', 1);
INSERT INTO `tbl_anggota` VALUES (20, 'KSUA24100021', 'Heru herianto', 'laki', 'Bin A.Rozi', 'Jakarta', '1984-04-02', '3173060204840007', 'Kp. DADAP ROMENE RT.01 / 011', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (21, 'KSUA24100022', 'Aziz Purnama', 'laki', 'Bin Akhmad', 'Tegal', '2001-07-20', '3173062007010008', 'Kb. Dua Ratus Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (22, 'KSUA24100023', 'Kusdiati', 'perempuan', 'Binti Saly', 'Tegal', '1976-04-13', '3173065304760010', 'Kp. Sawah Mede Jakbar', '', '', '', '087878614884', 1);
INSERT INTO `tbl_anggota` VALUES (23, 'KSUA24100024', 'Isa Yusuf', 'laki', 'Bin Yusuf', 'Brebes', '2025-01-01', '3173011308821001', 'Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (24, 'KSUA24100025', 'Tri Widianingsih', 'perempuan', 'Binti Tumi', 'Purworejo', '2025-01-01', '31730148068110001', 'Kb. Dua Ratus Jakarta Barat', '', '', '', '082119088185', 1);
INSERT INTO `tbl_anggota` VALUES (25, 'KSUA24100026', 'Listyaningsih', 'perempuan', 'Binti Muly', 'Jakarta', '1989-05-18', '3173085805890004', 'Jakarta Barat', '(CC) Naning Metriyan', '', '', '085772509313', 1);
INSERT INTO `tbl_anggota` VALUES (26, 'KSUA24100027', 'Suwanti', 'perempuan', 'Binti Kurd', 'Jakarta', '1961-08-18', '3173065808610003', 'Jakarta Barat', '', '', '', '081389140229', 1);
INSERT INTO `tbl_anggota` VALUES (27, 'KSUA24100028', 'Yasmirin', 'perempuan', 'Binti Supa', 'Blora', '1978-03-12', '3173065203780010', 'Kp. Belakang RawaTerong', '', '', '', '081225490252', 1);
INSERT INTO `tbl_anggota` VALUES (28, 'KSUA24100029', 'M. Carudin', 'laki', 'Bin Dakim', 'Brebes', '1976-07-20', '3173062007760007', 'Kp. Belakang Rawa Terong', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (29, 'KSUA24100030', 'Ridhan Maulana Al Fadhila', 'laki', 'Bin M. car', 'Brebes', '2004-08-04', '3329160408040003', 'Kp. Belakang RawaTerong', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (30, 'KSUA24100031', 'Rano Hertono', 'laki', 'Bin Herman', 'Tangerang', '1981-09-16', '3603141609810002', 'Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (31, 'KSUA24100032', 'Nining Yuhaeni', 'perempuan', 'Binti Wast', 'Indramayu', '1983-11-11', '3603145111830001', 'Jakarta Barat', '', '', '', '0881012433458', 1);
INSERT INTO `tbl_anggota` VALUES (32, 'KSUA24100033', 'Kayyisah Hafidzah As shofa', 'perempuan', 'Binti Rano', 'Tangerang', '2016-05-18', '3603145805160001', 'Jakarta Barat', '', '', '', '0881012433458', 1);
INSERT INTO `tbl_anggota` VALUES (33, 'KSUA24100034', 'Isabella Septiani', 'perempuan', 'Binti Juju', 'Wonogiri', '1993-09-26', '3312076609930002', 'Dadap Tangerang', '', '', '', '081348052665', 1);
INSERT INTO `tbl_anggota` VALUES (34, 'KSUA24100035', 'Aisyah', 'perempuan', 'Binti Aji', 'Indramayu', '2025-01-01', '3212016104920002', 'Kp. Belakang', '(CC) Rohanah', '', '', '083819474085', 1);
INSERT INTO `tbl_anggota` VALUES (35, 'KSUA24100036', 'Farida', 'perempuan', 'Binti Muha', 'Palembang', '1979-02-12', '3603145202790004', 'Perum Duta Bandara Permai', '', '', '', '082122246827', 1);
INSERT INTO `tbl_anggota` VALUES (36, 'KSUA24100037', 'Surifno', 'laki', 'Bin Ngadim', 'Batang', '2025-01-01', '3173061802810007', 'Batu Ceper Tangerang', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (37, 'KSUA24100038', 'Dahliyah', 'perempuan', 'Binti Rasu', 'Batang', '1983-06-10', '3173065006830026', 'Batu Ceper Tangerang', '', '', '', '085771798524', 1);
INSERT INTO `tbl_anggota` VALUES (38, 'KSUA24100039', 'Permaisuri', 'perempuan', 'Binti Ahma', 'Palembang', '1973-06-27', '3172016706730008', 'Jakarta Barat', '', '', '', '081314756344', 1);
INSERT INTO `tbl_anggota` VALUES (39, 'KSUA24100040', 'Erah Nasaroh', 'perempuan', 'Binti Idri', 'Kuningan', '2025-01-01', '3603144401820006', 'Perum Griya Dadap Tangerang', '', '', '', '085718782653', 1);
INSERT INTO `tbl_anggota` VALUES (40, 'KSUA24100041', 'Sunarti', 'perempuan', 'Binti Bibi', 'Klaten', '1976-05-26', '3603146605760001', 'Kp Kebon Besar Tangerang', '', '', '', '082386545304', 1);
INSERT INTO `tbl_anggota` VALUES (41, 'KSUA24100042', 'Marsan', 'laki', 'Bin Mardi', 'Jakarta', '1988-10-03', '3173060310880007', 'Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (42, 'KSUA24100043', 'Yanti Heryanti', 'perempuan', 'Binti Udi', 'Cirebon', '1986-09-01', '3603144109860006', 'Cirebon', '', '', '', '081388883295', 1);
INSERT INTO `tbl_anggota` VALUES (43, 'KSUA24100044', 'Nadi Gunaedy', 'laki', 'Bin Ahman ', 'Jakarta', '2025-01-01', '31730625037660001', 'Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (44, 'KSUA24100045', 'Anah', 'perempuan', 'Binti Amin', 'Jakarta', '1977-06-15', '3173065506770007', 'Jakarta Barat', '', '', '', '089275772576', 1);
INSERT INTO `tbl_anggota` VALUES (45, 'KSUA24100046', 'Sana\'ah', 'perempuan', 'Binti Sami', 'Cirebon', '1980-05-03', '3209385504820002', 'Tangerang', '', '', '', '083825148459', 1);
INSERT INTO `tbl_anggota` VALUES (46, 'KSUA24100047', 'Nuriah', 'perempuan', 'Binti Muha', 'Pemalang', '1983-07-25', '3173066507830008', 'Jakarta Barat', '', '', '', '081310075383', 1);
INSERT INTO `tbl_anggota` VALUES (47, 'KSUA24100048', 'Muhammad Hamdany Munawwa', 'laki', 'Binti Fatc', 'Jakarta', '2002-05-31', '3173063105020005', 'Jakarta/ Solo', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (48, 'KSUA24100049', 'Neneng Helawati', 'perempuan', 'Binti Marw', 'Tangerang', '2025-01-01', '3603146303830007', 'Tangerang', '', '', '', '087826102431', 1);
INSERT INTO `tbl_anggota` VALUES (49, 'KSUA24100050', 'Dwi Suwita Handayani', 'perempuan', 'Binti Sata', 'Purworejo', '1989-07-03', '3173014307890014', 'Duta Bandara Permao', '', '', '', '087878883237', 1);
INSERT INTO `tbl_anggota` VALUES (50, 'KSUA24100051', 'Endang Sulis', 'perempuan', 'Binti Jaid', 'Mengandungsari', '1981-02-09', '3173064902810010', 'Cluster Griya Dadap A8/21', '', '', '', '085711163328', 1);
INSERT INTO `tbl_anggota` VALUES (51, 'KSUA24100052', 'Tri Nuria', 'perempuan', 'Binti Mars', 'Telogorejo', '2002-11-02', '1807064211020003', 'Pergudangan Pantai Indah Dadap', '', '', '', '083852620417', 1);
INSERT INTO `tbl_anggota` VALUES (52, 'KSUA24100053', 'Putri Rodiati', 'perempuan', 'Binti Jure', 'Buana Sakti', '2003-03-25', '1807066503030003', 'Pergudangan Pantai Indah Dadap.png', '', '', '', '085781816495', 1);
INSERT INTO `tbl_anggota` VALUES (53, 'KSUA24100054', 'Nina Novita', 'perempuan', 'Binti Kate', 'Jakarta', '1983-11-23', '3173066311830011', 'Pergudangan pantai indah dadap', '', '', '', '081280084764', 1);
INSERT INTO `tbl_anggota` VALUES (54, 'KSUA24100055', 'Siti Kusriyah', 'perempuan', 'Binti Sarj', 'Magelang', '2025-01-01', '3173014708790009', 'Kebun Mede Kamal Jakarta Barat', '(CC) Sum Sumiati', '', '', '081311202788', 1);
INSERT INTO `tbl_anggota` VALUES (55, 'KSUA24100056', 'Kuliyah Rusyidah', 'perempuan', 'Binti Kate', 'Magelang', '2025-01-01', '3173065006840022', 'Jakarta ', '(CC) Santi', '', '', '081908662577', 1);
INSERT INTO `tbl_anggota` VALUES (56, 'KSUA24100057', 'Nurul Khotimah', 'perempuan', 'Binti Moh.', 'Kebumen', '1986-03-26', '3305016603860009', 'Perum.Dadap Indah BlokC3 No.18', '', '', '', '082111033972', 1);
INSERT INTO `tbl_anggota` VALUES (57, 'KSUA24100058', 'Mulyadi', 'laki', 'Bin Rohat', 'Pemalang', '1977-05-25', '3173062505770017', 'Tangerang', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (58, 'KSUA24100059', 'Megawati Turnip', 'perempuan', 'Binti Beti', 'Pematang Siantar', '1975-09-15', '3173065509750017', 'Jakarta Barat', '', '', '', '0895340172091', 1);
INSERT INTO `tbl_anggota` VALUES (59, 'KSUA24100060', 'Priyati Sri Ekosani', 'perempuan', 'Binti Ahma', 'Jakarta', '1969-07-31', '3172017107690001', 'Jakarta Barat', '', '', '', '087887226581', 1);
INSERT INTO `tbl_anggota` VALUES (60, 'KSUA24100061', 'Mariya', 'perempuan', 'Binti Padl', 'Cirebon', '1984-04-02', '3209195107840008', 'Kayu Besar Jakarta Barat', '', '', '', '081514620945', 1);
INSERT INTO `tbl_anggota` VALUES (61, 'KSUA24100062', 'Muhammad Aris Setiawan', 'laki', 'Bin Komedi', 'Kaliliak', '1999-12-12', '1801101103990008', 'Lampung Selatan', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (62, 'KSUA24100063', 'Turmiyati', 'perempuan', 'Binti Part', 'Jakarta', '1976-06-12', '3173065206760024', 'Rawa Melati Jakbar', '(CC) Iis Masitoh', '(CC) Ani Kuswanti', '(CC) Chomsah Lusiah', '', 1);
INSERT INTO `tbl_anggota` VALUES (63, 'KSUA24100064', 'Aulia Nur Septiani ', 'perempuan', 'Binti Gimi', 'Jakarta', '2006-09-06', '3603144609000006', 'Griya Dadap', '', '', '', '082122156560', 1);
INSERT INTO `tbl_anggota` VALUES (64, 'KSUA24100065', 'Tuti Nuryati', 'perempuan', 'Binti Kami', 'Jakarta', '2025-01-01', '3173066510760006', 'Kp. Sawah Mede Jakbar', '', '', '', '0895342457123', 1);
INSERT INTO `tbl_anggota` VALUES (65, 'KSUA24100066', 'Sartini', 'perempuan', 'Binti Dul ', 'Jakarta', '1974-04-10', '3173065004740006', 'Jakarta Barat', '', '', '', '089635813842', 1);
INSERT INTO `tbl_anggota` VALUES (66, 'KSUA24100067', 'Rakmadi', 'laki', 'Bin Kasnan', 'Brebes', '2025-01-01', '3329142506790004', 'Pulogading', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (67, 'KSUA24100068', 'Slamet Agung Wahono', 'laki', 'Bin Soetri', 'Grobogan', '1991-10-31', '3315023110910002', 'Jln. Raya Dadap no 30 A', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (68, 'KSUA24100069', 'Abdul Charis', 'laki', 'Bin Machfu', 'Cirebon', '1998-03-12', '3209311203980006', 'Jl. Kp. Sawah Jakarta Barat', '(CC) Edi Susanto', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (69, 'KSUA24100070', 'Dela Nia Wati', 'perempuan', 'Binti Sard', 'Makartitama', '1995-04-22', '1805286204950001', 'Tangerang', '', '', '', '081219048537', 1);
INSERT INTO `tbl_anggota` VALUES (70, 'KSUA24100071', 'Maya Komala Sari', 'perempuan', 'Binti Fajr', 'Bogor', '1982-07-14', '3201185407820003', 'Kalideres Jakarta Barat', '', '', '', '083130711582', 1);
INSERT INTO `tbl_anggota` VALUES (71, 'KSUA24100072', 'Mumus', 'laki', 'Bin Suanda', 'Lebak', '2025-01-01', '3602122407990001', 'Kp. Maraya', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (72, 'KSUA24100073', 'M syabilan', 'laki', 'Bin Basrow', 'Tangerang', '1982-09-07', '3603110709820012', 'Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (73, 'KSUA24100074', 'Agus Triwibowo', 'laki', 'Bin Sri Su', 'Klaten', '1985-09-23', '3310102309850001', 'Wonogiri,', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (74, 'KSUA24100075', 'Ariswanto', 'laki', 'Bin Samdan', 'Brebes', '1990-12-12', '3329101212900002', 'Dadap Tangerang', 'Muhamad Khariri', 'Aji Respati', 'Rusdi', '', 1);
INSERT INTO `tbl_anggota` VALUES (75, 'KSUA24100076', 'Sulami', 'perempuan', 'Binti Muha', 'Sragen', '2025-01-01', '3603144202740002', 'Tangerang', '', '', '', '082122395392', 1);
INSERT INTO `tbl_anggota` VALUES (76, 'KSUA24100077', 'Siti Alwiyah', 'perempuan', 'Binti Dars', 'Batang', '1988-08-16', '3604205609880002', 'Jakarta Barat', '', '', '', '081218017651', 1);
INSERT INTO `tbl_anggota` VALUES (77, 'KSUA24100078', 'Mulhimmah', 'perempuan', 'Binti Ahma', 'Bekasi', '1989-08-23', '3216016308890003', 'Bekasi', '', '', '', '087817061576', 1);
INSERT INTO `tbl_anggota` VALUES (78, 'KSUA24100079', 'Ipah aripah', 'perempuan', 'Binti Adza', 'Jakarta', '1974-01-12', '3173065201740006', ' Jl.Kampung Sawah Mede', '', '', '', '08881860927', 1);
INSERT INTO `tbl_anggota` VALUES (79, 'KSUA24100080', 'Ratmo', 'laki', 'Bin Sakima', 'Wonogiri', '1983-05-29', '3173062905830007', 'Jl. Kampung Sawah Mede', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (80, 'KSUA24100081', 'Soleman', 'laki', 'Bin Sohid', 'Kebumen', '1973-09-04', '3603140409730001', 'Tangerang', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (81, 'KSUA24100082', 'Ipit Pitriyani', 'perempuan', 'Binti Nend', 'Bogor', '1988-03-05', '3201194503880009', 'Kali Deres Jakbar', '', '', '', '085772567748', 1);
INSERT INTO `tbl_anggota` VALUES (82, 'KSUA24100083', 'Erna Dwi Wulandari', 'perempuan', 'Binti Suge', 'Wonogiri', '1992-12-28', '3312076812920001', 'Kp. Sawah Mede', '', '', '', '081283505909', 1);
INSERT INTO `tbl_anggota` VALUES (83, 'KSUA24100084', 'Sutarni', 'perempuan', 'Binti Kami', '', '1970-12-30', '3173067012700012', 'Kebon Mede', '(CC) Juniyati', '', '', '085770758525', 1);
INSERT INTO `tbl_anggota` VALUES (84, 'KSUA24100085', 'Sutini', 'perempuan', 'Binti Suwi', '', '1972-08-08', '3603144808720001', 'Tangerang', '', '', '', '085295395239', 1);
INSERT INTO `tbl_anggota` VALUES (85, 'KSUA24100086', 'Rastono', 'laki', 'Bin Raswid', 'Tegal', '1990-01-01', '1801130101900039', 'Tangerang', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (86, 'KSUA24100087', 'Fadil Sumadiono', 'laki', 'Bin Sukard', 'Jakarta', '1973-11-21', '3174022111680002', 'Jakarta Selatan', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (87, 'KSUA24100088', 'Rosika', 'perempuan', 'Binti Murs', 'Jakarta', '1980-04-22', '3175016204800005', 'Kebon Mede Jakbar', '', '', '', '089526679573', 1);
INSERT INTO `tbl_anggota` VALUES (88, 'KSUA24100089', 'Yani', 'perempuan', 'Binti Sama', 'Tangerang', '1988-06-09', '3603144906880003', 'Kp. Dadap Sawah Tangerang', '', '', '', '087889907664', 1);
INSERT INTO `tbl_anggota` VALUES (89, 'KSUA24100090', 'Heni Susanti', 'perempuan', 'Binti SADJ', 'Grobogan', '1982-01-27', '3603146701820005', 'Tangerang', '(CC) Nur Janah', '', '', '085884543755', 1);
INSERT INTO `tbl_anggota` VALUES (90, 'KSUA24100091', 'Harsih Hastuti', 'perempuan', 'Binti Turi', 'Kebumen', '1994-02-05', '3305164502940001', 'Jln Kebon Mede Rt001/ Rw006 No 145', '', '', '', '08999207389', 1);
INSERT INTO `tbl_anggota` VALUES (91, 'KSUA24100092', 'Arif Prayoga', 'laki', 'Bin Janudi', 'Lebak', '1993-05-17', '3602091705930002', 'Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (92, 'KSUA24100093', 'Sairoh', 'perempuan', 'Binti Rami', 'Indramayu', '1977-01-05', '3212154501770004', 'Jakarta Barat', '', '', '', '081514296480', 1);
INSERT INTO `tbl_anggota` VALUES (93, 'KSUA24100094', 'Barokah', 'perempuan', 'Binti H. A', 'Pemalang', '1969-06-12', '3173065206690002', 'Kamal Kali Deres Jakarta Barat', '', '', '', '085771392401', 1);
INSERT INTO `tbl_anggota` VALUES (94, 'KSUA24100095', 'Sri Haryati', 'perempuan', 'Binti Sima', 'Jakarta', '1993-01-17', '3173065701930008', 'Jakarta Barat', '', '', '', '085778634882', 1);
INSERT INTO `tbl_anggota` VALUES (95, 'KSUA24100096', 'Ichlas Tawakal', 'laki', 'Binti Sjac', 'Bekasi', '1991-03-28', '3275042803910014', 'Bekasi Selatan', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (96, 'KSUA24100097', 'Nursiah', 'perempuan', 'Binti Kasn', 'Pandeglang', '1999-06-06', '3601174606990001', 'Blok H4, Dadap, Kosambi , Tangerang', '(CC) Nadya Firda', '(CC) Rahayu Utami', '', '087875172241', 1);
INSERT INTO `tbl_anggota` VALUES (97, 'KSUA24100098', 'Mega Dwi Faujiah', 'perempuan', 'Binti Akhm', 'Tangerang', '2007-06-11', '3173065106070008', 'Kalideres Jakarta Barat ', '', '', '', '087878614884', 1);
INSERT INTO `tbl_anggota` VALUES (98, 'KSUA24100099', 'Sahati ', 'perempuan', 'Binti Wiro', 'Sleman', '1968-03-23', '3173066203680004', 'Jakarta Barat', '', '', '', '089531004463', 1);
INSERT INTO `tbl_anggota` VALUES (99, 'KSUA24100100', 'Ananda Putri Alisa', 'perempuan', 'Binti Moch', 'Jakarta', '2006-01-11', '3173015101061003', 'Kp. Sawah Mede', '', '', '', '087883653020', 1);
INSERT INTO `tbl_anggota` VALUES (100, 'KSUA24100101', 'Annisa Halwa', 'perempuan', 'Binti Fach', 'Jakarta', '2003-11-10', '3173065011030007', 'Jakarta Barat', '', '', '', '083811956146', 1);
INSERT INTO `tbl_anggota` VALUES (101, 'KSUA24100102', 'Teguh Pamuji', 'laki', 'Bin Sandar', 'Kebumen', '1982-08-04', '3305180408820002', 'Tangerang', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (102, 'KSUA24100103', 'Darussalam', 'laki', 'Bin Sri Nu', 'jakarta', '1985-03-28', '3173012803850021', 'Jakarta Barat', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (103, 'KSUA24100104', 'Dada Wilda Munawar', 'laki', 'Bin Eddy D', 'Cianjur', '1969-06-08', '3603140806690003', 'Jl. Raya Dadap no 30 A', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (104, 'KSUA24100105', 'Amirkan', 'laki', 'Bin Romdho', 'Demak', '1997-10-16', '3321121610970001', 'Lingkungan III Tegal Alur Jakbar', '(CC) Dede Suparno', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (105, 'KSUA24100106', 'Siti Saniati', 'perempuan', 'Binti Suko', 'Pekalongan', '1985-01-31', '3326117101850021', 'DKI Jakarta', '', '', '', '085932975632', 1);
INSERT INTO `tbl_anggota` VALUES (106, 'KSUA24100107', 'Naila Khilya', 'perempuan', 'Binti Fach', 'Jakarta', '2006-06-21', '3173066106060002', 'Jakarta Barat', '', '', '', '085697669398', 1);
INSERT INTO `tbl_anggota` VALUES (107, 'KSUA24100108', 'Luky Hermanto', 'laki', 'Bin Sugian', 'Wonogiri', '2024-08-13', '3312071308900002', 'Dadap Tangerang', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (108, 'KSUA24100109', 'Muhamad Irfan', 'laki', 'Bin Iran', 'Bogor', '1988-05-14', '3201151405880007', 'Kebon Mede', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (109, 'KSUA24100110', 'Anita Fitria Hariwijaya', 'perempuan', 'Binti Suti', 'Banjarnegara', '1989-05-08', '3173064805891002', 'Dadap Indah A2 No.4', '', '', '', '081339321308', 1);
INSERT INTO `tbl_anggota` VALUES (110, 'KSUA24100111', 'Nina Yuliasih', 'perempuan', 'Binti Agus', 'Tangerang', '1991-11-23', '3671086311910005', 'JL. Lingkungan 3, Rt.09/03 Tegal Alur', '', '', '', '085706317613', 1);
INSERT INTO `tbl_anggota` VALUES (113, '123123321', 'barunih', 'laki', 'test', 'surabaya', '1999-01-01', '3456789876543456', 'surabaya no 1', '', '', '', '', 1);
INSERT INTO `tbl_anggota` VALUES (114, '123123321', 'barunih', 'laki', 'test', 'surabaya', '1999-01-01', '3456789876543456', 'surabaya no 1', '', '', '', '', 2);
INSERT INTO `tbl_anggota` VALUES (115, '123123321', 'barunih', 'laki', 'test', 'surabaya', '1999-01-01', '3456789876543456', 'surabaya no 1', '', '', '', '08213123', 2);
INSERT INTO `tbl_anggota` VALUES (117, 'OTHER', 'lainnya', 'laki', '123', '12', '2025-02-26', '123', '123', '1', '1', '1', '123', 1);

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
INSERT INTO `tbl_barang` VALUES (1, 'BRG-2502-0001', 'Beras @50KG', 1, 640000, 700000, 7, 'Kg', 60000, '2025-02-27 08:53:35', '2025-02-27 08:53:35', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (2, 'BRG-2502-0002', 'Gula GMP @50 Kg', 1, 860000, 900000, 17, 'Kg', 40000, '2025-02-27 08:57:23', '2025-02-27 08:57:23', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (3, 'BRG-2502-0003', 'Gula GMP', 1, 18000, 20000, 23, 'Kg', 2000, '2025-02-27 08:57:49', '2025-03-02 13:56:02', 3000, 3, 1);
INSERT INTO `tbl_barang` VALUES (4, 'BRG-2502-0004', 'INDOMIE AYAM SPESIAL @DOS', 1, 103000, 105000, 10, 'DOS', 2000, '2025-02-27 08:58:11', '2025-02-27 08:58:11', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (5, 'BRG-2502-0005', 'INDOMIE GORENG DOS', 1, 111000, 115000, 7, 'DOS', 4000, '2025-02-27 08:58:37', '2025-02-27 08:58:37', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (6, 'BRG-2502-0006', 'INDOMIE GORENG ', 1, 3000, 3500, 3, 'Pcs', 500, '2025-02-27 08:58:54', '2025-02-27 08:58:54', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (7, 'BRG-2502-0007', 'INDOMIE SOTO', 1, 2700, 3000, 8, 'Pcs', 300, '2025-02-27 09:00:12', '2025-02-27 09:00:12', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (8, 'BRG-2502-0008', 'KECAP SEDAP @520ml', 1, 7500, 8500, 5, 'Ml', 1000, '2025-02-27 09:00:54', '2025-02-27 09:00:54', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (9, 'BRG-2502-0009', 'Minyak Kita @1L', 1, 0, 0, 0, 'L', 0, '2025-02-27 09:01:17', '2025-02-27 09:01:17', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (10, 'BRG-2502-0010', 'MIKA TELOR PACK', 1, 45000, 50000, 10, 'Pack', 5000, '2025-02-27 09:02:49', '2025-02-27 09:02:49', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (11, 'BRG-2502-0011', 'MIKA TELOR @pcs', 1, 1000, 2000, 10, 'Pcs', 1000, '2025-02-27 09:03:19', '2025-02-27 09:03:19', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (12, 'BRG-2502-0012', 'TELOR PETI @15Kg', 1, 360000, 380000, 10, 'Kg', 20000, '2025-02-27 09:03:49', '2025-02-27 09:03:49', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (13, 'BRG-2502-0013', 'TELOR', 1, 10000, 12000, 7, 'Kg', 2000, '2025-02-27 09:04:17', '2025-02-27 09:04:17', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (14, 'BRG-2502-0014', 'TERIGU LENCANA MERAH', 1, 110000, 115000, 10, 'Kg', 5000, '2025-02-27 09:05:22', '2025-02-27 09:05:22', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (15, 'BRG-2502-0015', 'TERIGU LENCANA MERAH', 1, 128000, 130000, 10, 'Kg', 2000, '2025-02-27 09:05:36', '2025-02-27 09:05:36', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (16, 'BRG-2502-0016', 'TROPICAL @ 6Krat', 1, 215000, 220000, 10, 'KRAT', 5000, '2025-02-27 09:06:03', '2025-02-27 09:06:03', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (17, 'BRG-2502-0017', 'TROPICAL @2L', 1, 40000, 45000, 9, 'L', 5000, '2025-02-27 09:06:27', '2025-02-27 09:06:27', 0, 0, 1);
INSERT INTO `tbl_barang` VALUES (18, 'BRG-2502-0018', 'BERAS SYATHIBI @ 5 KG', 1, 74000, 77000, 9, 'Kg', 3000, '2025-02-27 09:12:50', '2025-02-27 09:12:50', 0, 0, 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_dtl_trans
-- ----------------------------
INSERT INTO `tbl_dtl_trans` VALUES (1, 1, 'BRG-2502-0001', '5', '650000');
INSERT INTO `tbl_dtl_trans` VALUES (2, 1, 'BRG-2502-0003', '2', '20000');
INSERT INTO `tbl_dtl_trans` VALUES (3, 1, 'BRG-2502-0013', '3', '12000');
INSERT INTO `tbl_dtl_trans` VALUES (4, 2, 'BRG-2502-0017', '1', '45000');
INSERT INTO `tbl_dtl_trans` VALUES (5, 3, 'BRG-2502-0018', '1', '77000');
INSERT INTO `tbl_dtl_trans` VALUES (6, 6, 'BRG-2502-0006', '1', '3500');
INSERT INTO `tbl_dtl_trans` VALUES (7, 7, 'BRG-2502-0005', '1', '115000');
INSERT INTO `tbl_dtl_trans` VALUES (8, 8, 'BRG-2502-0005', '1', '115000');
INSERT INTO `tbl_dtl_trans` VALUES (9, 9, 'BRG-2502-0002', '1', '900000');
INSERT INTO `tbl_dtl_trans` VALUES (10, 10, 'BRG-2502-0002', '1', '900000');
INSERT INTO `tbl_dtl_trans` VALUES (11, 11, 'BRG-2502-0002', '1', '900000');
INSERT INTO `tbl_dtl_trans` VALUES (12, 11, 'BRG-2502-0006', '1', '3500');
INSERT INTO `tbl_dtl_trans` VALUES (13, 12, 'BRG-2502-0007', '1', '3000');
INSERT INTO `tbl_dtl_trans` VALUES (14, 13, 'BRG-2502-0008', '1', '8500');
INSERT INTO `tbl_dtl_trans` VALUES (15, 14, 'BRG-2502-0008', '1', '8500');
INSERT INTO `tbl_dtl_trans` VALUES (16, 15, 'BRG-2502-0008', '1', '8500');
INSERT INTO `tbl_dtl_trans` VALUES (17, 16, 'BRG-2502-0008', '1', '8500');
INSERT INTO `tbl_dtl_trans` VALUES (18, 17, 'BRG-2502-0006', '1', '3500');
INSERT INTO `tbl_dtl_trans` VALUES (19, 18, 'BRG-2502-0008', '1', '8500');
INSERT INTO `tbl_dtl_trans` VALUES (20, 19, 'BRG-2502-0003', '1', '20000');
INSERT INTO `tbl_dtl_trans` VALUES (21, 20, 'BRG-2502-0005', '1', '115000');
INSERT INTO `tbl_dtl_trans` VALUES (22, 21, 'BRG-2502-0003', '3', '20000');
INSERT INTO `tbl_dtl_trans` VALUES (24, 23, 'BRG-2502-0003', '1', '20000');
INSERT INTO `tbl_dtl_trans` VALUES (25, 24, 'BRG-2502-0007', '1', '3000');
INSERT INTO `tbl_dtl_trans` VALUES (26, 24, 'BRG-2502-0006', '4', '3500');

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
  `date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_iuran
-- ----------------------------
INSERT INTO `tbl_iuran` VALUES (1, 115, 200000, '2025-03-03 13:42:11');
INSERT INTO `tbl_iuran` VALUES (2, 114, 200000, '2025-03-03 23:05:40');

-- ----------------------------
-- Table structure for tbl_keuangan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_keuangan`;
CREATE TABLE `tbl_keuangan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `period_bulan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `peior_tahun` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nominal` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_keuangan
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_level
-- ----------------------------
DROP TABLE IF EXISTS `tbl_level`;
CREATE TABLE `tbl_level`  (
  `id` int,
  `level_name` varchar(100),
  PRIMARY KEY (`id`)
);

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
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_transaksi
-- ----------------------------
INSERT INTO `tbl_transaksi` VALUES (1, 'TRX-2502-0001', '0', '3326000', '3330000', '4000', '2025-02-27 15:05:00', 117, 'Firman', NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (2, 'TRX-2502-0002', '0', '45000', '50000', '5000', '2025-02-27 15:05:00', 3, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (3, 'TRX-2502-0003', '0', '77000', '80000', '3000', '2025-02-27 20:08:00', 12, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (4, 'TRX-2502-0004', '0', '8500', '10000', '1500', '2025-02-27 20:27:00', 4, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (5, 'TRX-2502-0005', '0', '115000', '120000', '5000', '2025-02-27 20:29:00', 5, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (6, 'TRX-2502-0006', '0', '3500', '5000', '1500', '2025-02-27 20:31:00', 3, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (7, 'TRX-2502-0007', '0', '115000', '120000', '5000', '2025-02-27 20:35:00', 5, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (8, 'TRX-2502-0008', '0', '115000', '115000', '0', '2025-02-27 20:36:00', 17, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (9, 'TRX-2502-0009', '0', '900000', '900000', '0', '2025-02-27 20:49:00', 6, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (10, 'TRX-2502-0009', '0', '900000', '900000', '0', '2025-02-27 20:50:00', 0, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (11, 'TRX-2502-0011', '0', '903500', '905000', '1500', '2025-02-27 20:50:00', 5, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (12, 'TRX-2502-0012', '0', '3000', '5000', '2000', '2025-02-27 20:51:00', 9, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (13, 'TRX-2502-0013', '0', '8500', '10000', '1500', '2025-02-27 20:56:00', 13, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (14, 'TRX-2502-0014', '0', '8500', '10000', '1500', '2025-02-27 20:57:00', 13, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (15, 'TRX-2502-0015', '0', '8500', '10000', '1500', '2025-02-27 20:58:00', 13, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (16, 'TRX-2502-0016', '0', '8500', '10000', '1500', '2025-02-27 21:00:00', 7, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (17, 'TRX-2502-0017', '0', '3500', '4000', '500', '2025-02-27 21:00:00', 4, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (18, 'TRX-2502-0018', '0', '8500', '10000', '1500', '2025-02-27 21:07:00', 3, NULL, NULL, NULL);
INSERT INTO `tbl_transaksi` VALUES (19, 'TRX-2503-0019', '0', '20000', '20000', '0', '2025-03-01 21:07:00', 3, NULL, 1, NULL);
INSERT INTO `tbl_transaksi` VALUES (20, 'TRX-2503-0020', '0', '115000', '120000', '5000', '2025-03-04 12:54:13', 2, NULL, 1, NULL);
INSERT INTO `tbl_transaksi` VALUES (21, 'TRX-2503-0021', '0', '60000', '60000', '0', '2025-03-02 04:50:00', 3, NULL, 1, NULL);
INSERT INTO `tbl_transaksi` VALUES (23, 'TRX-2503-0022', '0', '20000', '20000', '0', '2025-03-04 04:57:00', 4, NULL, 1, NULL);
INSERT INTO `tbl_transaksi` VALUES (24, 'TRX-2503-0024', '0', '17000', '20000', '3000', '2025-03-04 04:57:00', 4, NULL, 1, NULL);

-- ----------------------------
-- Table structure for tbl_uom
-- ----------------------------
DROP TABLE IF EXISTS `tbl_uom`;
CREATE TABLE `tbl_uom`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `tbl_uom` VALUES (8, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(100),
  `username` varchar(100),
  `password` text,
  `level` int,
  `status` int,
  PRIMARY KEY (`id`)
)

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 1);
INSERT INTO `tbl_user` VALUES (2, 'Tukiyem', 'tukiyem', '76dc88198f6b67f0b518820c7b4fa213', 3, 1);

SET FOREIGN_KEY_CHECKS = 1;
