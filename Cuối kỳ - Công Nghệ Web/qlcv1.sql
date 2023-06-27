-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 08, 2022 lúc 03:21 PM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlcv1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `Machatbox` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `Ngaygui` date NOT NULL,
  KEY `Machatbox` (`Machatbox`),
  KEY `MaNd` (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chatbox`
--

DROP TABLE IF EXISTS `chatbox`;
CREATE TABLE IF NOT EXISTS `chatbox` (
  `Machatbox` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tenchatbox` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaytao` date NOT NULL,
  `MaDV` int(10) NOT NULL,
  PRIMARY KEY (`Machatbox`),
  KEY `MaDV` (`MaDV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congviec`
--

DROP TABLE IF EXISTS `congviec`;
CREATE TABLE IF NOT EXISTS `congviec` (
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tieude` text COLLATE utf8_unicode_ci NOT NULL,
  `Noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `Ngaytao` date NOT NULL,
  `MaDV` int(10) NOT NULL,
  `mucdocv` tinyint(4) NOT NULL,
  PRIMARY KEY (`MaCV`),
  KEY `Maphongban` (`MaDV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `congviec`
--

INSERT INTO `congviec` (`MaCV`, `Tieude`, `Noidung`, `Ngaytao`, `MaDV`, `mucdocv`) VALUES
('CV1', 'Viết báo cáo', 'Viết báo cáo đồ án học kì 1', '2022-12-08', 1, 0),
('CV10', 'Thực hiện công tác hướng nghiệp cho sinh viên', 'Thực hiện công tác hướng nghiệp cho sinh viên', '2022-12-08', 3, 1),
('CV11', 'Lập kế hoạch công tác đoàn.', 'Lập kế hoạch công tác đoàn.', '2022-12-08', 4, 1),
('CV12', 'Thực hiện tổ chức sinh hoạt chi đoàn.', 'Thực hiện tổ chức sinh hoạt chi đoàn.', '2022-12-08', 4, 0),
('CV13', 'Quản lý đoàn phí.', 'Quản lý đoàn phí.', '2022-12-08', 4, 1),
('CV2', 'Tạo database', 'Viết cơ sở dữ liệu về quản lý đội bóng WC', '2022-12-08', 1, 2),
('CV3', 'Làm ppt', 'làm ppt chủ đề ngày tết', '2022-12-08', 2, 1),
('CV4', 'Tuyển giáo viên', 'Tuyển giáo viên', '2022-12-08', 1, 2),
('CV5', 'Viết bảng theo dõi lương', 'Viết bảng theo dõi lương', '2022-12-08', 1, 1),
('CV6', 'Kiểm tra quản lý tài sản, thiết bị', 'Kiểm tra quản lý tài sản, thiết bị', '2022-12-08', 2, 1),
('CV7', 'Lưu trữ cơ sở dữ liệu và hồ sơ hiện tại', 'Lưu trữ cơ sở dữ liệu và hồ sơ hiện tại', '2022-12-08', 2, 0),
('CV8', 'Quản lý kết quả học tập của sinh viên', 'Quản lý kết quả học tập của sinh viên', '2022-12-08', 3, 1),
('CV9', 'Thực hiện trao học bổng và Quỹ hỗ trợ sinh viên', 'Thực hiện trao học bổng và Quỹ hỗ trợ sinh viên', '2022-12-08', 3, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congviec_nhanvien`
--

DROP TABLE IF EXISTS `congviec_nhanvien`;
CREATE TABLE IF NOT EXISTS `congviec_nhanvien` (
  `magiao` int(11) NOT NULL AUTO_INCREMENT,
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `NgayGiao` date NOT NULL,
  `HanDK` date NOT NULL,
  `HanTT` date DEFAULT NULL,
  `Nhanxet` text COLLATE utf8_unicode_ci,
  `diem` int(10) DEFAULT NULL,
  `Trangthai` tinyint(4) NOT NULL,
  PRIMARY KEY (`magiao`),
  KEY `MaNV` (`MaNV`),
  KEY `MaCV` (`MaCV`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `congviec_nhanvien`
--

INSERT INTO `congviec_nhanvien` (`magiao`, `MaCV`, `MaNV`, `NgayGiao`, `HanDK`, `HanTT`, `Nhanxet`, `diem`, `Trangthai`) VALUES
(1, 'CV1', 'NV2', '2022-12-08', '2022-12-10', NULL, 'ok', 9, 3),
(2, 'CV2', 'NV3', '2022-12-08', '2022-12-11', NULL, 'Đã hoàn thành', 8, 2),
(3, 'CV3', 'NV5', '2022-12-08', '2022-12-11', NULL, NULL, NULL, 0),
(4, 'CV4', 'NV2', '2022-12-08', '2022-12-12', NULL, NULL, NULL, 0),
(5, 'CV5', 'NV3', '2022-12-08', '2022-12-17', NULL, NULL, NULL, 1),
(6, 'CV6', 'NV5', '2022-12-08', '2022-12-11', NULL, NULL, NULL, 0),
(7, 'CV7', 'NV6', '2022-12-08', '2022-12-24', NULL, 'quá tốt', 10, 2),
(8, 'CV8', 'NV8', '2022-12-08', '2022-12-31', NULL, 'ok được', 7, 2),
(9, 'CV9', 'NV9', '2022-12-08', '2022-12-09', NULL, NULL, NULL, 0),
(10, 'CV10', 'NV8', '2022-12-08', '2022-12-31', NULL, NULL, NULL, 0),
(11, 'CV11', 'NV11', '2022-12-08', '2022-12-20', NULL, 'tệ', 5, 2),
(12, 'CV12', 'NV12', '2022-12-08', '2023-01-26', NULL, 'Tuyệt vời', 10, 2),
(13, 'CV13', 'NV11', '2022-12-08', '2023-01-17', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvi`
--

DROP TABLE IF EXISTS `donvi`;
CREATE TABLE IF NOT EXISTS `donvi` (
  `MaDV` int(10) NOT NULL AUTO_INCREMENT,
  `TenPhong` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` text COLLATE utf8_unicode_ci,
  `Matruongphong` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaDV`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donvi`
--

INSERT INTO `donvi` (`MaDV`, `TenPhong`, `Mota`, `Matruongphong`, `Logo`) VALUES
(0, 'HCMUE', NULL, NULL, 'Logo_HCMUE.png'),
(1, 'Phòng quản lý nhân sự', 'quản lý đơn vị và nhân viên', 'NV1', 'addlogo.jpg'),
(2, 'Phòng hành chính', 'Phòng Tổ chức hành chính là Phòng chức năng thuộc bộ máy quản lý, điều hành của bất kỳ cơ quan nào', 'NV4', 'addlogo.jpg'),
(3, 'Phòng công tác sinh viên', 'Phòng công tác sinh viên', 'NV7', 'addlogo.jpg'),
(4, 'Phòng đoàn', 'Các công tác đoàn, hội.', 'NV10', 'addlogo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hosocongviec`
--

DROP TABLE IF EXISTS `hosocongviec`;
CREATE TABLE IF NOT EXISTS `hosocongviec` (
  `mahs` int(11) NOT NULL AUTO_INCREMENT,
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `duongdan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mahs`),
  KEY `MaCV` (`MaCV`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hosocongviec`
--

INSERT INTO `hosocongviec` (`mahs`, `MaCV`, `duongdan`) VALUES
(15, 'CV1', 'CV1_test.txt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenNV` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Gt` tinyint(1) NOT NULL,
  `NgaySinh` date NOT NULL,
  `Email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `TenDN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MaQuyen` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaDV` int(10) NOT NULL,
  `Avt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Is_deleted` date DEFAULT NULL,
  `trangthai` int(5) NOT NULL,
  PRIMARY KEY (`MaNV`),
  KEY `MaPhong` (`MaDV`),
  KEY `MaQuyen` (`MaQuyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `Gt`, `NgaySinh`, `Email`, `SDT`, `DiaChi`, `TenDN`, `MatKhau`, `MaQuyen`, `MaDV`, `Avt`, `Is_deleted`, `trangthai`) VALUES
('NV0', 'ADMIN ', 0, '2002-06-18', 'macdinhthy@gmail.com', '0376865627', 'Phú Nhuận', 'admin', '$2y$10$ZOoj6n77IZz/tFL64g4J0u8c9vJA6XPsk4uS5s4LsYU9IHlVgM6Zq', '000', 0, 'admin.jpg', NULL, 1),
('NV1', 'Nhật Tân 01', 0, '2002-01-01', 'nhattan01@gmail.com', '0123456789', 'Bình Chánh, TP.HCM', 'nhattan01', '$2y$10$HY.pt/AE5pC9uVlHeQ/KOel0Q.pPKyKGJeuXud6uiLjKYSsiNzuRa', '002', 1, 'female.jpg', NULL, 1),
('NV10', 'Yến Nhi 04', 1, '1998-02-12', 'yennhi04@gmail.com', '0123456789', 'Bình Chánh, TP.HCM', 'yennhi04', '$2y$10$KwUQvwc.uYTeGkLxegd0VO/OwsNvLZWRivxBOcM4AUffI2v7B83pC', '002', 4, 'male.jpg', NULL, 1),
('NV11', 'Nhật Tân 04', 0, '2002-12-24', 'nhattan04@gmail.com', '0123456789', 'Phú Nhuận, TP.HCM', 'nhattan04', '$2y$10$1Ydt9hOme0bkK8SGnIEvLOkJZdOp8vEMc.S/Lg2JkQVStezZQLIve', '001', 4, 'female.jpg', NULL, 1),
('NV12', 'Thế Hoàng 04', 0, '2002-02-02', 'thehoang04@gmail.com', '0123456789', 'Bình Chánh, TP.HCM', 'thehoang04', '$2y$10$s..pRWUmrTH6Lrd3bu.54uLQo2YeHzyJxk8qyqx2nSWbGzYsplEUO', '001', 4, 'female.jpg', NULL, 1),
('NV2', 'Thế Hoàng 01', 0, '1999-01-01', 'thehoang01@gmail.com', '0123456789', 'Quận 12, TP.HCM', 'thehoang01', '$2y$10$SapSIjRQOOrTpAUar9dH1e5Hkg6se2KwwoXCxYmelHt2UuXy1ClrG', '001', 1, 'female.jpg', NULL, 1),
('NV3', 'Yến Nhi 01', 1, '2000-02-02', 'xelede5029@ceoshub.com', '0123456789', 'Quận 12, TP.HCM', 'yennhi01', '$2y$10$cASDui3l8urIFlp5ZA8WYuwHqVNVul8oGmH27xMZvhcaJHge0Bytq', '001', 1, 'male.jpg', NULL, 1),
('NV4', 'Nhật Tân 02', 0, '1999-01-01', 'nhattan02@gmail.com', '0123456789', 'Bình Chánh, TP.HCM', 'nhattan02', '$2y$10$/ACns1vYEV9goEHDc95jU.G72.I0bAsTQs4z75VE3Yc5LjpwYojGq', '002', 2, 'female.jpg', NULL, 1),
('NV5', 'Yến Nhi 02', 1, '2004-03-03', 'yennhi02@gmail.com', '0123456789', 'Quận 12, TP.HCM', 'yennhi02', '$2y$10$gVhPpMyWU4jlQirVu8kviuTSVBUN0UtmIXFHquB7mShPiRhspOSGG', '001', 2, 'male.jpg', NULL, 1),
('NV6', 'Thế Hoàng 02', 1, '2002-03-22', 'thehoang02@gmail.com', '0123456789', 'Bình Chánh, TP.HCM', 'thehoang02', '$2y$10$DLIT985FVj4sv/VH0Ncaj.eV0W5rIarKRbnFyFFV.gFYNdnkZyx9.', '001', 2, 'female.jpg', NULL, 1),
('NV7', 'Thế Hoàng 03', 0, '1999-03-22', 'thehoang03@gmail.com', '0123456789', 'Quận 12, TP.HCM', 'thehoang03', '$2y$10$ufyJg.nKNzUEwMZmAFHsOuVWYZnrCqhqiA8mz4P1ImsQz.eV7N8lO', '002', 3, 'female.jpg', NULL, 1),
('NV8', 'Nhật Tân 03', 0, '2001-03-12', 'nhattan03@gmail.com', '0123456789', 'Phú Nhuận, TP.HCM', 'nhattan03', '$2y$10$XahBDYrbdQpPqdtJgBJ7Oubv6XP5ElNJT6r/6fZDSIthXGyF/f6s6', '001', 3, 'female.jpg', NULL, 1),
('NV9', 'Yến Nhi 03', 1, '1998-02-22', 'yennhi03@gmail.com', '0123456789', 'Quận 12, TP.HCM', 'yennhi03', '$2y$10$YyxzhLqkdpvpR/OTU8fhIejBUPbp4RFhaCb0GDATE9knlWXHbKcjy', '001', 3, 'male.jpg', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhatkycv`
--

DROP TABLE IF EXISTS `nhatkycv`;
CREATE TABLE IF NOT EXISTS `nhatkycv` (
  `Maghi` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `NgayTao` date NOT NULL,
  `sogio` tinyint(8) DEFAULT NULL,
  `loaink` tinyint(4) NOT NULL,
  PRIMARY KEY (`Maghi`),
  KEY `MaCV` (`MaCV`),
  KEY `MaNV` (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhatkycv`
--

INSERT INTO `nhatkycv` (`Maghi`, `MaCV`, `MaNV`, `NoiDung`, `NgayTao`, `sogio`, `loaink`) VALUES
('NK0', 'CV1', 'NV1', 'Giao công việc Viết báo cáo cho Thế Hoàng 01', '2022-12-08', NULL, 1),
('NK1', 'CV1', 'NV2', 'đang làm', '2022-12-08', 5, 0),
('NK10', 'CV8', 'NV7', 'Giao công việc Quản lý kết quả học tập của sinh viên cho Nhật Tân 03', '2022-12-08', NULL, 1),
('NK11', 'CV9', 'NV7', 'Giao công việc Thực hiện trao học bổng và Quỹ hỗ trợ sinh viên cho Yến Nhi 03', '2022-12-08', NULL, 1),
('NK12', 'CV10', 'NV7', 'Giao công việc Thực hiện công tác hướng nghiệp cho sinh viên cho Nhật Tân 03', '2022-12-08', NULL, 1),
('NK13', 'CV11', 'NV10', 'Giao công việc Lập kế hoạch công tác đoàn. cho Nhật Tân 04', '2022-12-08', NULL, 1),
('NK14', 'CV12', 'NV10', 'Giao công việc Thực hiện tổ chức sinh hoạt chi đoàn. cho Thế Hoàng 04', '2022-12-08', NULL, 1),
('NK15', 'CV13', 'NV10', 'Giao công việc Quản lý đoàn phí. cho Nhật Tân 04', '2022-12-08', NULL, 1),
('NK16', 'CV1', 'NV2', 'Chuyển trạng thái -> Đã Hoàn thành (2022-12-08)', '2022-12-08', NULL, 1),
('NK17', 'CV1', 'NV1', 'Nhận xét công việc Viết báo cáo \n Điểm: 9', '2022-12-08', NULL, 1),
('NK18', 'CV2', 'NV3', 'Chuyển trạng thái -> Đã Hoàn thành (2022-12-08)', '2022-12-08', NULL, 1),
('NK19', 'CV5', 'NV3', 'Chuyển trạng thái -> Đang thực hiện', '2022-12-08', NULL, 1),
('NK2', 'CV1', 'NV2', 'Chuyển trạng thái -> Đang thực hiện', '2022-12-08', NULL, 1),
('NK20', 'CV2', 'NV1', 'Nhận xét công việc Tạo database \n Điểm: 8', '2022-12-08', NULL, 1),
('NK21', 'CV7', 'NV6', 'Chuyển trạng thái -> Đã Hoàn thành (2022-12-08)', '2022-12-08', NULL, 1),
('NK22', 'CV7', 'NV4', 'Nhận xét công việc Lưu trữ cơ sở dữ liệu và hồ sơ hiện tại \n Điểm: 10', '2022-12-08', NULL, 1),
('NK23', 'CV8', 'NV8', 'Chuyển trạng thái -> Đã Hoàn thành (2022-12-08)', '2022-12-08', NULL, 1),
('NK24', 'CV8', 'NV7', 'Nhận xét công việc Quản lý kết quả học tập của sinh viên \n Điểm: 7', '2022-12-08', NULL, 1),
('NK25', 'CV11', 'NV11', 'Chuyển trạng thái -> Đã Hoàn thành (2022-12-08)', '2022-12-08', NULL, 1),
('NK26', 'CV12', 'NV12', 'Chuyển trạng thái -> Đã Hoàn thành (2022-12-08)', '2022-12-08', NULL, 1),
('NK27', 'CV12', 'NV10', 'Nhận xét công việc Thực hiện tổ chức sinh hoạt chi đoàn. \n Điểm: 10', '2022-12-08', NULL, 1),
('NK28', 'CV11', 'NV10', 'Nhận xét công việc Lập kế hoạch công tác đoàn. \n Điểm: 5', '2022-12-08', NULL, 1),
('NK3', 'CV2', 'NV1', 'Giao công việc Tạo database cho Yến Nhi 01', '2022-12-08', NULL, 1),
('NK4', 'CV2', 'NV3', 'Chuyển trạng thái -> Đang thực hiện', '2022-12-08', NULL, 1),
('NK5', 'CV3', 'NV4', 'Giao công việc Làm ppt cho Yến Nhi 02', '2022-12-08', NULL, 1),
('NK6', 'CV4', 'NV1', 'Giao công việc Tuyển giáo viên cho Thế Hoàng 01', '2022-12-08', NULL, 1),
('NK7', 'CV5', 'NV1', 'Giao công việc Viết bảng theo dõi lương cho Yến Nhi 01', '2022-12-08', NULL, 1),
('NK8', 'CV6', 'NV4', 'Giao công việc Kiểm tra quản lý tài sản, thiết bị cho Yến Nhi 02', '2022-12-08', NULL, 1),
('NK9', 'CV7', 'NV4', 'Giao công việc Lưu trữ cơ sở dữ liệu và hồ sơ hiện tại cho Thế Hoàng 02', '2022-12-08', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

DROP TABLE IF EXISTS `phanquyen`;
CREATE TABLE IF NOT EXISTS `phanquyen` (
  `MaQuyen` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenQuyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`MaQuyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `Mota`) VALUES
('000', 'Admin', 'Quyền Quản trị hệ thống: có thể tạo đơn vị, tạo user'),
('001', 'Nhân Viên', 'Dành cho nhân viên bình thường: được quyền tạo QA, Báo cáo công việc, Nhận việc'),
('002', 'Trưởng Phòng', 'Quyền dành cho trưởng phòng: được phép tạo công việc, đánh giá công việc, chấm điểm\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qa`
--

DROP TABLE IF EXISTS `qa`;
CREATE TABLE IF NOT EXISTS `qa` (
  `MaQA` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaCV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Noidungqa` text COLLATE utf8_unicode_ci NOT NULL,
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ngayghiqa` date NOT NULL,
  PRIMARY KEY (`MaQA`),
  KEY `Macongviec` (`MaCV`),
  KEY `MaNguoiTao` (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `congviec`
--
ALTER TABLE `congviec`
  ADD CONSTRAINT `congviec_ibfk_1` FOREIGN KEY (`MaDV`) REFERENCES `donvi` (`MaDV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `congviec_nhanvien`
--
ALTER TABLE `congviec_nhanvien`
  ADD CONSTRAINT `congviec_nhanvien_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `congviec_nhanvien_ibfk_2` FOREIGN KEY (`MaCV`) REFERENCES `congviec` (`MaCV`);

--
-- Các ràng buộc cho bảng `hosocongviec`
--
ALTER TABLE `hosocongviec`
  ADD CONSTRAINT `hosocongviec_ibfk_1` FOREIGN KEY (`MaCV`) REFERENCES `congviec` (`MaCV`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`),
  ADD CONSTRAINT `nhanvien_ibfk_3` FOREIGN KEY (`MaDV`) REFERENCES `donvi` (`MaDV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhatkycv`
--
ALTER TABLE `nhatkycv`
  ADD CONSTRAINT `nhatkycv_ibfk_1` FOREIGN KEY (`MaCV`) REFERENCES `congviec` (`MaCV`),
  ADD CONSTRAINT `nhatkycv_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `qa`
--
ALTER TABLE `qa`
  ADD CONSTRAINT `qa_ibfk_1` FOREIGN KEY (`MaCV`) REFERENCES `congviec` (`MaCV`),
  ADD CONSTRAINT `qa_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
