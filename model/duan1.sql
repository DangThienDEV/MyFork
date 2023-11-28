-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 21, 2023 lúc 08:22 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `wwwwwwww`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datphong`
--

CREATE TABLE `datphong` (
  `ID` int NOT NULL,
  `IDKhachHang` int DEFAULT NULL,
  `IDGanPhong` int DEFAULT NULL,
  `NgayCheckIn` date DEFAULT NULL,
  `NgayCheckOut` date DEFAULT NULL,
  `TongTien` decimal(10,3) DEFAULT NULL,
  `TienCoc` decimal(10,3) DEFAULT NULL,
  `TrangThaiDon` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `datphong`
--

INSERT INTO `datphong` (`ID`, `IDKhachHang`, `IDGanPhong`, `NgayCheckIn`, `NgayCheckOut`, `TongTien`, `TienCoc`, `TrangThaiDon`) VALUES
(7, 1, NULL, '2023-01-01', '2023-01-05', 375.000, 50.000, 'Confirmed'),
(8, 2, NULL, '2023-02-10', '2023-02-15', 500.000, 75.000, 'Pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ganphong`
--

CREATE TABLE `ganphong` (
  `ID` int NOT NULL,
  `IDDatPhong` int DEFAULT NULL,
  `IDPhong` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `ganphong`
--

INSERT INTO `ganphong` (`ID`, `IDDatPhong`, `IDPhong`) VALUES
(1, 7, 1),
(2, 8, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `ID` int NOT NULL,
  `TenKhachHang` varchar(225) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChiNha` text,
  `AnhXacNhan` text,
  `Email` varchar(225) DEFAULT NULL,
  `TenDangNhap` varchar(225) DEFAULT NULL,
  `MatKhau` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`ID`, `TenKhachHang`, `NgaySinh`, `DiaChiNha`, `AnhXacNhan`, `Email`, `TenDangNhap`, `MatKhau`) VALUES
(1, 'John Doe', '1990-01-15', '123 Đường Chính, Thành Phố A', 'duong_dan_anh.jpg', 'john.doe@example.com', 'john_doe', 'password123'),
(2, 'Jane Smith', '1985-05-20', '456 Đường Sồi, Thị Xã B', 'duong_dan_anh.jpg', 'jane.smith@example.com', 'jane_smith', 'pass456'),
(3, 'John Doe', '1990-01-15', '123 Đường Chính, Thành Phố A', 'duong_dan_anh.jpg', 'john.doe@example.com', 'john_doe', 'password123'),
(4, 'Jane Smith', '1985-05-20', '456 Đường Sồi, Thị Xã B', 'duong_dan_anh.jpg', 'jane.smith@example.com', 'jane_smith', 'pass456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaiphong`
--

CREATE TABLE `loaiphong` (
  `ID` int NOT NULL,
  `Ten` varchar(225) DEFAULT NULL,
  `MoTa` text,
  `GiaPhongChung` decimal(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `loaiphong`
--

INSERT INTO `loaiphong` (`ID`, `Ten`, `MoTa`, `GiaPhongChung`) VALUES
(1, 'Phòng Đơn', 'Một phòng đơn ấm cúng với tầm nhìn tuyệt vời', 75.000),
(2, 'Phòng Đôi', 'Phòng rộng rãi cho hai khách', 100.000),
(3, 'Suite', 'Suite sang trọng với tiện nghi cao cấp', 150.000),
(4, 'Phòng Đơn', 'Một phòng đơn ấm cúng với tầm nhìn tuyệt vời', 75.000),
(5, 'Phòng Đôi', 'Phòng rộng rãi cho hai khách', 100.000),
(6, 'Suite', 'Suite sang trọng với tiện nghi cao cấp', 150.000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `ID` int NOT NULL,
  `TenPhong` varchar(225) DEFAULT NULL,
  `ViTriPhong` varchar(225) DEFAULT NULL,
  `TrangThaiPhong` varchar(50) DEFAULT NULL,
  `AnhPhong` text,
  `ID_LoaiPhong` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`ID`, `TenPhong`, `ViTriPhong`, `TrangThaiPhong`, `AnhPhong`, `ID_LoaiPhong`) VALUES
(1, 'Phòng 101', 'Tầng 1', 'Còn trống', 'duong_dan_anh1.jpg', 1),
(2, 'Phòng 202', 'Tầng 2', 'Đang sử dụng', 'duong_dan_anh2.jpg', 2),
(3, 'Suite A', 'Tầng 3', 'Đã đặt trước', 'duong_dan_anh3.jpg', 3),
(4, 'Phòng 101', 'Tầng 1', 'Còn trống', 'duong_dan_anh1.jpg', 1),
(5, 'Phòng 202', 'Tầng 2', 'Đang sử dụng', 'duong_dan_anh2.jpg', 2),
(6, 'Suite A', 'Tầng 3', 'Đã đặt trước', 'duong_dan_anh3.jpg', 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `datphong`
--
ALTER TABLE `datphong`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDGanPhong` (`IDGanPhong`);

--
-- Chỉ mục cho bảng `ganphong`
--
ALTER TABLE `ganphong`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDDatPhong` (`IDDatPhong`),
  ADD KEY `IDPhong` (`IDPhong`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `loaiphong`
--
ALTER TABLE `loaiphong`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_LoaiPhong` (`ID_LoaiPhong`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `datphong`
--
ALTER TABLE `datphong`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT cho bảng `ganphong`
--
ALTER TABLE `ganphong`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT cho bảng `loaiphong`
--
ALTER TABLE `loaiphong`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `phong`
--
ALTER TABLE `phong`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `datphong`
--
ALTER TABLE `datphong`
  ADD CONSTRAINT `datphong_ibfk_1` FOREIGN KEY (`IDGanPhong`) REFERENCES `ganphong` (`ID`);

--
-- Các ràng buộc cho bảng `ganphong`
--
ALTER TABLE `ganphong`
  ADD CONSTRAINT `ganphong_ibfk_1` FOREIGN KEY (`IDDatPhong`) REFERENCES `datphong` (`ID`),
  ADD CONSTRAINT `ganphong_ibfk_2` FOREIGN KEY (`IDPhong`) REFERENCES `phong` (`ID`);

--
-- Các ràng buộc cho bảng `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `phong_ibfk_1` FOREIGN KEY (`ID_LoaiPhong`) REFERENCES `loaiphong` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
