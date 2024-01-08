-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 08, 2024 at 02:19 PM
-- Server version: 8.0.34-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `datve`
--

CREATE TABLE `datve` (
  `id` int NOT NULL,
  `idnguoidung` int NOT NULL,
  `idvetour` int NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `soluong` int NOT NULL,
  `gia` int NOT NULL,
  `thanhtien` int NOT NULL,
  `trangthai` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `datve`
--

INSERT INTO `datve` (`id`, `idnguoidung`, `idvetour`, `sdt`, `soluong`, `gia`, `thanhtien`, `trangthai`) VALUES
(1, 2, 2, '03333090033', 2, 5000000, 10000000, 0),
(2, 4, 7, '03333090032', 1, 2000000, 2000000, 1),
(3, 5, 13, '03333090034', 3, 1500000, 4500000, 0),
(5, 4, 11, '03333090035', 1, 2000000, 2000000, 1),
(6, 2, 1, '03333090036', 2, 6000000, 12000000, 0),
(8, 2, 1, '03333090033', 3, 6000000, 18000000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `loaitour`
--

CREATE TABLE `loaitour` (
  `id` int NOT NULL,
  `tenloaitour` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `trangthai` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `loaitour`
--

INSERT INTO `loaitour` (`id`, `tenloaitour`, `hinhanh`, `trangthai`) VALUES
(1, 'Khám phá', 'icon-1.png', 1),
(2, 'Di tí cổ', 'icon-3.png', 1),
(3, 'Địa điểm cắm trại', 'icon-4.png', 1),
(4, 'Thiên nhiên', 'icon-2.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int NOT NULL,
  `tendangnhap` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `loaiquyen` varchar(255) NOT NULL,
  `trangthai` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `tendangnhap`, `matkhau`, `loaiquyen`, `trangthai`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'admin', 1),
(2, 'user', '202cb962ac59075b964b07152d234b70', 'khach', 1),
(4, 'duy', '202cb962ac59075b964b07152d234b70', 'khach', 1),
(5, 'cuong', '202cb962ac59075b964b07152d234b70', 'khach', 1),
(6, 'dang', '202cb962ac59075b964b07152d234b70', 'admin', 0),
(8, 'huy', '202cb962ac59075b964b07152d234b70', 'admin', 1),
(9, 'nhi', '202cb962ac59075b964b07152d234b70', 'khach', 1),
(13, 'an', '202cb962ac59075b964b07152d234b70', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vetour`
--

CREATE TABLE `vetour` (
  `id` int NOT NULL,
  `tentour` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `thoigian` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `gia` int NOT NULL,
  `trangthai` int NOT NULL DEFAULT '1',
  `idloaitour` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `vetour`
--

INSERT INTO `vetour` (`id`, `tentour`, `mota`, `thoigian`, `hinhanh`, `gia`, `trangthai`, `idloaitour`) VALUES
(1, 'Khám phá vòng cung Đông Bắc', 'Tour khám phá vòng cung Đông Bắc là một hành trình khám phá vẻ đẹp hùng vĩ của núi rừng Đông Bắc Việt Nam. Tour sẽ đưa du khách đến với những địa danh nổi tiếng như: Cao Bằng Khu di tích Pác Bó Ba Bể Động Puông Hà Giang', '5 ngày 5 đêm', 'khampha1.jpg', 6000000, 1, 1),
(2, 'Khám phá Đà Nẵng - Hội An - Huế', 'Tour khám phá Đà Nẵng - Hội An - Huế là một hành trình khám phá vẻ đẹp của miền Trung Việt Nam. Tour sẽ đưa du khách đến với những địa danh nổi tiếng.', '4 ngày 3 đêm', 'khampha2.jpg', 5000000, 1, 1),
(3, 'Khám phá Phú Quốc', 'Tour khám phá Phú Quốc là một hành trình khám phá vẻ đẹp của hòn đảo ngọc Phú Quốc. Tour sẽ đưa du khách đến với những địa danh nổi tiếng: VinWonders Phú Quốc, Vinpearl Safari Phú Quốc, Bãi Sao', '3 ngày 2 đêm', 'khampha3.jpg', 3500000, 1, 1),
(4, 'Khám phá miền Tây', 'Tour khám phá miền Tây là một hành trình khám phá vẻ đẹp của miền sông nước Nam Bộ. Tour sẽ đưa du khách đến với những địa danh nổi tiếng như: Cần thơ, Châu đốc', '2 ngày 1 đêm', 'khampha4.jpg', 2000000, 1, 1),
(5, 'Khám phá Sapa', 'Tour khám phá Sapa là một hành trình khám phá vẻ đẹp của thị trấn sương mù Sapa. Tour sẽ đưa du khách đến với những địa danh nổi tiếng như: Bản cát cát, Hàm rồng, Đỉnh Fansipan', '3 ngày 2 đêm', 'khampha5.jpg', 3000000, 1, 1),
(6, 'Di tích Cố đô Huế', 'Tour di tích Cố đô Huế là một hành trình khám phá vẻ đẹp của một trong những di sản văn hóa thế giới của Việt Nam. Tour sẽ đưa du khách đến với những địa danh nổi tiếng như: Đại nội Huế, Chùa thiên mụ, Lăng minh mạng.', '2 ngày 1 đêm', 'ditich1.jpg', 2500000, 1, 2),
(7, 'Di tích Mỹ Sơn', 'Tour khám phá di tích Mỹ Sơn là một hành trình khám phá vẻ đẹp của một trong những di sản văn hóa thế giới của Việt Nam. Tour sẽ đưa du khách đến với những địa danh nổi tiếng như: Thánh địa Mỹ Sơn, Núi Linh Ứng, Tháp chàm Pô Nagar', '2 ngày 1 đêm', 'ditich2.jpg', 2000000, 1, 2),
(8, 'Di tích Tràng An - Bái Đính', 'Tour di tích Tràng An - Bái Đính là một hành trình khám phá vẻ đẹp của một trong những khu du lịch sinh thái nổi tiếng nhất ở Việt Nam như: Quần thể danh thắng Tràng An, Chùa Bái Đính, Động Thiên Hương', '2 ngày 1 đêm', 'ditich3.jpg', 2200000, 1, 2),
(9, 'Di tích Cổ Loa', 'Tour khám phá di tích Cổ Loa là một hành trình khám phá vẻ đẹp của một trong những kinh đô cổ nhất ở Việt Nam như: Thành Cổ Loa, Đền Thượng', '1 ngày 1 đêm', 'ditich4.jpg', 1500000, 1, 2),
(10, 'Di tích Cồn Sơn - Kiếp Bạc', 'Tour khám phá di tích Côn Sơn - Kiếp Bạc là một hành trình khám phá vẻ đẹp của một trong những di tích lịch sử văn hóa nổi tiếng ở Việt Nam.', '1 ngày 1 đêm', 'ditich5.jpg', 1200000, 1, 2),
(11, 'Cắm trại núi Tà Năng - Phan Dũng', 'Tour cắm trại núi Tà Năng - Phan Dũng là một hành trình khám phá vẻ đẹp hoang sơ của vùng đất giáp ranh giữa hai tỉnh Lâm Đồng và Bình Thuận.', '2 ngày 1 đêm', 'camtrai1.jpg', 2000000, 1, 3),
(12, 'Cắm trại núi Nam Cát Tiên', 'Tour cắm trại rừng Nam Cát Tiên là một hành trình khám phá vẻ đẹp hoang dã của khu rừng nguyên sinh nổi tiếng ở miền Nam Việt Nam.', '2 ngày 1 đêm', 'camtrai2.jpg', 1800000, 1, 3),
(13, 'Cắm trại núi hồ Trị An', 'Tour cắm trại hồ Trị An là một hành trình khám phá vẻ đẹp thơ mộng của hồ nước nhân tạo lớn nhất ở miền Nam Việt Nam.', '2 ngày 1 đêm', 'camtrai3.jpg', 1500000, 1, 3),
(14, 'Cắm trại biển Phú Quốc', 'Tour cắm trại biển Phú Quốc là một hành trình khám phá vẻ đẹp hoang sơ của hòn đảo ngọc Phú Quốc.', '2 ngày 1 đêm', 'camtrai4.jpg', 1200000, 1, 3),
(15, 'Cắm trại rừng Cúc Phương', 'Tour cắm trại rừng Cúc Phương là một hành trình khám phá vẻ đẹp của khu rừng nguyên sinh nổi tiếng ở miền Bắc Việt Nam. ', '2 ngày 1 đêm', 'camtrai5.jpg', 1700000, 1, 3),
(16, 'Tour ngắm bình minh trên đỉnh Fansipan', 'Đỉnh Fansipan là nóc nhà Đông Dương, nằm ở độ cao 3.143m so với mực nước biển. Đứng trên đỉnh Fansipan, du khách có thể ngắm nhìn toàn cảnh núi rừng Tây Bắc hùng vĩ, thơ mộng.', '2 ngày 1 đêm', 'thiennhien1.jpg', 3000000, 1, 4),
(17, 'Tour khám phá Vịnh Hạ Long', 'Vịnh Hạ Long là một trong những kỳ quan thiên nhiên thế giới. Vịnh Hạ Long có hàng nghìn hòn đảo lớn nhỏ, được phủ xanh bởi những cánh rừng nguyên sinh. ', '3 ngày 2 đêm', 'thiennhien2.jpg', 4500000, 1, 4),
(18, 'Tour trekking Tà Năng - Phan Dũng', 'Tà Năng - Phan Dũng là một cung đường trekking nổi tiếng ở Việt Nam. Cung đường này dài khoảng 50km, xuyên qua những cánh rừng nguyên sinh, cao nguyên đá tai mèo,... ', '2 ngày 1 đêm', 'thiennhien3.jpg', 2500000, 1, 4),
(19, 'Tour du lịch Phú Quốc', 'Phú Quốc là hòn đảo lớn nhất Việt Nam. Phú Quốc có nhiều bãi biển đẹp, hoang sơ như Bãi Sao, Bãi Dài,... Du khách có thể tham gia các hoạt động như tắm biển, lặn biển ngắm san hô, tham quan vườn tiêu,...', '3 ngày 2 đêm', 'thiennhien4.jpg', 4000000, 1, 4),
(20, 'Tour du lịch Đà Lạt', 'Đà Lạt là thành phố ngàn hoa, được mệnh danh là \"thành phố mù sương\". Đà Lạt có khí hậu mát mẻ quanh năm, là nơi lý tưởng để du khách nghỉ dưỡng, tham quan.', '3 ngày 2 đêm', 'thiennhien5.jpg', 3500000, 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datve`
--
ALTER TABLE `datve`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idnguoidung` (`idnguoidung`),
  ADD KEY `idvetour` (`idvetour`);

--
-- Indexes for table `loaitour`
--
ALTER TABLE `loaitour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vetour`
--
ALTER TABLE `vetour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idloaitour` (`idloaitour`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datve`
--
ALTER TABLE `datve`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `loaitour`
--
ALTER TABLE `loaitour`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vetour`
--
ALTER TABLE `vetour`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `datve`
--
ALTER TABLE `datve`
  ADD CONSTRAINT `datve_ibfk_1` FOREIGN KEY (`idvetour`) REFERENCES `vetour` (`id`),
  ADD CONSTRAINT `datve_ibfk_2` FOREIGN KEY (`idnguoidung`) REFERENCES `nguoidung` (`id`);

--
-- Constraints for table `vetour`
--
ALTER TABLE `vetour`
  ADD CONSTRAINT `vetour_ibfk_1` FOREIGN KEY (`idloaitour`) REFERENCES `loaitour` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
