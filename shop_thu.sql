-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 05:53 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopthu`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` varchar(11) NOT NULL,
  `MaSP` varchar(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
('HD01', 'SP01', 3, 3000000),
('HD01', 'SP05', 2, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `maDM` varchar(11) NOT NULL,
  `tenDM` varchar(100) NOT NULL,
  `mota` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`maDM`, `tenDM`, `mota`) VALUES
('DM01', 'Thú cưng', NULL),
('DM02', 'Phụ kiện', NULL),
('DM03', 'Thức ăn', NULL),
('DM04', 'Thuốc', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh`
--

CREATE TABLE `hinhanh` (
  `id` int(11) NOT NULL,
  `HinhAnh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hinhanh`
--

INSERT INTO `hinhanh` (`id`, `HinhAnh`) VALUES
(1, 'husky.jpg'),
(2, 'meo.jpg'),
(3, 'vetcanh.jpg'),
(4, 'carong.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` varchar(11) NOT NULL,
  `MaKH` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` datetime NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `PhuongThucTT` varchar(20) NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaKH`, `NgayLap`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
('HD01', 'KH01', '2021-12-04 17:45:43', '0564215225', 'Đông Hà - Quảng Trị', 'Tiền mặt', 3000000, 'Đã giao hàng'),
('HD02', 'KH01', '2021-12-04 17:49:45', '0365425585', 'Đông Hà - Quảng Trị', 'Tiền mặt', 500000, 'Đã giao hàng');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaKH` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` int(11) NOT NULL,
  `Email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MaQuyen` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`MaKH`, `HoTen`, `GioiTinh`, `SDT`, `Email`, `NgaySinh`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`) VALUES
('KH01', 'Văn Đức', 'Nam', 564215225, 'vanduc2001@gmail.com', '2001-12-12', 'Đồng Hà - Quảng Trị', 'vanduc2001', '123456', 'MQ01'),
('KH02', 'Trần Hồng Linh', 'Nữ', 957654226, 'linhtran@gmail.com', '1999-02-09', 'Đồng Hới - Quảng Bình', 'administrator', '123456', 'MQ02');

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TenPhanQuyen` varchar(20) NOT NULL,
  `ChiTietQuyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenPhanQuyen`, `ChiTietQuyen`) VALUES
('MQ01', 'Người Dùng', 'NULL'),
('MQ02', 'Admin', 'Quản lí');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` varchar(11) NOT NULL,
  `MaTL` varchar(11) NOT NULL,
  `TenSP` varchar(100) NOT NULL,
  `Mota` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaTL`, `TenSP`, `Mota`) VALUES
('SP01', 'TL01', 'Chó Husky', NULL),
('SP02', 'TL02', 'Mèo Mĩ Lông Ngắn', NULL),
('SP03', 'TL03', 'Vẹt Cảnh', NULL),
('SP04', 'TL04', 'Cá Rồng', NULL),
('SP05', 'TL05', 'Thiết bị huấn luyện chó có kích điện', NULL),
('SP06', 'TL06', 'Gậy tét mông mèo mini 15cm', NULL),
('SP07', 'TL07', 'Găng tay và còi huấn luyện chim', NULL),
('SP08', 'TL08', 'Máy sục khí tạo bọt bể cá cảnh', NULL),
('SP09', 'TL09', 'Cốm ăn nhanh dành riêng cho chó', NULL),
('SP10', 'TL10', 'Sữa béo dinh dưỡng cho mèo ', NULL),
('SP11', 'TL11', 'Cốm bột mì cho chim', NULL),
('SP12', 'TL12', 'Bột cá cảnh siêu dinh dưỡng', NULL),
('SP13', 'TL13', 'Thuốc trị mận dành cho chó', NULL),
('SP14', 'TL14', 'Thuốc trị đau bụng dành riêng cho mèo', NULL),
('SP15', 'TL15', 'Thuốc trị nấm cá', NULL),
('SP16', 'TL16', 'Thuốc kháng sinh dành cho chim cảnh', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `MaTL` varchar(11) NOT NULL,
  `MaDM` varchar(11) NOT NULL,
  `TenTL` varchar(100) NOT NULL,
  `Mota` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`MaTL`, `MaDM`, `TenTL`, `Mota`) VALUES
('TL01', 'DM01', 'Chó', NULL),
('TL02', 'DM01', 'Mèo', NULL),
('TL03', 'DM01', 'Chim', NULL),
('TL04', 'DM04', 'Cá', NULL),
('TL05', 'DM02', 'Phụ kiện dành cho chó', NULL),
('TL06', 'DM02', 'Phụ kiện dành cho mèo', NULL),
('TL07', 'DM02', 'Phụ kiện dành cho chim cảnh', NULL),
('TL08', 'DM02', 'Phụ kiện dành cho cá cảnh', NULL),
('TL09', 'DM03', 'Thức ăn dành cho chó', NULL),
('TL10', 'DM03', 'Thức ăn dành cho mèo', NULL),
('TL11', 'DM03', 'Thức ăn dành cho chim cảnh', NULL),
('TL12', 'DM03', 'Thức ăn dành cho cá cảnh', NULL),
('TL13', 'DM04', 'Thuốc trị bệnh dành cho chó', NULL),
('TL14', 'DM04', 'Thuốc trị bệnh dành cho mèo', NULL),
('TL15', 'DM04', 'Thuốc trị bệnh dành cho cá cảnh', NULL),
('TL16', 'DM04', 'Thuốc trị bệnh dành cho chim', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`maDM`);

--
-- Indexes for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaKH`),
  ADD KEY `MaQuyen` (`MaQuyen`);

--
-- Indexes for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaTL` (`MaTL`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`MaTL`),
  ADD KEY `MaDM` (`MaDM`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `nguoidung` (`MaKH`);

--
-- Constraints for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaTL`) REFERENCES `theloai` (`MaTL`);

--
-- Constraints for table `theloai`
--
ALTER TABLE `theloai`
  ADD CONSTRAINT `theloai_ibfk_1` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`maDM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
