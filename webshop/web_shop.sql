-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 03, 2024 lúc 06:18 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `HoTen` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `permission` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`ID`, `HoTen`, `TaiKhoan`, `MatKhau`, `permission`) VALUES
(1, 'Admin', 'admin', '$2y$10$haimuoihaihaimuoihai2ukcypX1XdQZIURgfT7XvDfiDqBy87Hom', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_hoa_don`
--

CREATE TABLE `chi_tiet_hoa_don` (
  `id` int(11) NOT NULL,
  `MaHoa` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `ma_hoa_don` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='chi_tiet_hoa_don';

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_hoa_don`
--

INSERT INTO `chi_tiet_hoa_don` (`id`, `MaHoa`, `so_luong`, `ma_hoa_don`) VALUES
(11, 75, 1, 8),
(21, 75, 1, 15),
(23, 20, 2, 17),
(46, 20, 1, 36),
(47, 67, 1, 36);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `title_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keywords_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `google_map` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) NOT NULL,
  `favicon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `title_website`, `description_website`, `keywords_website`, `phone_number`, `email`, `address`, `google_map`, `logo`, `favicon`) VALUES
(1, 'Website Shop', 'Description website shop', 'shop đồ công nghệ', '(0987) 654 321', 'buuchinhvienthongvn@gmail.com', 'Hà Nội, Việt Nam', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.9094411754254!2d105.78803787435528!3d21.036309187521013!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab362e6ab7e5%3A0x68341d3d4d52dcec!2zY-G6p3UgZ2nhuqV5LCBow6AgbuG7mWk!5e0!3m2!1svi!2s!4v1709438113451!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'logo.jpg', 'logo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa`
--

CREATE TABLE `hoa` (
  `MaHoa` int(11) NOT NULL,
  `TenHoa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenHoa_URL` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` double NOT NULL,
  `GiaKhuyenMai` double NOT NULL DEFAULT 200000,
  `ThanhPhan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `ThoiGian` date DEFAULT NULL,
  `SoLuongSP` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa`
--

INSERT INTO `hoa` (`MaHoa`, `TenHoa`, `TenHoa_URL`, `Gia`, `GiaKhuyenMai`, `ThanhPhan`, `NoiDung`, `Hinh`, `MaLoai`, `ThoiGian`, `SoLuongSP`) VALUES
(20, 'Kệ treo tường đơn', 'may-man', 80000, 77000, 'Kích thước: 60 x 20 cm (DxR)\r\nChất liệu: Gỗ MDF Nhập khẩu\r\nMàu sắc: Trắng\r\nXuất xứ: Việt Nam', 'Bạn đang cần một kệ treo tường nhỏ nhỏ, xinh xinh, màu sắc thanh lịch. Thì kệ treo tường đơn chính là sự lựa chọn phù hợp cho bạn, có thêm không gian để đồ, thêm một không gian decor mình thích, mà không chiếm diện tích gì nhiều.\r\n\r\nKệ treo tường với kiểu dáng đơn giản màu sắc thanh lịch, dùng để trang trí, tạo điểm nhấn cho không gian nhà của bạn thêm phần xinh xắn.\r\n\r\nMàu sắc tươi tắn, tạo điểm nhấn và góp phần cho bức tường trở nên hiện đại.\r\nThiết kế đơn giản nhưng sắc nét,  hiện đại, giúp trang trí nhà thêm ấn tượng mà vẫn để đồ hiệu quả, tiết kiệm diện tích\r\nChất liệu: Gỗ MDF Nhập khẩu, phủ Melamin bóng mịn, bền màu\r\nMàu sắc: trắng\r\nCách lắp đặt: Lắp đặt dễ dàng\r\nPhụ kiện: có phụ kiện và giấy hướng dẫn lắp đặt kèm theo\r\n', '2.jpg', 5, '2024-03-03', 775),
(67, 'Kệ trang trí Chữ A', 'gan-ket-yeu-thuong', 1800000, 1700000, 'Kích thước: 60 x 30 x 120 cm (DxRxC)\r\nChất liệu: Gỗ thông nhập khẩu NewZealand + Kệ gỗ MDF Cao cấp\r\n', 'Kệ trưng bày hình chữ A là thiết kế đơn giản kiểu bậc thang chắc chắn, màu sắc trang nhã , phù hợp với nhiều sản phẩm hàng hóa. được sản xuất từ gỗ công nghiệp chất lượng cao. Chất liệu gỗ đã qua xử lý chống mối mọt, ẩm mốc, cong vênh, có khả năng chịu lực tốt.', '3.jpg', 5, '2024-03-03', 554),
(75, 'Kệ trang trí Chữ V', 'give-love', 2800000, 2650000, 'Kích thước: 180 x 40 x 200 cm (DxRxC)\r\nChất liệu: Khung sắt sơn hoàn thiện, đợt MDF Cao cấp\r\nMàu sắc', 'Kệ trang trí là sản phẩm nội thất không thể thiếu đối với mọi không gian.Nó không chỉ đơn giản là vật trang trí mà nó còn giúp bạn bày biện đồ một cách  khoa học giúp bạn sắp xếp những đồ trang trí ngăn nắp làm cho không gian bạn thêm đẹp.Kệ được thiết kế theo phong cách hiện đại mới mẻ, màu sắc sắc hài hòa có thể đặt được ở nhiều không gian căn hộ, ngồi nha, cửa hàng ,…hoặc bạn có thể dung để ngăn khu vực chức năng.', '4.jpg', 5, '2024-03-03', 434),
(78, 'Kệ gỗ Gương 03 Tầng Đẹp', 'ke-go-guong-03-tang-dep', 1750000, 1700000, 'Kích thước: 43x36x164cm (DxRxC)\r\nChất liệu: Gỗ thông nhập khẩu NewZealand\r\nMàu sắc: Màu gỗ tự nhiên,', '– Gương soi là một vật dụng không thể thiếu trong mỗi gia đình và một chiếc gương tốt sẽ góp phần giúp ta dễ dàng chăm chút vẻ bề ngoài của mình hơn, để mỗi bước chân của chúng ta đều tràn đầy tự tin trên con đường mình đã chọn. Nếu cần một chiếc gương tốt, thì kệ gương 3 tầng chính là giải pháp tốt và hữu hiệu.\r\n\r\n \r\n\r\n\r\n\r\n– Kệ gương 3 tầng, là sản phẩm được xây dựng và phát triển nhiều năm liền, không chỉ thỏa mãn nhu cầu thiết yếu của khách hàng, kệ gương 3 tầng còn được đầu tư về mặt tiết kế sao cho mộc mạc, tự nhiên nhưng không kém phần sang trọng. Kệ gương 3 tầng có thể phụ hợp với nhiều phong cách nội thất khác nhau, hòa hợp mà không lạc lõng trong ngôi nhà.\r\n\r\n \r\n\r\n\r\n\r\n \r\n\r\n– Từng đường nét, chi tiết của kệ gương 3 tầng đều được gia công tỉ mỉ, không khuyết điểm. Thời gian dài đầu tư và thiết kế lầu dài, dây truyền sản xuất tiên tiến giúp chiếc kệ gương 3 tầng đạt được tiêu chuẩn xuất khẩu quốc tế, hàng nội thất chính hãng cao cấp, thể hiện sự sang trọng và đẳng cấp trong mua sắm.\r\n\r\n\r\n\r\n \r\n\r\n– Được làm từ gỗ thông nhập khẩu Newzealand kệ gương soi toàn thân có được chất lượng và độ bền vô cùng cao, sử dụng được trong nhiều môi trường khác nhau. Nguyên liệu hoàn toàn từ thiên nhiêu, kệ gương soi toàn thân an toàn với người trẻ em, người lớn tuổi và phụ nữ mang thai. Không mang tính độc hại như nhiều tủ nhựa, inox kém chất lượng trên thị trường.\r\n\r\n\r\n\r\n– Kệ gương 3 tầng do được làm từ nguyên liệu cao cấp, qua xử lý chọn lọc, tủ rất dễ dàng vệ sinh và lau chùi. Không bị bám bẩn, không bị ẩm, không bị mốc, luôn đảm bảo được điều kiện sử dụng như lần đầu tiền.\r\n– Kệ gương 3 tầng vừa tiện dụng vừa đa năng, là vật phẩm cần thiết trong mỗi gia đình, là quà tặng ý nghĩa cho người thân và bạn bè, là hạnh phúc khi được nhận, là niềm vui khi trao tay.', 'kệ gỗ.jpg', 5, '2024-03-03', 333),
(79, 'Kệ trang trí tường', 'ke-trang-tri-tuong', 950000, 899000, 'Kích thước: 50 x 20x 80 cm (DxRxC)\r\nChất liệu:  Khung sắt sơn hoàn thiện, đợt MDF Cao cấp\r\nMàu sắc: ', 'Kệ trang trí là sản phẩm nội thất không thể thiếu đối với mọi không gian.Nó không chỉ đơn giản là vật trang trí mà nó còn giúp bạn bày biện đồ một cách  khoa học giúp bạn sắp xếp những đồ trang trí ngăn nắp làm cho không gian bạn thêm đẹp.Kệ được thiết kế theo phong cách hiện đại mới mẻ, màu sắc sắc hài hòa có thể đặt được ở nhiều không gian căn hộ, ngồi nha, cửa hàng ,…hoặc bạn có thể dung để ngăn khu vực chức năng.\r\n\r\n\r\n\r\nKệ trang trí tường được gia công tỉ mỉ đem lại độ thẩm mỷ cao, tô điểm cho không gian sinh hoạt của bạn thêm sinh động bớt phần đơn điệu.\r\n\r\n* Kệ trang trí tường đa dạng về kích thước bạn có thể đặt theo kích thước theo yêu cầu cho #Shopdecor\r\n* Liên hệ trực tiếp qua hotline:085 8.523.523', '5.jpg', 5, '2024-03-03', 565),
(80, 'Giường hình ngôi nhà cho bé', 'giuong-hinh-ngoi-nha-cho-be', 2500000, 2000000, 'Kích thước:   200 x 120 x 175cm  (DxRxC)\r\nChất liệu: Gỗ thông nhập khẩu NewZealand\r\nMàu sắc: Màu gỗ ', 'Giường ngôi nhà cho bé của shopdecor có kiễu dáng như một ngôi nhà thu nhỏ, độc đáo và thích thú đối với trẻ nhỏ. Việc trẻ em có một không gian riêng danh cho mình, sẽ tạo được sự hứng khởi, vui vẽ và yêu thích chiếc giường nhỏ xinh của mình trước mỗi lúc đi ngủ.\r\n\r\n+ Ưu điểm:\r\n\r\n* Rất gọn gàng, không chiếm nhiều không gian và giá lại rất phải chăng. Phù hợp ngay cả với các bạn nữ ở trọ có diện tích phòng và chi phí eo hẹp cũng có thể sắm ngay cho bé mẫu giường rất tiện dụng này.\r\n\r\n* Giường được làm bằng gỗ thông khối nhập khẩu đã được sấy xử lí theo tiêu chuẩn châu Âu chống biến dạng, cong vênh.\r\n\r\n* Tháo ráp thông minh theo chuẩn châu Âu giúp ba mẹ và bé có thể cùng tham gia lắp đặt dễ dàng cùng bộ phụ kiện đến 3 dụng cụ tháo lắp mà shop gửi kèm\r\n\r\n* Khi gia công, shop đã mài tròn các cạnh để đảm bảo an toàn hơn cho bé khi có sự cố va đập.', 'giường.jpg', 2, '2024-03-03', 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `ma_hoa_don` int(11) NOT NULL,
  `ma_khach_hang` int(11) NOT NULL,
  `ngay_dat` datetime NOT NULL,
  `trang_thai` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tong_thanh_tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`ma_hoa_don`, `ma_khach_hang`, `ngay_dat`, `trang_thai`, `tong_thanh_tien`) VALUES
(3, 57, '2018-01-05 21:08:14', 'Đã xử lý', 250000),
(4, 58, '2018-01-06 21:23:30', 'Đã xử lý', 680000),
(5, 59, '2018-01-06 21:31:11', 'Đã xử lý', 230000),
(6, 60, '2018-01-07 21:33:03', 'Đã xử lý', 1330000),
(7, 61, '2018-01-07 21:35:04', 'Đã xử lý', 470000),
(8, 62, '2018-01-08 10:02:02', 'Đã xử lý', 200000),
(9, 63, '2018-01-08 10:03:35', 'Đã xử lý', 560000),
(10, 64, '2018-01-09 09:37:34', 'Chưa xử lý', 530000),
(11, 65, '2018-01-09 10:29:30', 'Chưa xử lý', 1350000),
(12, 66, '2018-01-09 18:59:25', 'Chưa xử lý', 480000),
(14, 68, '2018-01-12 13:16:50', 'Chưa xử lý', 200000),
(15, 69, '2018-01-12 21:35:56', 'Chưa xử lý', 660000),
(16, 70, '2018-01-13 17:53:54', 'Chưa xử lý', 680000),
(17, 71, '2018-01-14 16:28:54', 'Chưa xử lý', 400000),
(24, 0, '2018-01-21 20:59:22', 'Chưa xử lý', 470000),
(35, 89, '2024-03-03 11:32:12', 'Đã xử lý', 680000),
(36, 89, '2024-03-03 12:08:58', 'Chưa xử lý', 1777000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_khach_hang` int(11) NOT NULL,
  `ten_khach_hang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phai` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `matKhau` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_khach_hang`, `ten_khach_hang`, `phai`, `email`, `dia_chi`, `dien_thoai`, `matKhau`) VALUES
(72, 'Hoàng', 1, 'hoangnam@gmail.com', '155 Lê Lai', '546548', '827ccb0eea8a706c4c34a16891f84e7b'),
(73, 'Thắng', 1, 'thang@gmail.com', '189 Lý Thường Kiệt', '654684', '827ccb0eea8a706c4c34a16891f84e7b'),
(74, 'Thúy', 0, 'thanhthuy@gmail.com', '182 Nguyễn Tri Phương', '5133216', '827ccb0eea8a706c4c34a16891f84e7b'),
(75, 'mỹ', 0, 'vuphuonganh2497@gmail.com', '194 Lê Hồng Phong', '0938184297', '827ccb0eea8a706c4c34a16891f84e7b'),
(76, 'Nguyễn Thị Tú', 0, 'nguyenthitu@gmail.com', '123 Cống Quỳnh', '5665654', '827ccb0eea8a706c4c34a16891f84e7b'),
(77, 'Trương Ngọc Hân', 0, 'ngochan@gmail.com', '234 Nguyễn Kim', '5464', '827ccb0eea8a706c4c34a16891f84e7b'),
(78, 'Quỳnh Anh', 1, 'quynhchi@gmail.com', '31651651', '54 Nguyễn Cư Trinh', '827ccb0eea8a706c4c34a16891f84e7b'),
(79, 'Nguyễn Thị Hoa', 0, 'hoa@gmail.com', '12 Hai Bà Trưng', '13568468', '827ccb0eea8a706c4c34a16891f84e7b'),
(80, 'a', 1, 'adas@gmail.com', 'aa', '11', '96e79218965eb72c92a549dd5a330112'),
(81, 'phuc', 1, 'pinkp7996@gmail.com', 'dong nai', '01637902900', '7a1c841b4a1a2491168327b0c24f561a'),
(82, 'asda', 1, 'asd@gmail.com', 'dasdas', '312', 'a7b1cabd7d021b107ef6064ad2d75c7b'),
(83, 'a', 1, 'a@gmail.com', 'a', '1', '698d51a19d8a121ce581499d7b701668'),
(84, 'Nguyễn Văn A', 1, 'a@gmail.com', 'Quận 10, HCM, VN', '01637900000', '0cc175b9c0f1b6a831c399e269772661'),
(85, 'Vũ Phương Anh', 0, 'vuphuonganh@gmail.com', '194 Lê Hồng Phong', '0938184297', '827ccb0eea8a706c4c34a16891f84e7b'),
(86, 'Quỳnh Chi', 0, 'yeudoiyeunguoiyeutele@gmail.com', '54 Nguyễn Cư Trinh', '132135165', '827ccb0eea8a706c4c34a16891f84e7b'),
(87, 'Nguyễn Văn A', 1, 'a@gmail.com', 'Việt Nam', '01637900000', '20ca70c7c8f494c7bd1d54ad23d40cde'),
(88, 'Nguyễn Thị B', 0, 'b@gmail.com', 'việt nam', '016379999999', '0a2c9fef5b387c0a81119c420231640d'),
(89, 'Demo Khách hàng 1', 0, 'devnguyen@gmail.com', 'Hà Nội, Việt Nam', '0987654322', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_su`
--

CREATE TABLE `lich_su` (
  `id` int(11) NOT NULL,
  `ma_hoa` int(11) NOT NULL,
  `ma_khach_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lich_su`
--

INSERT INTO `lich_su` (`id`, `ma_hoa`, `ma_khach_hang`) VALUES
(1, 75, 85),
(2, 67, 85),
(3, 20, 85);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_hoa`
--

CREATE TABLE `loai_hoa` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_hoa`
--

INSERT INTO `loai_hoa` (`MaLoai`, `TenLoai`) VALUES
(1, 'Gương/ Kính'),
(2, 'Giường'),
(3, 'Tủ lạnh'),
(4, 'Máy giặt'),
(5, 'Kệ gỗ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_tin`
--

CREATE TABLE `loai_tin` (
  `MaLoaiTin` int(11) NOT NULL,
  `TenLoaiTin` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loai_tin`
--

INSERT INTO `loai_tin` (`MaLoaiTin`, `TenLoaiTin`) VALUES
(1, 'Tin tức mới'),
(2, 'Tin công ty'),
(3, 'Tin khuyến mãi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `hinh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `logo`
--

INSERT INTO `logo` (`id`, `hinh`) VALUES
(1, 'logo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_cao`
--

CREATE TABLE `quang_cao` (
  `id` int(11) NOT NULL,
  `TieuDe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) NOT NULL,
  `DuongDan` varchar(255) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `quang_cao`
--

INSERT INTO `quang_cao` (`id`, `TieuDe`, `Hinh`, `DuongDan`, `ThoiGian`) VALUES
(1, 'QC1 Hoa', 'Banner-cuoi-trang-1.jpg', 'danh-sach-hoa.html', '2018-01-12 18:16:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `TieuDe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(100) NOT NULL,
  `DuongDan` varchar(255) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `TieuDe`, `Hinh`, `DuongDan`, `ThoiGian`) VALUES
(1, 'Slide 1', 'slide11.png', 'slide-1', '2024-03-03 11:37:18'),
(2, 'Khuyến mãi noel', 'slide1.jpg', 'danh-sach-hoa', '2024-03-03 11:39:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_tin`
--

CREATE TABLE `thong_tin` (
  `id` int(11) NOT NULL,
  `TieuDe` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) NOT NULL,
  `DuongDan` varchar(255) NOT NULL,
  `HanhDong` varchar(50) NOT NULL DEFAULT 'Mua Ngay',
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thong_tin`
--

INSERT INTO `thong_tin` (`id`, `TieuDe`, `Hinh`, `DuongDan`, `HanhDong`, `ThoiGian`) VALUES
(1, 'Banner 1', '1111.png', '.', 'Mua Ngay', '2024-03-03 11:51:22'),
(2, 'Banner 2', '2222.png', '.', 'Mua Ngay', '2024-03-03 11:52:37'),
(3, 'Banner 3', '3333.png', '.', 'Mua Ngay', '2024-03-03 11:53:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `MaTT` int(11) NOT NULL,
  `TenTT` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` date NOT NULL,
  `MaLoaiTin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tin_tuc`
--

INSERT INTO `tin_tuc` (`MaTT`, `TenTT`, `NoiDung`, `Hinh`, `ThoiGian`, `MaLoaiTin`) VALUES
(1, 'Tips Trang Trí Góc Học Tập, Làm Việc Đẹp', '<p>Những g&oacute;c học tập, l&agrave;m việc được b&agrave;i tr&iacute; một c&aacute;ch khoa học v&agrave; th&ocirc;ng minh, gi&uacute;p cho c&ocirc;ng việc học tập của bạn thuận tiện hơn. Tuy nhi&ecirc;n, ch&uacute;ng ta thường sử dụng qu&aacute; nhiều đồ vật trang tr&iacute; kh&ocirc;ng cần thiết tạo cho g&oacute;c học tập của m&igrave;nh trở n&ecirc;n rối ren v&agrave; mất đi t&iacute;nh thẩm mỹ. G&oacute;c học tập chỉ cần một số vật dụng đơn giản như tấm ảnh kỷ niệm, một v&agrave;i m&oacute;n trang tr&iacute; xinh xắn như đồng hồ, b&igrave;nh hoa nhỏ,... l&agrave; đủ để tạo n&ecirc;n hồn cho g&oacute;c l&agrave;m việc của m&igrave;nh. Bạn đ&atilde; c&oacute; g&oacute;c học tập, l&agrave;m việc theo &yacute; m&igrave;nh chưa? Nếu chưa th&igrave; h&atilde;y tham khảo c&aacute;c &yacute; tưởng trang tr&iacute; b&agrave;n l&agrave;m việc dưới đ&acirc;y nh&eacute;.</p>\r\n\r\n<h2><strong>1. Bố tr&iacute; g&oacute;c học tập hiệu quả</strong></h2>\r\n\r\n<p>G&oacute;c decor b&agrave;n l&agrave;m việc hiệu quả phải nằm trong một kh&ocirc;ng gian y&ecirc;n tĩnh với diện t&iacute;ch đủ rộng r&atilde;i, tạo cảm gi&aacute;c thoải m&aacute;i cho bạn khi học tập, l&agrave;m việc. Một g&oacute;c l&agrave;m việc nằm trong kh&ocirc;ng gian chật hẹp hay qu&aacute; rộng đều bất hợp l&yacute;, khiến bạn kh&ocirc;ng thể tập trung v&agrave; thường xuy&ecirc;n cảm thấy kh&oacute; chịu do căng thẳng, &aacute;p lực c&ocirc;ng việc. Bạn n&ecirc;n lưu &yacute; chọn g&oacute;c bố tr&iacute; b&agrave;n l&agrave;m việc của m&igrave;nh trong kh&ocirc;ng gian c&oacute; diện t&iacute;ch từ 2 - 4m2. Đ&acirc;y l&agrave; kiểu kh&ocirc;ng gian đủ rộng r&atilde;i v&agrave; l&yacute; tưởng cho ph&eacute;p bạn thể hiện c&aacute; t&iacute;nh s&aacute;ng tạo của ri&ecirc;ng m&igrave;nh.</p>\r\n\r\n<p>Vị tr&iacute; đặt b&agrave;n l&agrave;m việc cũng l&agrave; một yếu tố quan trọng. Tr&aacute;nh bố tr&iacute; b&agrave;n ngay dưới ch&ugrave;m đ&egrave;n, x&agrave; ngang v&igrave; những vật dụng n&agrave;y dễ g&acirc;y ch&oacute;i mắt v&agrave; nhiệt lượng toả ra từ ch&uacute;ng c&oacute; thể khiến bạn &aacute;p lực v&agrave; kh&oacute; chịu. Đặt b&agrave;n cạnh cửa sổ l&agrave; &yacute; tưởng được nhiều người &aacute;p dụng bởi đ&acirc;y l&agrave; nơi đ&oacute;n gi&oacute; v&agrave; &aacute;nh s&aacute;ng tự nhi&ecirc;n, gi&uacute;p g&oacute;c học tập của bạn kho&aacute;c l&ecirc;n diện mạo mới tr&agrave;n đầy sức sống.&nbsp;</p>\r\n\r\n<p>Đặc biệt, kh&ocirc;ng n&ecirc;n đặt b&agrave;n l&agrave;m việc đối diện điều h&ograve;a v&igrave; ngồi đối diện điều ho&agrave; khi đang học tập,l&agrave;m việc trong thời gian d&agrave;i sẽ ảnh hưởng đến sức khoẻ.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/387799923_653280303559770_947242_2532e3bd49a24ea2b72da6b6a533bfdc_grande.png\" /></p>\r\n\r\n<h2><strong>2. Sắp xếp đồ vật gọn g&agrave;ng</strong></h2>\r\n\r\n<p>Sắp xếp đồ d&ugrave;ng gọn g&agrave;ng l&agrave; nguy&ecirc;n tắc quan trọng cần phải tu&acirc;n thủ trong việc trang tr&iacute; nội thất. Đối với trang tr&iacute; b&agrave;n l&agrave;m việc cũng vậy, bạn nhất định kh&ocirc;ng thể bỏ qua yếu tố n&agrave;y. D&ugrave; lựa chọn c&aacute;ch decor b&agrave;n đẹp mắt n&agrave;o đi nữa nhưng vật dụng v&agrave; thiết bị lộn xộn, s&aacute;ch vở t&agrave;i liệu bừa bộn th&igrave; sẽ kh&ocirc;ng đạt được kết quả decor như mong muốn. Bởi sự gọn g&agrave;ng, ngăn nắp v&agrave; khoa học ch&iacute;nh l&agrave; một trong những yếu tố then chốt mang lại t&iacute;nh thẩm mỹ v&agrave; tiện nghi cho mọi g&oacute;c học tập, l&agrave;m việc.</p>\r\n\r\n<p>Việc b&agrave;y biện, sắp xếp khu vực học tập, l&agrave;m việc kh&ocirc;ng chỉ tạo kh&ocirc;ng gian gọn g&agrave;ng, thoải m&aacute;i m&agrave; c&ograve;n tăng cảm hứng s&aacute;ng tạo v&agrave; khả năng tập trung.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/368230450_628387602715707_709821_8d504affe31a437ba4b43a40a253ea91_grande.png\" /></p>\r\n\r\n<h2><strong>3. Tối giản phụ kiện</strong></h2>\r\n\r\n<p>Ch&uacute;ng ta cần chọn lọc một số đồ d&ugrave;ng cần thiết phục vụ cho việc học tập cũng như những phụ kiện decor ph&ugrave; hợp với sở th&iacute;ch của m&igrave;nh v&agrave; diện mạo căn ph&ograve;ng. Tr&aacute;nh lạm dụng qu&aacute; nhiều m&oacute;n đồ trang tr&iacute; khiến g&oacute;c decor b&agrave;n học trở n&ecirc;n rối mắt m&agrave; kh&ocirc;ng hề mang lại gi&aacute; trị thẩm mỹ như mong muốn.</p>\r\n\r\n<p>Bổ sung th&ecirc;m bộ phụ kiện đựng t&agrave;i liệu, đồ d&ugrave;ng văn ph&ograve;ng phẩm sẽ gi&uacute;p bạn l&agrave;m việc của bạn th&ecirc;m s&aacute;ng sủa, gọn g&agrave;ng, khơi nguồn cảm hứng mỗi ng&agrave;y.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/428634499_731140102440456_359565_1455ae9b51ca46229afa141889e52e7a_grande.png\" /></p>\r\n\r\n<h2><strong>4. Lợi &iacute;ch của việc trang tr&iacute; g&oacute;c học tập đẹp, khoa học</strong></h2>\r\n\r\n<p>Tạo sự thoải m&aacute;i.</p>\r\n\r\n<p>Tạo sự hứng th&uacute;.</p>\r\n\r\n<p>Tăng khả năng s&aacute;ng tạo.</p>\r\n\r\n<h2><strong>5. Một v&agrave;i c&aacute;ch b&agrave;y tr&iacute; b&agrave;n l&agrave;m việc theo phong thủy</strong></h2>\r\n\r\n<p>B&agrave;n l&agrave;m việc kh&ocirc;ng n&ecirc;n quay lưng với cửa ra v&agrave;o.</p>\r\n\r\n<p>Lưng b&agrave;n phải c&oacute; điểm tựa, kh&ocirc;ng tạo lối đi ph&iacute;a sau.</p>\r\n\r\n<p>Kh&ocirc;ng k&ecirc; b&agrave;n giữa ph&ograve;ng l&agrave;m việc.</p>\r\n\r\n<p>Tr&aacute;nh đặt dưới đ&egrave;n ch&ugrave;m, x&agrave; ngang,&nbsp; quạt trần.</p>\r\n\r\n<p>Tr&aacute;nh đặt đối diện với nh&agrave; vệ sinh.</p>\r\n\r\n<p>Vị tr&iacute; đặt n&ecirc;n k&iacute;ch th&iacute;ch gi&aacute;c quan.</p>\r\n\r\n<p><strong>Bạn nhớ lưu lại để sau n&agrave;y &aacute;p dụng t&acirc;n trang lại g&oacute;c học tập v&agrave; l&agrave;m việc của m&igrave;nh nh&eacute;, v&agrave; gh&eacute; Baya để trải nghiệm sản phẩm bạn nh&eacute;!</strong></p>\r\n', 'img11.png', '2024-03-03', 1),
(2, 'Sự Khác Biệt Giữa P/C Design Nội Thất Vintage và Retro', '<p>Khi n&oacute;i đến thiết kế nội thất, hai từ &quot;vintage&quot; v&agrave; &quot;retro&quot; thường được sử dụng thay thế cho nhau. Tuy nhi&ecirc;n, mặc d&ugrave; c&oacute; nhiều điểm chung, hai phong c&aacute;ch n&agrave;y thực sự mang những đặc trưng ri&ecirc;ng biệt. Trong b&agrave;i viết n&agrave;y, ch&uacute;ng ta sẽ kh&aacute;m ph&aacute; s&acirc;u hơn về sự kh&aacute;c biệt giữa phong c&aacute;ch thiết kế nội thất vintage v&agrave; retro.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Phong c&aacute;ch Vintage v&agrave; Retro</strong></h2>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/ae0506c1d661850858e9cd6c031442e5_3943253452f541ac93e5cf55f7204779_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Vintage:</strong>&nbsp;Phong c&aacute;ch vintage thường chỉ đến những m&oacute;n đồ nội thất hoặc trang tr&iacute; thực sự c&oacute; tuổi đời từ 20 đến 100 năm. Điều n&agrave;y kh&ocirc;ng chỉ về tuổi đời m&agrave; c&ograve;n về chất lượng v&agrave; gi&aacute; trị lịch sử của từng m&oacute;n đồ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/9bb647ae66fc9f3be4fe02fb50d80638_e7bb597ec16e424bb9e37733e02546ef_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Retro:</strong>&nbsp;Ngược lại, retro kh&ocirc;ng nhất thiết li&ecirc;n quan đến tuổi đời thực tế của sản phẩm. Thay v&agrave;o đ&oacute;, phong c&aacute;ch n&agrave;y ch&uacute; trọng v&agrave;o việc t&aacute;i hiện hoặc lấy cảm hứng từ xu hướng thiết kế của qu&aacute; khứ, đặc biệt l&agrave; từ những thập ni&ecirc;n 50, 60 v&agrave; 70.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>M&agrave;u Sắc v&agrave; Họa Tiết</strong></h2>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/894fadb35bdfc55d440c2a534bb595b6_82435194234e4a2498f274286c19f908_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Vintage:</strong>&nbsp;Phong c&aacute;ch vintage thường sử dụng c&aacute;c gam m&agrave;u nhẹ nh&agrave;ng, trung t&iacute;nh hoặc m&agrave;u pastel để tạo n&ecirc;n một kh&ocirc;ng gian hoặc thiết kế mang đậm chất cổ điển. C&aacute;c họa tiết phổ biến trong phong c&aacute;ch n&agrave;y bao gồm hoa văn cổ điển, chấm bi v&agrave; sọc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/2c9bd7b94f5554dc02f0188aa3db1373_e391831dc76442f9be135d409ce87771_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Retro:</strong>&nbsp;Phong c&aacute;ch retro nổi bật với việc sử dụng c&aacute;c m&agrave;u sắc rực rỡ v&agrave; đậm. Họa tiết đặc trưng trong phong c&aacute;ch n&agrave;y thường l&agrave; c&aacute;c h&igrave;nh học đơn giản, dải m&agrave;u v&agrave; in chữ, tạo n&ecirc;n một cảm gi&aacute;c ph&aacute; c&aacute;ch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Đồ Nội Thất</strong></h2>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/3637d60c2c37689c5c80dfae0af6f205_6faf46e368ec4a73a41ed9f58ba2b13c_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Vintage:</strong>&nbsp;Nội thất vintage thường bao gồm những m&oacute;n đồ cổ thực sự, được l&agrave;m từ chất liệu như gỗ tự nhi&ecirc;n, kim loại cũ kỹ v&agrave; vải dệt thủ c&ocirc;ng. Những m&oacute;n đồ n&agrave;y kh&ocirc;ng chỉ đơn thuần l&agrave; c&aacute;c m&oacute;n nội thất m&agrave; c&ograve;n mang gi&aacute; trị nghệ thuật, được coi l&agrave; những t&aacute;c phẩm độc đ&aacute;o.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/d34081f52dd9820f692a5d5793dca1ff_b3b0b9e22f9f43d7998be48faa77723d_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Retro:</strong>&nbsp;Nội thất retro thường l&agrave; những sản phẩm hiện đại được thiết kế để t&aacute;i hiện phong c&aacute;ch từ một thời kỳ cụ thể trong qu&aacute; khứ. Ch&uacute;ng thường sử dụng chất liệu như nhựa, vinyl v&agrave; kim loại s&aacute;ng b&oacute;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Tinh Thần v&agrave; Cảm X&uacute;c</strong></h2>\r\n\r\n<p><strong>Vintage:&nbsp;</strong>Phong c&aacute;ch vintage mang đến cho kh&ocirc;ng gian cảm gi&aacute;c ấm &aacute;p, mộc mạc v&agrave; mang t&iacute;nh ho&agrave;i niệm. Vintage t&ocirc;n vinh vẻ đẹp của thời gian v&agrave; lịch sử, tạo n&ecirc;n một kh&ocirc;ng gian đầy cảm x&uacute;c v&agrave; sự trầm lắng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Retro:</strong>&nbsp;Trong khi đ&oacute;, phong c&aacute;ch retro&nbsp;phản &aacute;nh sự lạc quan v&agrave; sự s&aacute;ng tạo của qu&aacute; khứ, tạo n&ecirc;n một kh&ocirc;ng gian hứng khởi v&agrave; đầy t&iacute;nh chất độc đ&aacute;o.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>D&ugrave; y&ecirc;u th&iacute;ch sự tinh tế,&nbsp;ho&agrave;i cổ của vintage hay sự t&aacute;o bạo v&agrave; s&ocirc;i động của retro, cả hai phong c&aacute;ch n&agrave;y đều mang lại cho kh&ocirc;ng gian sống của bạn một hơi thở đặc biệt. Quan trọng&nbsp;l&agrave; bạn chọn được phong c&aacute;ch ph&ugrave; hợp để tạo n&ecirc;n một kh&ocirc;ng gian m&agrave; bạn cảm thấy y&ecirc;u th&iacute;ch v&agrave; thoải m&aacute;i nhất.</p>\r\n', 'img22.png', '2024-03-03', 1),
(3, '10 Cách Trang Trí Bàn Ăn Đẹp Mắt Ngày Tết', '<p>Tết kh&ocirc;ng chỉ l&agrave; dịp để sum họp gia đ&igrave;nh, m&agrave; c&ograve;n l&agrave; cơ hội để thể hiện gu thẩm mỹ v&agrave; sự s&aacute;ng tạo trong&nbsp;<a href=\"https://baya.vn/collections/trang-tri-nha-cua\">trang tr&iacute; nh&agrave; cửa</a>, đặc biệt l&agrave; b&agrave;n ăn. Dưới đ&acirc;y l&agrave; 10 c&aacute;ch trang tr&iacute; b&agrave;n ăn đẹp mắt, mang đến kh&ocirc;ng kh&iacute; Tết ấm c&uacute;ng v&agrave; sum vầy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Sử dụng m&agrave;u sắc truyền thống</strong></h2>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/khan-trai-ban_34fbde1d178c4a7e8ae43c405d0e5add_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&agrave;u đỏ v&agrave; v&agrave;ng l&agrave; hai m&agrave;u truyền thống của ng&agrave;y Tết, tượng trưng cho may mắn v&agrave; thịnh vượng. Bạn c&oacute; thể sử dụng khăn trải b&agrave;n, đĩa, cốc, hoặc hoa trang tr&iacute; với hai m&agrave;u sắc n&agrave;y. Một chiếc khăn trải b&agrave;n m&agrave;u đỏ kết hợp với những chiếc đĩa m&agrave;u v&agrave;ng sẽ tạo n&ecirc;n một kh&ocirc;ng gian ấm &aacute;p v&agrave; rực rỡ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Trang tr&iacute; bằng hoa tươi</strong></h2>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/ban-an-loc-1389625997_96e8fdeeacb84a819f01fdd9cc172441_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hoa mai v&agrave; hoa đ&agrave;o l&agrave; hai loại hoa biểu tượng cho Tết ở miền Nam v&agrave; miền Bắc Việt Nam. Bạn c&oacute; thể đặt những lọ hoa nhỏ giữa b&agrave;n hoặc l&agrave;m v&ograve;ng hoa trang tr&iacute; xung quanh b&agrave;n ăn. H&atilde;y chắc chắn rằng m&agrave;u sắc của hoa ph&ugrave; hợp với tổng thể trang tr&iacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Sử dụng đ&egrave;n lồng</strong></h2>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/trang-tri-tet-dep-19_bf0d3880af4e4e58b779aa5870908bf6_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đ&egrave;n lồng mang lại kh&ocirc;ng kh&iacute; ấm c&uacute;ng v&agrave; l&atilde;ng mạn. Treo đ&egrave;n lồng xung quanh khu vực ăn uống hoặc tr&ecirc;n trần nh&agrave; để tạo điểm nhấn th&uacute; vị v&agrave; độc đ&aacute;o. Bạn c&oacute; thể chọn đ&egrave;n lồng giấy m&agrave;u đỏ hoặc v&agrave;ng với hoa văn truyền thống.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Trưng b&agrave;y m&acirc;m ngũ quả</strong></h2>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/mam-ngu-qua-mien-nam-anh-do-qu-7419-5891-1643250743_64a1df44410f4c5fb02ae5cbeaf06e04_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&acirc;m ngũ quả kh&ocirc;ng chỉ l&agrave; biểu tượng cho sự sung t&uacute;c m&agrave; c&ograve;n l&agrave; một phần kh&ocirc;ng thể thiếu trong ng&agrave;y Tết. Bạn c&oacute; thể sắp xếp c&aacute;c loại quả với nhiều m&agrave;u sắc kh&aacute;c nhau như cam, chuối, dưa hấu... tr&ecirc;n một m&acirc;m đĩa đẹp mắt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Sử dụng nến</strong></h2>\r\n\r\n<p>Nến sẽ tạo ra &aacute;nh s&aacute;ng dịu nhẹ v&agrave; ấm c&uacute;ng, rất ph&ugrave; hợp cho bữa ăn tối Tết. Bạn c&oacute; thể đặt ch&uacute;ng tr&ecirc;n b&agrave;n ăn hoặc gần khu vực ăn uống. H&atilde;y chọn những chiếc nến c&oacute; m&ugrave;i thơm nhẹ nh&agrave;ng để tăng th&ecirc;m kh&ocirc;ng kh&iacute; ng&agrave;y Tết.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Trang tr&iacute; bằng đồ gốm sứ</strong></h2>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/f344fbe6e0836572c8e2b7f2fcfb3390_fc5c6ba074464612b3e4b22fc7d6aa9c_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đồ gốm sứ với hoa văn truyền thống kh&ocirc;ng chỉ l&agrave;m tăng vẻ đẹp của b&agrave;n ăn m&agrave; c&ograve;n thể hiện sự tinh tế trong c&aacute;ch chọn đồ d&ugrave;ng. Bạn c&oacute; thể sử dụng bộ đồ ăn gốm sứ với hoa văn đặc trưng như rồng, phượng, hoa sen...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Sắp xếp ghế ngồi theo phong thủy</strong>&nbsp;</h2>\r\n\r\n<p>Nếu bạn tin v&agrave;o phong thủy, việc sắp xếp ghế ngồi sao cho hợp mệnh với từng th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh sẽ mang lại may mắn v&agrave; hạnh ph&uacute;c. Bạn cũng c&oacute; thể sử dụng gối tựa lưng với m&agrave;u sắc phong thủy ph&ugrave; hợp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Trang tr&iacute; bằng vật dụng thủ c&ocirc;ng mỹ nghệ</strong></h2>\r\n\r\n<p>Những vật dụng thủ c&ocirc;ng như b&aacute;t đĩa sơn m&agrave;i, đ&egrave;n giấy thủ c&ocirc;ng&nbsp;hay thậm ch&iacute; l&agrave; những t&aacute;c phẩm nghệ thuật nhỏ c&oacute; thể l&agrave;m điểm nhấn cho b&agrave;n ăn của bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Sử dụng vải th&ecirc;u hoặc ren</strong></h2>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/52cb4ac73f0aeb56a6dcae89728fc2d3_991310bc54c341d398f6b6c6f242a4a8_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vải th&ecirc;u hoặc ren truyền thống c&oacute; thể được sử dụng l&agrave;m khăn trải b&agrave;n hoặc khăn ăn. Những chiếc khăn n&agrave;y kh&ocirc;ng chỉ tăng th&ecirc;m vẻ đẹp m&agrave; c&ograve;n thể hiện sự tr&acirc;n trọng đối với c&aacute;c vị kh&aacute;ch&nbsp;đến thăm nh&agrave; trong dịp Tết. Một chiếc khăn trải b&agrave;n th&ecirc;u hoa văn tỉ mỉ hoặc ren tinh tế sẽ tạo n&ecirc;n điểm nhấn sang trọng v&agrave; ấm &aacute;p cho kh&ocirc;ng gian ăn uống.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>S&aacute;ng tạo với phụ kiện trang tr&iacute; nhỏ</strong></h2>\r\n\r\n<p>Đừng ngần ngại sử dụng những phụ kiện trang tr&iacute; nhỏ như hạt ngọc trai, nơ, băng ruy-băng, hay thậm ch&iacute; l&agrave; những h&igrave;nh ảnh, biểu tượng li&ecirc;n quan đến Tết như bao l&igrave; x&igrave; được gấp nghệ thuật. Những phụ kiện n&agrave;y kh&ocirc;ng chỉ l&agrave;m cho b&agrave;n ăn trở n&ecirc;n sinh động hơn m&agrave; c&ograve;n tạo cảm gi&aacute;c ấm c&uacute;ng v&agrave; gần gũi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/320211736-689662439425355-4861645986957870390-n-853_ad611891a7784a86a8cce662161b7fb3_grande.jpeg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trang tr&iacute; b&agrave;n ăn ng&agrave;y Tết kh&ocirc;ng chỉ l&agrave; việc l&agrave;m tăng th&ecirc;m kh&ocirc;ng kh&iacute; ng&agrave;y lễ m&agrave; c&ograve;n phản &aacute;nh t&igrave;nh cảm v&agrave; sự quan t&acirc;m của chủ ng&ocirc;i nh&agrave;&nbsp;đến từng th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh cũng như kh&aacute;ch đến chơi. Qua 10 c&aacute;ch trang tr&iacute; tr&ecirc;n, hy vọng bạn sẽ t&igrave;m thấy cảm hứng để tạo n&ecirc;n một kh&ocirc;ng gian ăn uống ấm c&uacute;ng, hạnh ph&uacute;c v&agrave; đầy m&agrave;u sắc trong dịp Tết&nbsp;n&agrave;y.</p>\r\n', 'img33.png', '2024-03-03', 1),
(4, 'Tầm Quan Trọng Của Design Nội Thất Trong Cuộc Sống', '<p>Thiết kế nội thất l&agrave; một phần kh&ocirc;ng thể thiếu v&agrave; cực kỳ quan trọng trong mọi dự &aacute;n x&acirc;y dựng, bất kể đ&oacute; l&agrave; nh&agrave; cửa, văn ph&ograve;ng hay cửa h&agrave;ng. N&oacute; kh&ocirc;ng chỉ đơn giản l&agrave; việc bố tr&iacute; nội thất như&nbsp;<a href=\"https://baya.vn/collections/ban\">b&agrave;n ghế</a>,&nbsp;<a href=\"https://baya.vn/collections/tu-ke\">tủ</a>, giường, gương... sao cho ph&ugrave; hợp với mục đ&iacute;ch sử dụng trong kh&ocirc;ng gian sống, m&agrave; c&ograve;n l&agrave; c&aacute;ch để thể hiện phong c&aacute;ch v&agrave; c&aacute; nh&acirc;n h&oacute;a của chủ sở hữu.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thiết kế nội thất th&ocirc;ng minh v&agrave; đẹp mắt c&oacute; thể tạo ra một kh&ocirc;ng gian sống tiện nghi v&agrave; n&acirc;ng cao chất lượng cuộc sống đ&aacute;ng kể.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Tạo kh&ocirc;ng gian tiện nghi v&agrave; thoải m&aacute;i hơn</strong></h2>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/tramhuong.dhouseluxury.com-tram-huong-144--1692847509_fea9786695e34f19acddb487bbc2daa1_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thiết kế nội thất đ&uacute;ng c&aacute;ch c&oacute; thể biến một kh&ocirc;ng gian sống th&agrave;nh một nơi thoải m&aacute;i v&agrave; tiện nghi, đặc biệt l&agrave; trong c&aacute;c căn hộ c&oacute; diện t&iacute;ch nhỏ. Bằng c&aacute;ch sử dụng đồ nội thất đa năng,&nbsp;lựa chọn m&agrave;u sắc s&aacute;ng v&agrave; vật liệu nhẹ nh&agrave;ng, bạn c&oacute; thể tận dụng diện t&iacute;ch tối đa để&nbsp;tạo ra cảm gi&aacute;c rộng r&atilde;i v&agrave; thoải m&aacute;i hơn cho kh&ocirc;ng gian.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Tạo điểm nhấn v&agrave; phong c&aacute;ch độc đ&aacute;o</strong></h2>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/-la-mot-phan-khong-the-thieu-trong-can-ho-nay-651e9c8bc9649b0ef5ffe17d_ad6b1e2caa934d98b571ca909467e86d_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thiết kế nội thất cũng gi&uacute;p tạo n&ecirc;n những điểm nhấn v&agrave; phong c&aacute;ch ri&ecirc;ng cho ng&ocirc;i nh&agrave; của bạn. Bằng c&aacute;ch lựa chọn c&aacute;c mẫu nội thất, m&agrave;u sắc, v&agrave; c&aacute;ch sắp xếp th&ocirc;ng minh, bạn c&oacute; thể tạo ra một kh&ocirc;ng gian sống độc đ&aacute;o thể hiện phong c&aacute;ch ri&ecirc;ng.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Cải thiện sức khỏe v&agrave; tinh thần</strong></h2>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/phong-cach-thiet-ke-noi-that-scandinavian-16_969b93ed8ff6487a8f4c4122669b2f02_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thiết kế nội thất kh&ocirc;ng chỉ đơn giản l&agrave; về việc trang tr&iacute; m&agrave; c&ograve;n li&ecirc;n quan đến sức khỏe v&agrave; tinh thần. Một kh&ocirc;ng gian sống sạch sẽ, ngăn nắp v&agrave; thoải m&aacute;i c&oacute; thể mang lại sự thư gi&atilde;n, giảm căng thẳng v&agrave; cải thiện tinh thần sống.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Tạo kh&ocirc;ng gian gặp gỡ v&agrave; kết nối</strong></h2>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/0eb21b10c3eb506e2ad1f7d36a439629_8d75b640bf784d768ebc991dac87bb86_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thiết kế nội thất kh&ocirc;ng chỉ l&agrave; việc sắp xếp đồ đạc, m&agrave; c&ograve;n đ&oacute;ng vai tr&ograve; quan trọng trong việc tạo ra kh&ocirc;ng gian gặp gỡ v&agrave; kết nối giữa c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh. Khi được thiết kế chi tiết v&agrave; th&ocirc;ng minh, n&oacute;&nbsp;c&oacute; thể tạo n&ecirc;n những kh&ocirc;ng gian sống ấm &aacute;p, tiện nghi, nơi mọi người c&oacute; thể tụ họp, tr&ograve; chuyện v&agrave; tận hưởng thời gian b&ecirc;n nhau.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Th&uacute;c đẩy hiệu suất l&agrave;m việc v&agrave; s&aacute;ng tạo</strong></h2>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000796751/file/e-noi-that-goc-hoc-tap-va-lam-viec-khoi-goi-nguon-cam-hung-sang-tao-15_3118e574c18c4b7f864d84c16cc4ddd4_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nếu bạn l&agrave;m việc tại nh&agrave; hoặc cần kh&ocirc;ng gian s&aacute;ng tạo, thiết kế nội thất c&oacute; thể ảnh hưởng đến hiệu suất l&agrave;m việc v&agrave; sự s&aacute;ng tạo của bạn. Một m&ocirc;i trường l&agrave;m việc gọn g&agrave;ng, thoải m&aacute;i v&agrave; th&uacute; vị c&oacute; thể gi&uacute;p bạn tập trung v&agrave; khơi nguồn cảm hứng s&aacute;ng tạo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>V&igrave; thế, thiết kế nội thất kh&ocirc;ng chỉ l&agrave; việc trang tr&iacute; m&agrave; c&ograve;n mang lại nhiều lợi &iacute;ch cho cuộc sống của ch&uacute;ng ta. N&oacute; tạo ra m&ocirc;i trường sống thoải m&aacute;i, th&uacute; vị,&nbsp;c&oacute; lợi cho sức khỏe, tinh thần v&agrave; sự ph&aacute;t triển c&aacute; nh&acirc;n. H&atilde;y đầu tư thời gian v&agrave; t&acirc;m huyết v&agrave;o việc thiết kế nội thất cho kh&ocirc;ng gian sống để bạn c&oacute; thể tận hưởng một cuộc sống chất lượng&nbsp;hơn.</p>\r\n', 'img44.png', '2024-03-03', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CT_MON` (`MaHoa`),
  ADD KEY `ma_don_hang` (`ma_hoa_don`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoa`
--
ALTER TABLE `hoa`
  ADD PRIMARY KEY (`MaHoa`),
  ADD KEY `MaLoai` (`MaLoai`),
  ADD KEY `MaHoa` (`MaHoa`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ma_hoa_don`),
  ADD KEY `ma_khach_hang` (`ma_khach_hang`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_khach_hang`);

--
-- Chỉ mục cho bảng `lich_su`
--
ALTER TABLE `lich_su`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ma_hoa` (`ma_hoa`),
  ADD KEY `ma_khach_hang` (`ma_khach_hang`);

--
-- Chỉ mục cho bảng `loai_hoa`
--
ALTER TABLE `loai_hoa`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `loai_tin`
--
ALTER TABLE `loai_tin`
  ADD PRIMARY KEY (`MaLoaiTin`);

--
-- Chỉ mục cho bảng `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quang_cao`
--
ALTER TABLE `quang_cao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thong_tin`
--
ALTER TABLE `thong_tin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`MaTT`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hoa`
--
ALTER TABLE `hoa`
  MODIFY `MaHoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `ma_hoa_don` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ma_khach_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `lich_su`
--
ALTER TABLE `lich_su`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `loai_hoa`
--
ALTER TABLE `loai_hoa`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `loai_tin`
--
ALTER TABLE `loai_tin`
  MODIFY `MaLoaiTin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `quang_cao`
--
ALTER TABLE `quang_cao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `thong_tin`
--
ALTER TABLE `thong_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `MaTT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD CONSTRAINT `_FK_chi_tiet_hoa_don_hoa` FOREIGN KEY (`MaHoa`) REFERENCES `hoa` (`MaHoa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_FK_chi_tiet_hoa_don_hoa_don` FOREIGN KEY (`ma_hoa_don`) REFERENCES `hoa_don` (`ma_hoa_don`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoa`
--
ALTER TABLE `hoa`
  ADD CONSTRAINT `FK_H_LH` FOREIGN KEY (`MaLoai`) REFERENCES `loai_hoa` (`MaLoai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `lich_su`
--
ALTER TABLE `lich_su`
  ADD CONSTRAINT `_FK_lich_su_hoa` FOREIGN KEY (`ma_hoa`) REFERENCES `hoa` (`MaHoa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `_FK_lich_su_khach_hang` FOREIGN KEY (`ma_khach_hang`) REFERENCES `khach_hang` (`ma_khach_hang`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
