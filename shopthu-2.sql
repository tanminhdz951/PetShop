-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2021 lúc 02:40 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopthu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
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
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `NgaySinh`, `DiaChi`) VALUES
('KH01', 'Nguyễn', 'Tiến', 'Nam', 564215225, 'nguyentien01@gmail.com', '2000-12-06', 'Hải Châu - Đà Nẵng'),
('KH02', 'Trần', 'Quyền', 'Nam', 957654226, 'tranquyen2000@gmail.com', '1998-11-18', 'Hải Lăng - Quảng Trị'),
('KH03', 'Văn Thị', 'Đào', 'Nữ', 365425585, 'trandao74@gmail.com', '2001-11-01', 'Đông Hà - Quảng Trị'),
('KH04', 'Phan Văn', 'Quyết', 'Nam', 95486254, 'quetphanvan92@gmail.com', '2003-04-09', 'Điện Bàn - Quảng Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaiphukien`
--

CREATE TABLE `loaiphukien` (
  `maLoaiPKien` varchar(11) NOT NULL,
  `LoaiPhuKien` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaiphukien`
--

INSERT INTO `loaiphukien` (`maLoaiPKien`, `LoaiPhuKien`) VALUES
('LPK01', 'Phụ kiện dành cho Chó'),
('LPK02', 'Phụ kiện dành cho Mèo'),
('LPK03', 'Phụ kiện dành cho Chim'),
('LPK04', 'Phụ kiện dành cho Cá');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaithu`
--

CREATE TABLE `loaithu` (
  `MaLoai` varchar(11) NOT NULL,
  `TenLoai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaithu`
--

INSERT INTO `loaithu` (`MaLoai`, `TenLoai`) VALUES
('ML01', 'Chó'),
('ML02', 'Mèo'),
('ML03', 'Chim'),
('ML04', 'Ca');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaithucan`
--

CREATE TABLE `loaithucan` (
  `MaloaiThucAn` varchar(11) NOT NULL,
  `TenLoaiThucAn` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaithucan`
--

INSERT INTO `loaithucan` (`MaloaiThucAn`, `TenLoaiThucAn`) VALUES
('LTA01', 'Thức ăn dành cho Chó'),
('LTA02', 'Thức ăn dành cho Mèo'),
('LTA03', 'Thức ăn dành cho Chim'),
('LTA04', 'Thức ăn dành cho Cá');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaithuoc`
--

CREATE TABLE `loaithuoc` (
  `MaLoaiThuoc` varchar(11) NOT NULL,
  `TenLoaiThuoc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaithuoc`
--

INSERT INTO `loaithuoc` (`MaLoaiThuoc`, `TenLoaiThuoc`) VALUES
('MLT01', 'Thuốc chó'),
('MLT02', 'thuốc mèo'),
('MLT03', 'thuốc chim'),
('MLT04', 'thuốc cá');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mota`
--

CREATE TABLE `mota` (
  `MaMoTa` varchar(11) NOT NULL,
  `MaThu` varchar(11) NOT NULL,
  `MaThuoc` varchar(11) NOT NULL,
  `ThongTin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `mota`
--

INSERT INTO `mota` (`MaMoTa`, `MaThu`, `MaThuoc`, `ThongTin`) VALUES
('MTA01', 'MTC01', 'MT01', 'trị tất cả các loại bọ chét'),
('MTA02', 'MTC02', 'MT02', 'Tẩy các loại giun sán'),
('MTA03', 'MTC03', 'MT03', 'trị tiêu chảy, khàng giọng, sả cánh'),
('MTA04', 'MTC04', 'MT04', 'Trị tất cả các loại nấm cho cá');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phukien`
--

CREATE TABLE `phukien` (
  `MaPkien` varchar(11) NOT NULL,
  `MaLoaiPKien` varchar(11) NOT NULL,
  `TenPhuKien` varchar(100) NOT NULL,
  `giaTien` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phukien`
--

INSERT INTO `phukien` (`MaPkien`, `MaLoaiPKien`, `TenPhuKien`, `giaTien`) VALUES
('PK01', 'LPK01', 'Chén ăn cho chó bằng Inox', '80.000vnđ'),
('PK02', 'LPK02', 'Roi tét đít Mèo', '30.000vnđ'),
('PK03', 'LPK03', 'Găng tay da huấn luyện chim', '100.000vnđ'),
('PK04', 'LPK04', 'Máy sục khí tạo không khí trong bể cá', '200.000vnđ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinchitiet`
--

CREATE TABLE `thongtinchitiet` (
  `MaTT` varchar(11) NOT NULL,
  `MaThu` varchar(11) NOT NULL,
  `ThongTin` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thongtinchitiet`
--

INSERT INTO `thongtinchitiet` (`MaTT`, `MaThu`, `ThongTin`) VALUES
('TT01', 'MTC01', 'Hầu hết giống chó Bichon Frise có ngoại hình nhỏ bé với chiều cao từ 23-30cm, nặng 6-11kg đối với con trưởng thành, ngoài ra Bichon Frise cũng có những con to hơn nhưng khá hiếm.\r\nCùng với vóc dáng nhỏ bé dễ thương đó chính là bộ lông trắng muốt xoăn tít toàn thân, đôi mắt và mũi của chúng đều màu đen, hai tai cụp sát bên hai má trông rất dễ thương. Những đặc điểm này khiến chó Bichon giống như một chú chó nhồi bông đồ chơi mà ai cũng muốn sở hữu.'),
('TT02', 'MTC02', 'Mèo anh lông dài màu socola\r\nĐã ngừa ve sổ giun\r\nBiết nghe lời đi vệ sinh đúng chỗ\r\nĂn cả cơm lẫn cám\r\nĐuôi hơi bị gẫy nhưng là giống lông xù nên không bị lộ'),
('TT03', 'MTC03', 'Thuộc các loài chim hót hay nhất, chim Vàng Anh còn được gọi là chim Hoàng Anh, có giọng hót thánh thót rất dễ vào lòng người.\r\nChim Vàng Anh luôn nổi bật với màu lông vàng rực. Chim mái và chim trống sẽ có ánh màu khác nhau đôi chút.'),
('TT04', 'MTC03', 'Với vóc dáng to, hơi hung dữ nên chúng sở hữu một phong thái kiêu sa, hút hồn không giống với bất kỳ loại cá cảnh nào. Vì vậy khi đặt bể cá rồng trong nhà toát lên một vẻ đẹp uy nghi, thu hút tài lộc và xua đuổi tà mai, tai họa.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thucan`
--

CREATE TABLE `thucan` (
  `MaThucAn` varchar(11) NOT NULL,
  `MaLoaiThucAn` varchar(11) NOT NULL,
  `TenThucAn` varchar(100) NOT NULL,
  `giaTien` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thucan`
--

INSERT INTO `thucan` (`MaThucAn`, `MaLoaiThucAn`, `TenThucAn`, `giaTien`) VALUES
('TA01', 'LTA01', 'Cốm ăn nhanh đầy đủ chất dinh dưỡng - túi 500g', '160.000vnđ'),
('TA02', 'LTA02', 'CatFood-Me.o', '150.000vnđ'),
('TA03', 'LTA03', 'Cốm ăn cho chim cảnh - túi 500g', '120.000vnđ'),
('TA04', 'LTA04', 'Túi 100g thức ăn dành cho cá ', '80.000vnđ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thucung`
--

CREATE TABLE `thucung` (
  `MaThu` varchar(11) NOT NULL,
  `MaLoai` varchar(11) NOT NULL,
  `Ten` varchar(100) NOT NULL,
  `Gia` double NOT NULL,
  `SoLuongCon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thucung`
--

INSERT INTO `thucung` (`MaThu`, `MaLoai`, `Ten`, `Gia`, `SoLuongCon`) VALUES
('MTC01', 'ML01', 'Chó Bichon Frise  ', 1500000, 10),
('MTC02', 'ML02', 'Mèo Anh lông dài', 1500000, 5),
('MTC03', 'ML03', 'Chim Vàng Anh', 1500000, 7),
('MTC04', 'ML04', 'Cá Rồng', 1500000, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc`
--

CREATE TABLE `thuoc` (
  `MaThuoc` varchar(11) NOT NULL,
  `MaLoaiThuoc` varchar(11) NOT NULL,
  `TenThuoc` varchar(100) NOT NULL,
  `giaTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thuoc`
--

INSERT INTO `thuoc` (`MaThuoc`, `MaLoaiThuoc`, `TenThuoc`, `giaTien`) VALUES
('MT01', 'MLT01', 'Thuốc trị bọ chét', 1500000),
('MT02', 'MLT02', 'Thuốc tẩy giun cho mèo', 1500000),
('MT03', 'MLT03', 'Thuốc trị tiêu chảy', 1500000),
('MT04', 'MLT04', 'Thuốc trị nấm da', 1500000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `loaiphukien`
--
ALTER TABLE `loaiphukien`
  ADD PRIMARY KEY (`maLoaiPKien`);

--
-- Chỉ mục cho bảng `loaithu`
--
ALTER TABLE `loaithu`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `loaithucan`
--
ALTER TABLE `loaithucan`
  ADD PRIMARY KEY (`MaloaiThucAn`);

--
-- Chỉ mục cho bảng `loaithuoc`
--
ALTER TABLE `loaithuoc`
  ADD PRIMARY KEY (`MaLoaiThuoc`);

--
-- Chỉ mục cho bảng `mota`
--
ALTER TABLE `mota`
  ADD PRIMARY KEY (`MaMoTa`),
  ADD KEY `MaThu` (`MaThu`),
  ADD KEY `MaThuoc` (`MaThuoc`);

--
-- Chỉ mục cho bảng `phukien`
--
ALTER TABLE `phukien`
  ADD PRIMARY KEY (`MaPkien`),
  ADD KEY `MaLoaiPKien` (`MaLoaiPKien`);

--
-- Chỉ mục cho bảng `thongtinchitiet`
--
ALTER TABLE `thongtinchitiet`
  ADD PRIMARY KEY (`MaTT`),
  ADD KEY `MaThu` (`MaThu`);

--
-- Chỉ mục cho bảng `thucan`
--
ALTER TABLE `thucan`
  ADD PRIMARY KEY (`MaThucAn`),
  ADD KEY `MaLoaiThucAn` (`MaLoaiThucAn`);

--
-- Chỉ mục cho bảng `thucung`
--
ALTER TABLE `thucung`
  ADD PRIMARY KEY (`MaThu`),
  ADD KEY `MaLoai` (`MaLoai`);

--
-- Chỉ mục cho bảng `thuoc`
--
ALTER TABLE `thuoc`
  ADD PRIMARY KEY (`MaThuoc`),
  ADD KEY `MaLoaiThuoc` (`MaLoaiThuoc`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `mota`
--
ALTER TABLE `mota`
  ADD CONSTRAINT `mota_ibfk_1` FOREIGN KEY (`MaThu`) REFERENCES `thucung` (`MaThu`),
  ADD CONSTRAINT `mota_ibfk_2` FOREIGN KEY (`MaThuoc`) REFERENCES `thuoc` (`MaThuoc`);

--
-- Các ràng buộc cho bảng `phukien`
--
ALTER TABLE `phukien`
  ADD CONSTRAINT `phukien_ibfk_1` FOREIGN KEY (`MaLoaiPKien`) REFERENCES `loaiphukien` (`maLoaiPKien`);

--
-- Các ràng buộc cho bảng `thongtinchitiet`
--
ALTER TABLE `thongtinchitiet`
  ADD CONSTRAINT `thongtinchitiet_ibfk_1` FOREIGN KEY (`MaThu`) REFERENCES `thucung` (`MaThu`);

--
-- Các ràng buộc cho bảng `thucan`
--
ALTER TABLE `thucan`
  ADD CONSTRAINT `thucan_ibfk_1` FOREIGN KEY (`MaLoaiThucAn`) REFERENCES `loaithucan` (`MaloaiThucAn`);

--
-- Các ràng buộc cho bảng `thucung`
--
ALTER TABLE `thucung`
  ADD CONSTRAINT `thucung_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loaithu` (`MaLoai`);

--
-- Các ràng buộc cho bảng `thuoc`
--
ALTER TABLE `thuoc`
  ADD CONSTRAINT `thuoc_ibfk_1` FOREIGN KEY (`MaLoaiThuoc`) REFERENCES `loaithuoc` (`MaLoaiThuoc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
