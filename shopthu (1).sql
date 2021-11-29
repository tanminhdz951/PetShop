-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2021 at 02:00 PM
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
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `Ho` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` int(11) NOT NULL,
  `Email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `NgaySinh`, `DiaChi`) VALUES
('KH01', 'Nguyễn', 'Tiến', 'Nam', 564215225, 'nguyentien01@gmail.com', '2000-12-06', 'Hải Châu - Đà Nẵng'),
('KH02', 'Trần', 'Quyền', 'Nam', 957654226, 'tranquyen2000@gmail.com', '1998-11-18', 'Hải Lăng - Quảng Trị'),
('KH03', 'Văn Thị', 'Đào', 'Nữ', 365425585, 'trandao74@gmail.com', '2001-11-01', 'Đông Hà - Quảng Trị'),
('KH04', 'Phan Văn', 'Quyết', 'Nam', 95486254, 'quetphanvan92@gmail.com', '2003-04-09', 'Điện Bàn - Quảng Nam');

-- --------------------------------------------------------

--
-- Table structure for table `loaiphukien`
--

CREATE TABLE `loaiphukien` (
  `maLoaiPKien` varchar(11) NOT NULL,
  `LoaiPhuKien` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaiphukien`
--

INSERT INTO `loaiphukien` (`maLoaiPKien`, `LoaiPhuKien`) VALUES
('LPK01', 'Phụ kiện dành cho Chó'),
('LPK02', 'Phụ kiện dành cho Mèo'),
('LPK03', 'Phụ kiện dành cho Chim'),
('LPK04', 'Phụ kiện dành cho Cá');

-- --------------------------------------------------------

--
-- Table structure for table `loaithu`
--

CREATE TABLE `loaithu` (
  `MaLoai` varchar(11) NOT NULL,
  `TenLoai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaithu`
--

INSERT INTO `loaithu` (`MaLoai`, `TenLoai`) VALUES
('ML01', 'Chó'),
('ML02', 'Mèo'),
('ML03', 'Chim'),
('ML04', 'Ca');

-- --------------------------------------------------------

--
-- Table structure for table `loaithucan`
--

CREATE TABLE `loaithucan` (
  `MaloaiThucAn` varchar(11) NOT NULL,
  `TenLoaiThucAn` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaithucan`
--

INSERT INTO `loaithucan` (`MaloaiThucAn`, `TenLoaiThucAn`) VALUES
('LTA01', 'Thức ăn dành cho Chó'),
('LTA02', 'Thức ăn dành cho Mèo'),
('LTA03', 'Thức ăn dành cho Chim'),
('LTA04', 'Thức ăn dành cho Cá');

-- --------------------------------------------------------

--
-- Table structure for table `loaithuoc`
--

CREATE TABLE `loaithuoc` (
  `MaLoaiThuoc` varchar(11) NOT NULL,
  `TenLoaiThuoc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaithuoc`
--

INSERT INTO `loaithuoc` (`MaLoaiThuoc`, `TenLoaiThuoc`) VALUES
('MLT01', 'Thuốc chó'),
('MLT02', 'thuốc mèo'),
('MLT03', 'thuốc chim'),
('MLT04', 'thuốc cá');

-- --------------------------------------------------------

--
-- Table structure for table `mota`
--

CREATE TABLE `mota` (
  `MaMoTa` varchar(11) NOT NULL,
  `MaThu` varchar(11) NOT NULL,
  `MaThuoc` varchar(11) NOT NULL,
  `ThongTin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mota`
--

INSERT INTO `mota` (`MaMoTa`, `MaThu`, `MaThuoc`, `ThongTin`) VALUES
('MTA01', 'MTC01', 'MT01', 'trị tất cả các loại bọ chét'),
('MTA02', 'MTC02', 'MT02', 'Tẩy các loại giun sán'),
('MTA03', 'MTC03', 'MT03', 'trị tiêu chảy, khàng giọng, sả cánh'),
('MTA04', 'MTC04', 'MT04', 'Trị tất cả các loại nấm cho cá');

-- --------------------------------------------------------

--
-- Table structure for table `phukien`
--

CREATE TABLE `phukien` (
  `MaPkien` varchar(11) NOT NULL,
  `MaLoaiPKien` varchar(11) NOT NULL,
  `TenPhuKien` varchar(100) NOT NULL,
  `giaTien` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phukien`
--

INSERT INTO `phukien` (`MaPkien`, `MaLoaiPKien`, `TenPhuKien`, `giaTien`) VALUES
('PK01', 'LPK01', 'Chén ăn cho chó bằng Inox', '80.000vnđ'),
('PK02', 'LPK02', 'Roi tét đít Mèo', '30.000vnđ'),
('PK03', 'LPK03', 'Găng tay da huấn luyện chim', '100.000vnđ'),
('PK04', 'LPK04', 'Máy sục khí tạo không khí trong bể cá', '200.000vnđ');

-- --------------------------------------------------------

--
-- Table structure for table `thongtinchitiet`
--

CREATE TABLE `thongtinchitiet` (
  `MaTT` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `MaThu` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `ThongTin` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thongtinchitiet`
--

INSERT INTO `thongtinchitiet` (`MaTT`, `MaThu`, `ThongTin`) VALUES
('TT01', 'MTC01', 'Hầu hết giống chó Bichon Frise có ngoại hình nhỏ bé với chiều cao từ 23-30cm, nặng 6-11kg đối với con trưởng thành, ngoài ra Bichon Frise cũng có những con to hơn nhưng khá hiếm.\r\nCùng với vóc dáng nhỏ bé dễ thương đó chính là bộ lông trắng muốt xoăn tít toàn thân, đôi mắt và mũi của chúng đều màu đen, hai tai cụp sát bên hai má trông rất dễ thương. Những đặc điểm này khiến chó Bichon giống như một chú chó nhồi bông đồ chơi mà ai cũng muốn sở hữu.'),
('TT02', 'MTC02', 'Mèo anh lông dài màu socola\r\nĐã ngừa ve sổ giun\r\nBiết nghe lời đi vệ sinh đúng chỗ\r\nĂn cả cơm lẫn cám\r\nĐuôi hơi bị gẫy nhưng là giống lông xù nên không bị lộ'),
('TT03', 'MTC03', 'Thuộc các loài chim hót hay nhất, chim Vàng Anh còn được gọi là chim Hoàng Anh, có giọng hót thánh thót rất dễ vào lòng người.\r\nChim Vàng Anh luôn nổi bật với màu lông vàng rực. Chim mái và chim trống sẽ có ánh màu khác nhau đôi chút.'),
('TT04', 'MTC04', 'Với vóc dáng to, hơi hung dữ nên chúng sở hữu một phong thái kiêu sa, hút hồn không giống với bất kỳ loại cá cảnh nào. Vì vậy khi đặt bể cá rồng trong nhà toát lên một vẻ đẹp uy nghi, thu hút tài lộc và xua đuổi tà mai, tai họa.');

-- --------------------------------------------------------

--
-- Table structure for table `thucan`
--

CREATE TABLE `thucan` (
  `MaThucAn` varchar(11) NOT NULL,
  `MaLoaiThucAn` varchar(11) NOT NULL,
  `TenThucAn` varchar(100) NOT NULL,
  `giaTien` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thucan`
--

INSERT INTO `thucan` (`MaThucAn`, `MaLoaiThucAn`, `TenThucAn`, `giaTien`) VALUES
('TA01', 'LTA01', 'Cốm ăn nhanh đầy đủ chất dinh dưỡng - túi 500g', '160.000vnđ'),
('TA02', 'LTA02', 'CatFood-Me.o', '150.000vnđ'),
('TA03', 'LTA03', 'Cốm ăn cho chim cảnh - túi 500g', '120.000vnđ'),
('TA04', 'LTA04', 'Túi 100g thức ăn dành cho cá ', '80.000vnđ');

-- --------------------------------------------------------

--
-- Table structure for table `thucung`
--

CREATE TABLE `thucung` (
  `MaThu` varchar(11) NOT NULL,
  `MaLoai` varchar(11) NOT NULL,
  `Ten` varchar(100) NOT NULL,
  `Gia` double NOT NULL,
  `SoLuongCon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thucung`
--

INSERT INTO `thucung` (`MaThu`, `MaLoai`, `Ten`, `Gia`, `SoLuongCon`) VALUES
('MTC01', 'ML01', 'Chó Bichon Frise  ', 1500000, 10),
('MTC02', 'ML02', 'Mèo Anh lông dài', 1500000, 5),
('MTC03', 'ML03', 'Chim Vàng Anh', 1500000, 7),
('MTC04', 'ML04', 'Cá Rồng', 1500000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `thuoc`
--

CREATE TABLE `thuoc` (
  `MaThuoc` varchar(11) NOT NULL,
  `MaLoaiThuoc` varchar(11) NOT NULL,
  `TenThuoc` varchar(100) NOT NULL,
  `giaTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thuoc`
--

INSERT INTO `thuoc` (`MaThuoc`, `MaLoaiThuoc`, `TenThuoc`, `giaTien`) VALUES
('MT01', 'MLT01', 'Thuốc trị bọ chét', 1500000),
('MT02', 'MLT02', 'Thuốc tẩy giun cho mèo', 1500000),
('MT03', 'MLT03', 'Thuốc trị tiêu chảy', 1500000),
('MT04', 'MLT04', 'Thuốc trị nấm da', 1500000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `loaiphukien`
--
ALTER TABLE `loaiphukien`
  ADD PRIMARY KEY (`maLoaiPKien`);

--
-- Indexes for table `loaithu`
--
ALTER TABLE `loaithu`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Indexes for table `loaithucan`
--
ALTER TABLE `loaithucan`
  ADD PRIMARY KEY (`MaloaiThucAn`);

--
-- Indexes for table `loaithuoc`
--
ALTER TABLE `loaithuoc`
  ADD PRIMARY KEY (`MaLoaiThuoc`);

--
-- Indexes for table `mota`
--
ALTER TABLE `mota`
  ADD PRIMARY KEY (`MaMoTa`),
  ADD KEY `MaThu` (`MaThu`),
  ADD KEY `MaThuoc` (`MaThuoc`);

--
-- Indexes for table `phukien`
--
ALTER TABLE `phukien`
  ADD PRIMARY KEY (`MaPkien`),
  ADD KEY `MaLoaiPKien` (`MaLoaiPKien`);

--
-- Indexes for table `thongtinchitiet`
--
ALTER TABLE `thongtinchitiet`
  ADD PRIMARY KEY (`MaTT`);

--
-- Indexes for table `thucan`
--
ALTER TABLE `thucan`
  ADD PRIMARY KEY (`MaThucAn`),
  ADD KEY `MaLoaiThucAn` (`MaLoaiThucAn`);

--
-- Indexes for table `thucung`
--
ALTER TABLE `thucung`
  ADD PRIMARY KEY (`MaThu`),
  ADD KEY `MaLoai` (`MaLoai`);

--
-- Indexes for table `thuoc`
--
ALTER TABLE `thuoc`
  ADD PRIMARY KEY (`MaThuoc`),
  ADD KEY `MaLoaiThuoc` (`MaLoaiThuoc`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mota`
--
ALTER TABLE `mota`
  ADD CONSTRAINT `mota_ibfk_1` FOREIGN KEY (`MaThu`) REFERENCES `thucung` (`MaThu`),
  ADD CONSTRAINT `mota_ibfk_2` FOREIGN KEY (`MaThuoc`) REFERENCES `thuoc` (`MaThuoc`);

--
-- Constraints for table `phukien`
--
ALTER TABLE `phukien`
  ADD CONSTRAINT `phukien_ibfk_1` FOREIGN KEY (`MaLoaiPKien`) REFERENCES `loaiphukien` (`maLoaiPKien`);

--
-- Constraints for table `thucan`
--
ALTER TABLE `thucan`
  ADD CONSTRAINT `thucan_ibfk_1` FOREIGN KEY (`MaLoaiThucAn`) REFERENCES `loaithucan` (`MaloaiThucAn`);

--
-- Constraints for table `thucung`
--
ALTER TABLE `thucung`
  ADD CONSTRAINT `thucung_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loaithu` (`MaLoai`);

--
-- Constraints for table `thuoc`
--
ALTER TABLE `thuoc`
  ADD CONSTRAINT `thuoc_ibfk_1` FOREIGN KEY (`MaLoaiThuoc`) REFERENCES `loaithuoc` (`MaLoaiThuoc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
