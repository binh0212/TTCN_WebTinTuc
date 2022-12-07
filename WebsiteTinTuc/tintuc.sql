-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 09:03 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tintuc`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_tintuc` bigint(20) UNSIGNED NOT NULL,
  `noidung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loaitin`
--

CREATE TABLE `loaitin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_theloai` bigint(20) UNSIGNED NOT NULL,
  `tenloaitin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenkhongdau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaitin`
--

INSERT INTO `loaitin` (`id`, `id_theloai`, `tenloaitin`, `tenkhongdau`, `created_at`, `updated_at`) VALUES
(9, 7, 'Pháp Luật', 'phap-luat', '2022-12-01 05:25:16', '2022-12-01 09:48:41'),
(10, 8, 'Covid-19', 'covid-19', '2022-12-01 05:25:25', '2022-12-01 09:49:06'),
(11, 6, 'INTERNET', 'internet', '2022-12-01 22:32:35', '2022-12-01 22:32:35'),
(12, 10, 'Ca sĩ', 'ca-si', '2022-12-02 19:39:43', '2022-12-02 19:39:43'),
(14, 10, 'Phim Ảnh', 'phim-anh', '2022-12-02 20:43:46', '2022-12-02 20:43:46'),
(15, 10, 'Thời Trang', 'thoi-trang', '2022-12-02 20:43:55', '2022-12-02 20:43:55'),
(16, 6, 'GADGET', 'gadget', '2022-12-02 20:44:14', '2022-12-02 20:44:14'),
(17, 6, 'MOBILE', 'mobile', '2022-12-02 20:44:22', '2022-12-02 20:44:22'),
(22, 7, 'TÀI CHÍNH - CHỨNG KHOÁN', 'tai-chinh---chung-khoan', '2022-12-02 22:11:11', '2022-12-02 22:11:11'),
(23, 7, 'TIÊU DÙNG', 'tieu-dung', '2022-12-02 22:11:19', '2022-12-02 22:11:19'),
(24, 8, 'DINH DƯỠNG', 'dinh-duong', '2022-12-02 22:11:36', '2022-12-02 22:11:36'),
(28, 10, 'Diễn Viên', 'dien-vien', '2022-12-07 00:17:17', '2022-12-07 00:17:17'),
(29, 6, 'BLOCK-CHAIN', 'block-chain', '2022-12-07 00:22:05', '2022-12-07 00:22:05'),
(30, 8, 'Y tế thế giới', 'y-te-the-gioi', '2022-12-07 00:26:50', '2022-12-07 00:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2022_11_16_060934_create_theloai__table', 2),
(8, '2022_11_16_061134_create_loaitin_table', 2),
(10, '2022_11_16_061910_alter_fkn_to_loaitin', 3),
(11, '2022_11_16_061452_create_tintuc_table', 4),
(12, '2022_11_16_062314_create_binhluan_table', 5),
(13, '2022_11_20_070203_add_hinh_theloai_table', 6),
(14, '2022_12_01_183346_create_video_table', 7),
(15, '2022_12_02_045415_add_hinh_users_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tentheloai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenkhongdau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hinh` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`id`, `tentheloai`, `tenkhongdau`, `created_at`, `updated_at`, `hinh`) VALUES
(6, 'Công Nghệ', 'cong-nghe', '2022-11-20 00:34:00', '2022-11-20 00:34:00', '1668929640_theloai_cat-500x80-2.jpg'),
(7, 'Xã hội', 'xa-hoi', '2022-11-20 00:34:15', '2022-11-20 00:34:15', '1668929655_theloai_cat-500x80-1.jpg'),
(8, 'Y Tế', 'y-te', '2022-11-20 00:35:21', '2022-11-20 00:35:21', '1668929721_theloai_kinteh.png'),
(10, 'Giải trí', 'giai-tri', '2022-12-02 19:11:16', '2022-12-02 19:19:11', '1670033951_tu-vung-tieng-anh-ve-giai-tri-0 (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tieude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieudekhongdau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noibat` int(11) DEFAULT NULL,
  `soluotxem` int(11) DEFAULT NULL,
  `id_loaitin` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`id`, `tieude`, `tieudekhongdau`, `tomtat`, `noidung`, `hinh`, `noibat`, `soluotxem`, `id_loaitin`, `id_user`, `created_at`, `updated_at`) VALUES
(32, 'Rolls-Royce Phantom Lửa Thiêng đấu giá lần 2, giảm còn hơn 22 tỷ đồng', 'rolls-royce-phantom-lua-thieng-dau-gia-lan-2--giam-con-hon-22-ty-dong', 'KINH DOANH\r\n\r\nRolls-Royce Phantom Lửa Thiêng đấu giá lần 2, giảm còn hơn 22 tỷ đồng\r\nThanh Thương Thứ tư, 7/12/2022 09:44 (GMT+7)Từ mức 28 tỷ đồng giá khởi điểm ban đầu, Rolls-Royce Phantom Lửa Thiêng hạ giá còn 22,7 tỷ đồng trong lần đấu giá tiếp theo.', '<p>C&ocirc;ng ty Đấu gi&aacute; hợp danh Đ&ocirc;ng Nam vừa th&ocirc;ng b&aacute;o đấu gi&aacute; lần 2 xe Rolls-Royce loại Phantom l&agrave; t&agrave;i sản đảm bảo cho khoản vay của C&ocirc;ng ty FLC Land.</p>\r\n\r\n<p>Theo đ&oacute;, gi&aacute; khởi điểm lần đấu gi&aacute; thứ 2 l&agrave;&nbsp;22,7 tỷ đồng, chưa bao gồm ph&iacute; c&ocirc;ng chứng hợp đồng mua b&aacute;n t&agrave;i sản đấu gi&aacute;, thuế thu nhập c&aacute; nh&acirc;n (nếu c&oacute;), thuế thu nhập doanh nghiệp, VAT (nếu c&oacute;). Tiền đặt trước 20% (hơn&nbsp;4,5 tỷ đồng), bước gi&aacute; 40 triệu đồng.</p>\r\n\r\n<p>Địa điểm tổ chức đấu gi&aacute; chiếc xe n&agrave;y tại chi nh&aacute;nh của c&ocirc;ng ty đấu gi&aacute; ở 15 Trần Kh&aacute;t Ch&acirc;n, Hai B&agrave; Trưng, H&agrave; Nội v&agrave;o ng&agrave;y 26/12. Hiện, chiếc Rolls-Royce Phantom Lửa Thi&ecirc;ng được lưu tại cửa h&agrave;ng &ocirc;t&ocirc; số 2 T&ocirc;n Thất Thuyết quận Nam Từ Li&ecirc;m (H&agrave; Nội), thời gian xem t&agrave;i sản từ ng&agrave;y 12-16/12.</p>\r\n\r\n<p>Trước đ&oacute;, ng&agrave;y 15/11, buổi đấu gi&aacute; Rolls-Royce n&agrave;y đ&atilde; kh&ocirc;ng thể diễn ra đ&uacute;ng kế hoạch. Nguy&ecirc;n nh&acirc;n xuất ph&aacute;t từ việc đ&atilde; kh&ocirc;ng c&oacute; ai đến đặt cọc khoản tiền&nbsp;5,605 tỷ đồng, tương ứng 20% gi&aacute; khởi điểm của t&agrave;i sản.</p>\r\n\r\n<p>Chiếc Rolls-Royce loại Phantom n&agrave;y được biết đến l&agrave; của &ocirc;ng Trịnh Văn Quyết, cựu Chủ tịch HĐQT C&ocirc;ng ty cổ phần Tập đo&agrave;n FLC.</p>\r\n\r\n<p>Mẫu xe n&agrave;y từng c&oacute; mức gi&aacute; được đồn đo&aacute;n l&ecirc;n đến 51 tỷ đồng ở thời điểm ra mắt. Ảnh: Anh Xu&acirc;n.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Rolls-Royce Phantom Lua Thieng anh 1\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/bfjysesfzyr/2022_12_07/2_LuaThieng_.jpg\" style=\"height:1236px; width:1980px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mẫu xe n&agrave;y từng c&oacute; mức gi&aacute; được đồn đo&aacute;n l&ecirc;n đến 51 tỷ đồng ở thời điểm ra mắt. Ảnh: Anh Xu&acirc;n.</p>\r\n\r\n<p><img alt=\"Rolls-Royce Phantom Lua Thieng anh 1\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/bfjysesfzyr/2022_12_07/2_LuaThieng_.jpg\" style=\"height:1236px; width:1980px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Rolls-Royce Phantom Lua Thieng anh 1\" src=\"https://znews-photo.zingcdn.me/w860/Uploaded/bfjysesfzyr/2022_12_07/2_LuaThieng_.jpg\" style=\"height:1236px; width:1980px\" title=\"Rolls-Royce Phantom Lửa Thiêng ảnh 1\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Mẫu xe n&agrave;y từng c&oacute; mức gi&aacute; được đồn đo&aacute;n l&ecirc;n đến&nbsp;51 tỷ đồng&nbsp;ở thời điểm ra mắt. Ảnh:&nbsp;<em>Anh Xu&acirc;n.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Được biết phi&ecirc;n bản Lửa Thi&ecirc;ng thuộc bộ sưu tập Phantom Đ&ocirc;ng Sơn, bao gồm Lửa Thi&ecirc;ng, Thủy Triều, Thần N&uacute;i, Ng&acirc;n Vũ, Ph&ugrave; Sa v&agrave; Mẹ &Acirc;u Cơ.</p>\r\n\r\n<p>Mẫu xe sang Rolls-Royce Phantom Lửa Thi&ecirc;ng nổi bật với hai tone m&agrave;u v&agrave;ng hồng v&agrave; đỏ rượu vang ở cả nội thất lẫn ngoại thất. Biểu tượng Spirit of Ecstasy được mạ v&agrave;ng v&agrave; họa tiết trống đồng Đ&ocirc;ng Sơn được vẽ bằng tay tạo n&ecirc;n những điểm nhấn nổi bật cho mẫu xe.</p>\r\n\r\n<p>Rolls-Royce Phantom Lửa Thi&ecirc;ng sở hữu v&aacute;ch ngăn giữa hai h&agrave;ng ghế, kết hợp với nhiều vật liệu cao cấp như da b&ograve; Bắc &Acirc;u hay gỗ qu&yacute; cho phần nội thất. Biểu tượng của văn h&oacute;a Đ&ocirc;ng Sơn l&agrave; chim hạc cũng xuất hiện ở ph&iacute;a trong cabin. Ở thời điểm ra mắt, Phantom Lửa Thi&ecirc;ng c&oacute; gi&aacute; đồn đo&aacute;n khoảng&nbsp;51 tỷ đồng.</p>', '1670397041_z3835498844605_e055542fc3cc86723e8d7e7e96bf2cba.jpg', 1, 0, 22, 22, '2022-12-07 00:10:41', '2022-12-07 00:10:41'),
(33, '\'Chế độ yêu tinh\' chỉ chĩa mũi dùi vào phụ nữ', '-che-do-yeu-tinh--chi-chia-mui-dui-vao-phu-nu', '\"Goblin mode\" dường như chỉ trích lối sống bê tha, thiếu kỷ luật của phụ nữ, trong khi đàn ông có thể hành xử tương tự mà không bị gọi là \"yêu tinh\".', '<p>&quot;Goblin mode&quot; (tạm dịch: chế độ y&ecirc;u tinh) đ&atilde; được c&ocirc;ng ty ph&aacute;t h&agrave;nh từ điển tiếng Anh Oxford chọn l&agrave;m từ của năm 2022. Thuật ngữ n&agrave;y chỉ &quot;kiểu h&agrave;nh vi bu&ocirc;ng thả, lười biếng, cẩu thả hoặc tham lam theo c&aacute;ch b&aacute;c bỏ chuẩn mực hoặc kỳ vọng của x&atilde; hội&quot;.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; lần đầu ti&ecirc;n, từ của năm được d&acirc;n mạng b&igrave;nh chọn trực tuyến trong một cuộc b&igrave;nh chọn c&ocirc;ng khai k&eacute;o d&agrave;i 2 tuần. Theo &ocirc;ng Casper Grathwohl, Chủ tịch Oxford Languages, từ n&agrave;y ph&ugrave; hợp phản &aacute;nh t&acirc;m trạng v&agrave; mối quan t&acirc;m của con người trong năm thứ 3 của đại dịch.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, c&oacute; nhiều chỉ tr&iacute;ch xung quanh &quot;goblin mode&quot;. Một trong những thực tế g&acirc;y tranh c&atilde;i l&agrave; cụm từ n&agrave;y dường như tập trung hơn tới lối sống b&ecirc; tha, thiếu kỷ luật của phụ nữ, trong khi đ&agrave;n &ocirc;ng c&oacute; thể h&agrave;nh xử tương tự m&agrave; kh&ocirc;ng bị gọi l&agrave; &quot;y&ecirc;u tinh&quot;, theo&nbsp;<em>Glamour</em>.</p>\r\n\r\n<p>Trong một b&agrave;i viết tr&ecirc;n tạp ch&iacute;<em>&nbsp;Harper&#39;s Bazaar</em>, t&aacute;c giả Hayley Peppin nhận định &quot;goblin mode&quot; l&agrave; một từ kh&oacute;a viral tr&ecirc;n Internet, nhưng n&oacute; kh&ocirc;ng n&ecirc;n bị &quot;gắn m&aacute;c&quot; v&agrave; nhắm mũi d&ugrave;i v&agrave;o phụ nữ.</p>\r\n\r\n<h2>Phụ nữ bị ph&aacute;n x&eacute;t</h2>\r\n\r\n<p>&quot;Goblin mode&quot; vốn l&agrave; một từ l&oacute;ng, rất kh&oacute; để x&aacute;c định cụ thể thời gian n&oacute; xuất hiện. Cụm từ n&agrave;y được ghi nhận rộng r&atilde;i lần đầu v&agrave;o năm 2009, trong b&agrave;i đăng của chủ t&agrave;i khoản Twitter @jenniferdujour, theo&nbsp;<em>The Hustle</em>.</p>\r\n\r\n<p>&quot;Goblin mode&quot; trở th&agrave;nh từ kh&oacute;a phổ biến tr&ecirc;n mạng x&atilde; hội trong thời kỳ đại dịch. Ảnh: Beth Sacca.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"goblin mode anh 2\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/ofh_btgazspf/2022_12_06/z3938414650831_bf15fe3d098e5e8787988a64400298a8.jpg\" style=\"height:1080px; width:720px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"right\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"goblin mode anh 2\" src=\"https://znews-photo.zingcdn.me/w480/Uploaded/ofh_btgazspf/2022_12_06/z3938414650831_bf15fe3d098e5e8787988a64400298a8.jpg\" style=\"height:1080px; width:720px\" title=\"goblin mode ảnh 2\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&quot;Goblin mode&quot; trở th&agrave;nh từ kh&oacute;a phổ biến tr&ecirc;n mạng x&atilde; hội trong thời kỳ đại dịch. Ảnh:&nbsp;<em>Beth Sacca.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Nhưng với nhiều người, lần đầu ti&ecirc;n họ biết đến &quot;chế độ y&ecirc;u tinh&quot; l&agrave; v&agrave;o ng&agrave;y 15/2 năm nay, bằng loạt tin giả bịa đặt về ph&aacute;t ng&ocirc;n của diễn vi&ecirc;n Julia Fox sau khi c&ocirc; chia tay Kanye West: &quot;Anh ấy kh&ocirc;ng th&iacute;ch khi t&ocirc;i bước v&agrave;o goblin mode&quot;.</p>\r\n\r\n<p>D&ugrave; sau đ&oacute; nữ diễn vi&ecirc;n đ&atilde; phải l&ecirc;n tiếng đ&iacute;nh ch&iacute;nh rằng m&igrave;nh kh&ocirc;ng hề n&oacute;i như vậy, h&agrave;ng loạt trang tin v&agrave; chủ đề b&agrave;n luận đ&atilde; xoay quanh từ kh&oacute;a n&agrave;y.</p>\r\n\r\n<p>Ngay sau đ&oacute;, Google Trends ghi nhận mức viral của thuật ngữ n&agrave;y đạt &quot;đỉnh&quot; v&agrave;o khoảng cuối th&aacute;ng 2, lượt t&igrave;m kiếm tăng đột biến.</p>\r\n\r\n<p>Trong c&aacute;c cuộc b&agrave;n luận v&agrave; tr&agrave;o lưu tr&ecirc;n mạng x&atilde; hội, &quot;chế độ y&ecirc;u tinh&quot; chủ yếu khiến người ta h&igrave;nh dung ra một phụ nữ thiếu chỉn chu, &iacute;t chăm ch&uacute;t tới ngoại h&igrave;nh, c&oacute; phần lười biếng.</p>\r\n\r\n<p>Trang<em>&nbsp;iNews</em>&nbsp;m&ocirc; tả &quot;goblin mode&quot; l&agrave;: &quot;Ng&agrave;y m&agrave; bạn mặc quần thể thao, chiếc quần mua từ năm 2009, t&oacute;c b&uacute;i cao ra sau v&agrave; da phủ một lớp bụi bẩn&quot;.</p>\r\n\r\n<p>Trong khi đ&oacute;,&nbsp;<em>The Guardian</em>&nbsp;người bước v&agrave;o &quot;chế độ y&ecirc;u tinh&quot; l&agrave; khi &quot;d&agrave;nh cả ng&agrave;y tr&ecirc;n giường để xem bộ phim 90 Day Fianc&eacute; v&agrave; lướt mạng x&atilde; hội kh&ocirc;ng ngừng&quot;.</p>\r\n\r\n<p>Ph&oacute;ng vi&ecirc;n c&ocirc;ng nghệ của&nbsp;<em>NPR</em>, Bobby Allyn, đ&atilde; tweet: &quot;Chế độ y&ecirc;u tinh giống như khi bạn thức dậy l&uacute;c 2h s&aacute;ng v&agrave; l&ecirc; bước v&agrave;o bếp, kh&ocirc;ng mặc g&igrave; ngo&agrave;i chiếc &aacute;o ph&ocirc;ng d&agrave;i để kiếm một m&oacute;n ăn vặt kỳ lạ, chẳng hạn như ph&ocirc; mai tan chảy tr&ecirc;n muối&quot;.</p>\r\n\r\n<p>Theo Peppin, mọi người, đặc biệt l&agrave; phụ nữ, đang bị chỉ tr&iacute;ch v&igrave; trở n&ecirc;n thoải m&aacute;i v&agrave; xuề x&ograve;a về ngoại h&igrave;nh của họ khi ở nh&agrave;, chỉ v&igrave; một từ mới g&acirc;y x&ocirc;n xao tr&ecirc;n mạng x&atilde; hội.</p>\r\n\r\n<p>&quot;Nghi&ecirc;m t&uacute;c m&agrave; n&oacute;i, ch&uacute;ng ta kh&ocirc;ng n&ecirc;n bị ph&aacute;n x&eacute;t hay coi m&igrave;nh l&agrave; thảm hại, lười biếng khi tận hưởng tiện nghi tại nh&agrave;. T&ocirc;i kh&ocirc;ng phải l&agrave; chuy&ecirc;n gia, nhưng r&otilde; r&agrave;ng d&agrave;nh một ng&agrave;y lười biếng ở nh&agrave; cũng c&oacute; &yacute; nghĩa t&iacute;ch cực với sức khỏe tinh thần như ra ngo&agrave;i uống c&agrave; ph&ecirc; với một người bạn&quot;, Peppin b&agrave;y tỏ.</p>\r\n\r\n<h2>Kỳ vọng kh&ocirc;ng thực tế về phụ nữ</h2>\r\n\r\n<p>&quot;Goblin mode&quot; l&agrave; xu hướng tr&aacute;i ngược với &quot;That girl&quot; - tr&agrave;o lưu nổi bật tr&ecirc;n TikTok, trong đ&oacute; c&aacute;c c&ocirc; g&aacute;i thể hiện sự ho&agrave;n hảo, biết chăm ch&uacute;t cho ngoại h&igrave;nh, ăn uống l&agrave;nh mạnh, tập thể dục đều đặn v&agrave; c&oacute; cuộc sống quy củ.</p>\r\n\r\n<p>Hashtag #thatgirl đ&atilde; h&uacute;t hơn 3 tỷ lượt xem tr&ecirc;n TikTok, trong đ&oacute; cho thấy c&aacute;c c&ocirc; n&agrave;ng Influencer sắp xếp tủ lạnh chứa đầy rau củ mới cắt, l&agrave;m bữa s&aacute;ng hữu cơ v&agrave; thực hiện c&aacute;c quy tr&igrave;nh chăm s&oacute;c da phức tạp - đ&oacute; l&agrave; h&igrave;nh mẫu phụ nữ được kỳ vọng.</p>\r\n\r\n<p>Xu hướng n&agrave;y đ&atilde; đặt ra một kỳ vọng kh&ocirc;ng thực tế cho c&aacute;c c&ocirc; g&aacute;i khi nghĩ rằng nếu họ kh&ocirc;ng dậy sớm, tập thể dục th&igrave; cuộc sống của họ sẽ kh&ocirc;ng thể tốt đẹp v&agrave; ổn định.</p>\r\n\r\n<p>&quot;Goblin mode&quot; được coi l&agrave; tr&aacute;i ngược với xu hướng &quot;that girl&quot; - những c&ocirc; n&agrave;ng ho&agrave;n hảo. Ảnh: Esme Blegvad/The Guardian.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"goblin mode anh 3\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/ofh_btgazspf/2022_12_06/z3938466434524_0ae637bf2a903875d07d9bc15fb3f632.jpg\" style=\"height:1224px; width:2040px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"goblin mode anh 3\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/ofh_btgazspf/2022_12_06/z3938466434524_0ae637bf2a903875d07d9bc15fb3f632.jpg\" style=\"height:1224px; width:2040px\" title=\"goblin mode ảnh 3\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&quot;Goblin mode&quot; được coi l&agrave; tr&aacute;i ngược với xu hướng &quot;that girl&quot; - những c&ocirc; n&agrave;ng ho&agrave;n hảo. Ảnh:&nbsp;<em>Esme Blegvad/The Guardian.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '1670397232_z3938413167829_36bb9c90ca7efd56a6b9f9a41a61e992_1.jpg', 0, 0, 23, 22, '2022-12-07 00:13:52', '2022-12-07 00:13:52'),
(34, 'Bạn diễn nữ ngẫu hứng hôn Brad Pitt trên phim trường', 'ban-dien-nu-ngau-hung-hon-brad-pitt-tren-phim-truong', 'Margot Robbie thuyết phục đạo diễn Damien Chazelle để nhân vật của cô và Brad Pitt hôn nhau trong bộ phim \"Babylon\".', '<p>Margot Robbie thuyết phục đạo diễn Damien Chazelle để nh&acirc;n vật của c&ocirc; v&agrave; Brad Pitt h&ocirc;n nhau trong bộ phim &quot;Babylon&quot;.</p>\r\n\r\n<p>Margot Robbie ngẫu hứng h&ocirc;n Brad Pitt.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/neg_yslewlx/2022_12_07/image_1__1.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://znews-photo.zingcdn.me/w960/Uploaded/neg_yslewlx/2022_12_07/image_1__1.jpg\" title=\"null\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Margot Robbie ngẫu hứng h&ocirc;n Brad Pitt.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>T&aacute;c phẩm ch&iacute;nh kịch&nbsp;<em>Babylon</em>&nbsp;do Brad Pitt v&agrave; Margot Robbie đ&oacute;ng ch&iacute;nh sẽ ra rạp v&agrave;o ng&agrave;y 23/12. Trong phim, cặp diễn vi&ecirc;n đ&atilde; h&ocirc;n nhau, song cảnh n&agrave;y kh&ocirc;ng c&oacute; trong kịch bản ban đầu. Thay v&agrave;o đ&oacute;, n&oacute; được ngẫu hứng bởi kh&ocirc;ng ai kh&aacute;c ngo&agrave;i Robbie.</p>\r\n\r\n<p>&quot;Đạo diễn kh&ocirc;ng viết về khoảnh khắc ấy trong kịch bản. Nhưng t&ocirc;i nghĩ, đến khi n&agrave;o nữa m&igrave;nh mới c&oacute; cơ hội h&ocirc;n Brad Pitt? M&igrave;nh phải l&agrave;m ngay b&acirc;y giờ th&ocirc;i&quot;, Robbie b&agrave;y tỏ tr&ecirc;n&nbsp;<em>E! News</em>.</p>\r\n\r\n<p>Nữ diễn vi&ecirc;n đ&atilde; thuyết phục đạo diễn Damien Chazelle cho ph&eacute;p c&ocirc; kh&oacute;a m&ocirc;i t&agrave;i tử Hollywood khi cho rằng cảnh đ&oacute; cực kỳ cần thiết đối với nh&acirc;n vật, cũng như mạch phim.</p>\r\n\r\n<p>Sau khi đắn đo kh&ocirc;ng qu&aacute; l&acirc;u, Chazelle đ&atilde; gật đầu, v&agrave; đạo diễn trẻ nhận ra nụ h&ocirc;n thực sự c&oacute; &iacute;ch cho bộ phim. Robbie chia sẻ th&ecirc;m: &quot;T&ocirc;i h&agrave;i l&ograve;ng về nụ h&ocirc;n n&agrave;y&quot;.</p>\r\n\r\n<p>Brad Pitt v&agrave; Margot Robbie trong sự kiện quảng b&aacute; phim mới ở New York. Ảnh: Fox News.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Ban dien hon Brad Pitt anh 1\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/neg_yslewlx/2022_12_07/diego_calva_margot_robbie_brad_p.jpg\" style=\"height:720px; width:1280px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Ban dien hon Brad Pitt anh 1\" src=\"https://znews-photo.zingcdn.me/w860/Uploaded/neg_yslewlx/2022_12_07/diego_calva_margot_robbie_brad_p.jpg\" style=\"height:720px; width:1280px\" title=\"Bạn diễn hôn Brad Pitt  ảnh 1\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Brad Pitt v&agrave; Margot Robbie trong sự kiện quảng b&aacute; phim mới ở New York. Ảnh:<em>&nbsp;Fox News.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Theo&nbsp;<em>Fox News</em>, Brad Pitt kh&ocirc;ng phải người duy nhất Robbie chạm m&ocirc;i tr&ecirc;n phim trường&nbsp;<em>Babylon</em>. Ng&ocirc;i sao Australia kể c&ocirc; c&ograve;n h&ocirc;n bạn diễn nữ Katherine Waterston. Dẫu vậy, Robbie kh&ocirc;ng chắc cảnh n&agrave;y c&oacute; g&oacute;p phần v&agrave;o th&agrave;nh c&ocirc;ng của phim hay kh&ocirc;ng.</p>\r\n\r\n<p><em>Babylon</em>&nbsp;thuộc thể loại h&agrave;i - ch&iacute;nh kịch cổ trang do Damien Chazelle viết kịch bản v&agrave; đạo diễn. Lần lượt, Robbie thủ vai Nellie LaRoy v&agrave; Pitt h&oacute;a th&acirc;n th&agrave;nh Jack Conrad. T&aacute;c phẩm đ&aacute;nh dấu lần thứ 3 họ hợp t&aacute;c với nhau. Trước đ&oacute;, Robbie c&oacute; cơ hội diễn xuất c&ugrave;ng chồng cũ Angelina Jolie ở&nbsp;<em>The Big Short</em>&nbsp;(2015) v&agrave;&nbsp;<em>Once Upon a Time&hellip;in Hollywood</em>&nbsp;(2019).</p>\r\n\r\n<p>Margot Robbie sinh năm 1990, l&agrave; diễn vi&ecirc;n điện ảnh người Australia c&oacute; sự nghiệp th&agrave;nh c&ocirc;ng ở Hollywood. C&ocirc; g&acirc;y ấn tượng mạnh mẽ với vai &aacute;c nữ Harley Quinn c&aacute; t&iacute;nh trong c&aacute;c phim của Vũ trụ Mở rộng DC (DCEU), bao gồm&nbsp;<em>Suicide Squad</em>&nbsp;(2016),<em>&nbsp;Birds of Prey</em>&nbsp;(2020) v&agrave;&nbsp;<em>The Suicide Squad&nbsp;</em>(2021).</p>\r\n\r\n<p>Theo&nbsp;<em>SCMP</em>, với c&aacute;t-x&ecirc;&nbsp;12,5 triệu USD&nbsp;cho vai ch&iacute;nh trong&nbsp;<em>Barbie,&nbsp;</em>Robbie trở th&agrave;nh nữ diễn vi&ecirc;n được trả lương cao nhất năm 2022.</p>', '1670397480_image_1__1.jpg', 0, 0, 28, 22, '2022-12-07 00:18:00', '2022-12-07 00:18:00'),
(35, 'Chi 20 triệu đồng mua iPhone 14 không thể nghe gọi', 'chi-20-trieu-dong-mua-iphone-14-khong-the-nghe-goi', 'Nhiều người dùng Việt đã bỏ ra hơn 20 triệu đồng để mua iPhone 14 Pro Max phiên bản khóa mạng hay còn gọi là iPhone lock.Nhiều người dùng Việt đã bỏ ra hơn 20 triệu đồng để mua iPhone 14 Pro Max phiên bản khóa mạng hay còn gọi là iPhone lock.\r\n\r\n\r\n\r\nNgười dùng Việt quan tâm dòng iPhone 14 Pro Lock vì mức giá rẻ. Ảnh: NVCC.\r\nTrên thị trường, iPhone 14 Pro lock và iPhone 14 Pro Max lock đang có giá lần lượt là 18 triệu đồng và 21 triệu đồng. Mức giá này rẻ hơn 11-13 triệu đồng so với hàng chính hãng cùng phiên bản.\r\n\r\nNhững mẫu máy này tuy không thể sử dụng SIM của các nhà mạng Việt Nam nhưng vẫn được nhiều người lựa chọn nhằm mục đích trải nghiệm những tính năng mới cũng như camera và các phần cứng khác vẫn hoạt động tốt.\r\n\r\nKhông thể nghe gọi\r\nTrao đổi với Zing, anh Quách Minh Hiếu, chủ cửa hàng HLC Store, cho biết đa phần iPhone bản lock được xách tay về từ thị trường Mỹ. Năm nay, iPhone 14 tại thị trường này đã không còn sử dụng SIM vật lý mà chỉ sử dụng eSIM nên hiện tại chưa có cách để sử dụng SIM các nhà mạng Việt.\r\n\r\n\r\nAnh Hiếu cũng cho biết giá iPhone 14 lock năm nay đang thấp hơn rất nhiều so với thế hệ iPhone 13 vào năm 2021. Thời điểm đó, dòng iPhone 13 về Việt Nam vẫn có thể dùng SIM ghép hoặc ICCID (một đoạn mã gồm 19-20 ký tự) để sử dụng như máy quốc tế.\r\n\r\n\r\n\r\nGia iPhone 14 Lock anh 1\r\niPhone 14 lock có giá rẻ hơn quốc tế 11-13 triệu đồng. Ảnh: Quỳnh Danh.\r\n\"Vào năm ngoái, giá bán ra những ngày đầu dao động 32-33 triệu đồng. Năm nay 14 Pro Max lock chỉ có giá 20-21 triệu đồng dù cùng thời điểm. Tuy iPhone 14 lock Mỹ năm nay không có khay SIM nhưng giá lại rẻ hơn hàng chính hãng hơn 10 triệu đồng nên vẫn được người dùng quan tâm\", anh này chia sẻ.\r\n\r\nSức nóng của iPhone 14 lock năm nay giảm rõ rệt khi những cửa hàng bán lẻ không dám nhập hàng do không có phương án sử dụng SIM ở Việt Nam.\r\n\r\n\"Năm nay cửa hàng không nhập máy lock bởi máy về từ thị trường Mỹ không thể sử dụng SIM vật lý, máy về từ các thị trường khác khi lắp SIM ghép hoặc mã ICCID cũng liên tục gặp lỗi\", chị Nguyễn Hiền, đại diện cửa hàng Táo Xanh (Hà Nội), cho biết.\r\n\r\nKhông chỉ các cửa hàng kinh doanh, người dùng cũng không quá mặn mà khi mua một chiếc iPhone hơn 20 triệu đồng nhưng liên tục phải đi lắp lại SIM ghép và nhập mã ICCD mới.\r\n\r\nChị Hiền cũng tiết lộ mỗi chiếc iPhone lock bán ra cửa hàng chỉ lời 500.000-1 triệu đồng.\r\n\r\nMua về để trải nghiệm\r\nChị Hiền cho biết thêm hiện iPhone 14 lock vẫn được một số khách hàng đam mê công nghệ quan tâm. Những người này không sử dụng máy với mục đích nghe, gọi nên không chú trọng việc không thể lắp SIM và xem máy lock như một chiếc máy phụ.\r\n\r\n\"Giờ ở đâu cũng có Wi-Fi, nên nhiều người dùng mua máy lock để làm máy phụ và sử dụng thêm một chiếc smartphone nữa làm máy chính\", chị này nhận định.', '<p>Nhiều người d&ugrave;ng Việt đ&atilde; bỏ ra hơn 20 triệu đồng để mua iPhone 14 Pro Max phi&ecirc;n bản kh&oacute;a mạng hay c&ograve;n gọi l&agrave; iPhone lock.</p>\r\n\r\n<p>Người d&ugrave;ng Việt quan t&acirc;m d&ograve;ng iPhone 14 Pro Lock v&igrave; mức gi&aacute; rẻ. Ảnh: NVCC.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/ohuokaa/2022_11_06/314896300_2634533840016927_2271774184972265479_n_1_1.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Người d&ugrave;ng Việt quan t&acirc;m d&ograve;ng iPhone 14 Pro Lock v&igrave; mức gi&aacute; rẻ. Ảnh: NVCC.</p>\r\n\r\n<p><img alt=\"\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/ohuokaa/2022_11_06/314896300_2634533840016927_2271774184972265479_n_1_1.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://znews-photo.zingcdn.me/w960/Uploaded/ohuokaa/2022_11_06/314896300_2634533840016927_2271774184972265479_n_1_1.jpg\" title=\"null\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Người d&ugrave;ng Việt quan t&acirc;m d&ograve;ng iPhone 14 Pro Lock v&igrave; mức gi&aacute; rẻ. Ảnh:&nbsp;<em>NVCC</em>.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Tr&ecirc;n thị trường, iPhone 14 Pro lock v&agrave; iPhone 14 Pro Max lock đang c&oacute; gi&aacute; lần lượt l&agrave; 18 triệu đồng v&agrave; 21 triệu đồng. Mức gi&aacute; n&agrave;y rẻ hơn 11-13 triệu đồng so với h&agrave;ng ch&iacute;nh h&atilde;ng c&ugrave;ng phi&ecirc;n bản.</p>\r\n\r\n<p>Những mẫu m&aacute;y n&agrave;y tuy kh&ocirc;ng thể sử dụng SIM của c&aacute;c nh&agrave; mạng Việt Nam nhưng vẫn được nhiều người lựa chọn nhằm mục đ&iacute;ch trải nghiệm những t&iacute;nh năng mới cũng như camera v&agrave; c&aacute;c phần cứng kh&aacute;c vẫn hoạt động tốt.</p>\r\n\r\n<h3>Kh&ocirc;ng thể nghe gọi</h3>\r\n\r\n<p>Trao đổi với&nbsp;<em>Zing</em>, anh Qu&aacute;ch Minh Hiếu, chủ cửa h&agrave;ng HLC Store, cho biết đa phần iPhone bản lock được x&aacute;ch tay về từ thị trường Mỹ. Năm nay, iPhone 14 tại thị trường n&agrave;y đ&atilde; kh&ocirc;ng c&ograve;n sử dụng SIM vật l&yacute; m&agrave; chỉ sử dụng eSIM n&ecirc;n hiện tại chưa c&oacute; c&aacute;ch để sử dụng SIM c&aacute;c nh&agrave; mạng Việt.</p>', '1670397655_314896300_2634533840016927_2271774184972265479_n_1_1.jpg', 1, 0, 17, 22, '2022-12-07 00:20:55', '2022-12-07 00:20:55'),
(36, 'Ông chủ sàn FTX lên tiếng', 'ong-chu-san-ftx-len-tieng', 'Tối ngày 10/11 (theo giờ Việt Nam), Sam Bankman-Fried lên tiếng xin lỗi người dùng FTX và cho biết đang tìm cách khắc phục vấn đề thanh khoản của sàn giao dịch.', '<p>Tối ng&agrave;y 10/11 (theo giờ Việt Nam), Sam Bankman-Fried l&ecirc;n tiếng xin lỗi người d&ugrave;ng FTX v&agrave; cho biết đang t&igrave;m c&aacute;ch khắc phục vấn đề thanh khoản của s&agrave;n giao dịch.</p>\r\n\r\n<p>&Ocirc;ng chủ s&agrave;n FTX nhận tr&aacute;ch nhiệm nhưng cho biết kh&ocirc;ng thể hứa hẹn trước về khả năng thanh khoản của s&agrave;n giao dịch tiền điện tử. Ảnh: CoinDesk.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/sfrsm/2022_11_10/20220819_nid_bone.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://znews-photo.zingcdn.me/w960/Uploaded/sfrsm/2022_11_10/20220819_nid_bone.jpg\" title=\"null\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&Ocirc;ng chủ s&agrave;n FTX nhận tr&aacute;ch nhiệm nhưng cho biết kh&ocirc;ng thể hứa hẹn trước về khả năng thanh khoản của s&agrave;n giao dịch tiền điện tử. Ảnh:&nbsp;<em>CoinDesk</em>.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&ldquo;T&ocirc;i xin lỗi. Đ&acirc;y l&agrave; điều quan trọng nhất. T&ocirc;i đ&atilde; qu&aacute; sai lầm, v&agrave; lẽ ra phải l&agrave;m tốt hơn&rdquo;, người từng l&agrave; tỷ ph&uacute; tiền điện tử n&oacute;i.</p>\r\n\r\n<p>Bankman-Fried giải th&iacute;ch rằng m&igrave;nh v&agrave; FTX đ&atilde; đ&aacute;nh gi&aacute; qu&aacute; thấp lượng giao dịch k&yacute; quỹ của người d&ugrave;ng, v&agrave; đ&acirc;y l&agrave; l&yacute; do s&agrave;n n&agrave;y gặp vấn đề về thanh khoản, kh&ocirc;ng thể ho&agrave;n lại c&aacute;c khoản tiền người d&ugrave;ng đ&atilde; gửi v&agrave;o s&agrave;n giao dịch tiền điện tử.</p>\r\n\r\n<p>Khối lượng t&agrave;i sản được r&uacute;t khỏi s&agrave;n v&agrave;o h&ocirc;m 6/11 l&ecirc;n tới&nbsp;5 tỷ USD, FTX d&ugrave; đ&atilde; sử dụng đ&ograve;n bẩy 1,7 lần cũng chỉ đ&aacute;p ứng được 80% thanh khoản.</p>\r\n\r\n<p>Bankman-Fried cho biết ưu ti&ecirc;n số một của m&igrave;nh l&agrave; kh&ocirc;ng để người d&ugrave;ng chịu thiệt, v&agrave; đang l&agrave;m mọi thứ c&oacute; thể để tăng khả năng thanh khoản. &ldquo;T&ocirc;i kh&ocirc;ng thể hứa hẹn g&igrave;, nhưng t&ocirc;i sẽ cố gắng&quot;, CEO n&agrave;y cho biết.</p>\r\n\r\n<p>Nếu FTX c&ograve;n c&oacute; thể tiếp tục hoạt động, s&agrave;n giao dịch sẽ ho&agrave;n to&agrave;n minh bạch, Bankman-Fried n&oacute;i th&ecirc;m.</p>\r\n\r\n<p>Triệu ph&uacute; trẻ tuổi cũng b&aacute;c bỏ tin đồn rằng Alameda Research đang b&aacute;n khống v&agrave; g&acirc;y mất ổn định Tether (USDT), đồng stablecoin lớn nhất t&iacute;nh theo vốn h&oacute;a thị trường.</p>\r\n\r\n<p>Tuy nhi&ecirc;n CEO n&agrave;y kh&ocirc;ng đề cập đến việc FTX c&oacute; sử dụng tiền của kh&aacute;ch h&agrave;ng để thổi gi&aacute; đồng FTT v&agrave; hỗ trợ Alameda như một số c&aacute;o buộc hay kh&ocirc;ng.</p>\r\n\r\n<p>Một số người d&ugrave;ng tỏ ra bức x&uacute;c trước l&yacute; giải của Bankman-Fried, chỉ ra rằng đến ng&agrave;y 7/11, sau khi xuất hiện vấn đề thanh khoản tr&ecirc;n FTX, CEO n&agrave;y vẫn khẳng định đ&oacute; chỉ l&agrave; &ldquo;tin đồn của đối thủ tung ra&rdquo; v&agrave; s&agrave;n giao dịch ho&agrave;n to&agrave;n ổn định.</p>\r\n\r\n<p>&Ocirc;ng chủ FTX cho biết đang thảo luận với một số b&ecirc;n để huy động vốn cho FTX, nhưng kh&ocirc;ng tiết lộ t&ecirc;n của c&aacute;c c&ocirc;ng ty hoặc c&aacute; nh&acirc;n li&ecirc;n quan. Một trong số đ&oacute; dường như l&agrave; Justin Sun, nh&agrave; s&aacute;ng lập Tron. V&agrave;i giờ sau khi Binance hủy bỏ thỏa thuận mua lại FTX, Justin Sun th&ocirc;ng b&aacute;o rằng đang &ldquo;c&ugrave;ng FTX đưa ra giải ph&aacute;p&rdquo;. Sun kh&ocirc;ng tiết lộ c&aacute;c chi tiết của thỏa thuận, nhưng cho rằng t&igrave;nh h&igrave;nh vẫn đang &quot;c&oacute; thể kiểm so&aacute;t được&quot;.</p>\r\n\r\n<p><em>CNBC&nbsp;</em>cho rằng c&oacute; thể Sun chỉ đang t&igrave;m c&aacute;ch cứu trợ những người giữ Tron đang mắc kẹt tr&ecirc;n FTX, v&agrave; c&oacute; thể hai b&ecirc;n sẽ kh&ocirc;ng đi đến được h&agrave;nh động g&igrave;.&nbsp;<em>Axios&nbsp;</em>đưa tin rằng Bankman-Fried cũng đang đ&agrave;m ph&aacute;n với Kraken, một s&agrave;n giao dịch tiền điện tử lớn kh&aacute;c.</p>\r\n\r\n<p>Về hoạt động kinh doanh của FTX tại Mỹ, Bankman-Fried khẳng định t&igrave;nh h&igrave;nh l&agrave; &quot;tốt&quot; v&agrave; &quot;ho&agrave;n to&agrave;n đủ khả năng thanh khoản&quot;.</p>', '1670397756_20220819_nid_bone.jpg', 1, 0, 29, 22, '2022-12-07 00:22:36', '2022-12-07 00:22:36'),
(37, 'Vẻ ngây thơ một thời của Địch Lệ Nhiệt Ba', 've-ngay-tho-mot-thoi-cua-dich-le-nhiet-ba', 'Địch Lệ Nhiệt Ba nổi danh là \"Mỹ nhân Tân Cương\" với vẻ đẹp rực rỡ, quyến rũ. Thời chưa làm nghệ sĩ, cô có làn da ngăm.', '<p>Địch Lệ Nhiệt Ba nổi danh l&agrave; &quot;Mỹ nh&acirc;n T&acirc;n Cương&quot; với vẻ đẹp rực rỡ, quyến rũ. Thời chưa l&agrave;m nghệ sĩ, c&ocirc; c&oacute; l&agrave;n da ngăm.</p>\r\n\r\n<p><em>Sohu&nbsp;</em>đưa tin một số h&igrave;nh ảnh cũ của Địch Lệ Nhiệt Ba được người h&acirc;m mộ chia sẻ lại. Nữ diễn vi&ecirc;n sinh năm 1992 được nhận x&eacute;t c&oacute; n&eacute;t đẹp ri&ecirc;ng nổi bật d&ugrave; chưa trở th&agrave;nh người nổi tiếng.</p>\r\n\r\n<p>Trong loạt ảnh cũ, Địch Lệ Nhiệt Ba g&acirc;y ấn tượng với sự ng&acirc;y thơ, đ&ocirc;i mắt to tr&ograve;n. V&oacute;c d&aacute;ng của ng&ocirc;i sao&nbsp;<em>Trường Ca h&agrave;nh</em>&nbsp;cao r&aacute;o, quyến rũ do đ&oacute; c&ocirc; l&agrave;m nghề người mẫu ảnh trước khi đi đ&oacute;ng phim. Kh&aacute;n giả cũng khen ngợi đường n&eacute;t sắc sảo tr&ecirc;n khu&ocirc;n mặt, nhan sắc lai T&acirc;y cuốn h&uacute;t do nữ diễn vi&ecirc;n l&agrave; người của d&acirc;n tộc Duy Ng&ocirc; Nhĩ, T&acirc;n Cương.</p>\r\n\r\n<p>Theo<em>&nbsp;Sohu</em>, sau nhiều năm hoạt động nghệ thuật, sắc v&oacute;c của Địch Lệ Nhiệt Ba ng&agrave;y c&agrave;ng thăng hạng. Trước đ&oacute;, c&ocirc; c&oacute; l&agrave;n da ngăm, kh&ocirc;ng đều m&agrave;u, nhưng hiện tại, mỹ nh&acirc;n T&acirc;n Cương đ&atilde; c&oacute; l&agrave;n da trắng sứ.</p>\r\n\r\n<p><em>Sohu</em>&nbsp;cho biết th&ecirc;m người h&acirc;m mộ đang chờ đợi Địch Lệ Nhiệt Ba lựa chọn dự &aacute;n mới. Sau khi kết th&uacute;c việc quay phim&nbsp;<em>C&ocirc;ng tố tinh anh</em>, c&ocirc; đ&atilde; 5 th&aacute;ng kh&ocirc;ng v&agrave;o đo&agrave;n phim. C&ocirc; chỉ thỉnh thoảng tham gia một số sự kiện thương mại cho nh&atilde;n h&agrave;ng m&agrave; người đẹp l&agrave;m người đại diện. Ngo&agrave;i ra, c&ocirc; thường chia sẻ h&igrave;nh ảnh đi du lịch, xem triển l&atilde;m l&ecirc;n mạng x&atilde; hội.</p>\r\n\r\n<p>Địch Lệ Nhiệt Ba c&oacute; đường n&eacute;t sắc sảo, nổi bật khi chưa nổi tiếng. Ảnh: Sina</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Dich Le Nhiet Ba anh 4\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/kbd_pilk/2022_12_06/dich_le_nhiet_ba1.jpg\" style=\"height:951px; width:652px\" /></p>\r\n\r\n<p>Địch Lệ Nhiệt Ba c&oacute; đường n&eacute;t sắc sảo, nổi bật khi chưa nổi tiếng. Ảnh: Sina</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Dich Le Nhiet Ba anh 3\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/kbd_pilk/2022_12_06/dich_le_nhiet_ba2.jpg\" style=\"height:1317px; width:1242px\" /></p>\r\n\r\n<p>Địch Lệ Nhiệt Ba c&oacute; đường n&eacute;t sắc sảo, nổi bật khi chưa nổi tiếng. Ảnh: Sina</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Dich Le Nhiet Ba anh 2\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/kbd_pilk/2022_12_06/dich_le_nhiet_ba7.jpg\" style=\"height:1344px; width:1080px\" /></p>\r\n\r\n<p>Địch Lệ Nhiệt Ba c&oacute; đường n&eacute;t sắc sảo, nổi bật khi chưa nổi tiếng. Ảnh: Sina</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Dich Le Nhiet Ba anh 1\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/kbd_pilk/2022_12_06/dich_le_nhiet_ba5a.jpg\" style=\"height:922px; width:1306px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"Dich Le Nhiet Ba anh 1\" src=\"https://znews-photo.zingcdn.me/w860/Uploaded/kbd_pilk/2022_12_06/dich_le_nhiet_ba5a.jpg\" style=\"height:922px; width:1306px\" title=\"Địch Lệ Nhiệt Ba ảnh 1\" /></p>\r\n\r\n			<p><img alt=\"Dich Le Nhiet Ba anh 2\" src=\"https://znews-photo.zingcdn.me/w860/Uploaded/kbd_pilk/2022_12_06/dich_le_nhiet_ba7.jpg\" style=\"height:1344px; width:1080px\" title=\"Địch Lệ Nhiệt Ba ảnh 2\" /></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"Dich Le Nhiet Ba anh 3\" src=\"https://znews-photo.zingcdn.me/w860/Uploaded/kbd_pilk/2022_12_06/dich_le_nhiet_ba2.jpg\" style=\"height:1317px; width:1242px\" title=\"Địch Lệ Nhiệt Ba ảnh 3\" /></p>\r\n\r\n			<p><img alt=\"Dich Le Nhiet Ba anh 4\" src=\"https://znews-photo.zingcdn.me/w860/Uploaded/kbd_pilk/2022_12_06/dich_le_nhiet_ba1.jpg\" style=\"height:951px; width:652px\" title=\"Địch Lệ Nhiệt Ba ảnh 4\" /></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Địch Lệ Nhiệt Ba c&oacute; đường n&eacute;t sắc sảo, nổi bật khi chưa nổi tiếng. Ảnh:&nbsp;<em>Sina</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Nguồn tin ph&acirc;n t&iacute;ch, với vị thế l&agrave; ng&ocirc;i sao đỉnh lưu (nghệ sĩ c&oacute; lượng người h&acirc;m mộ đ&ocirc;ng đảo, danh tiếng hot nhất, c&oacute; gi&aacute; trị thương mại cao nhất), Địch Lệ Nhiệt Ba kh&ocirc;ng thiếu phim để đ&oacute;ng. C&ocirc; được c&aacute;c nh&agrave; sản xuất ưu &aacute;i mời tham gia nhiều dự &aacute;n lớn.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, bước sang tuổi 30, Địch Lệ Nhiệt Ba muốn lựa chọn những dự &aacute;n c&oacute; chiều s&acirc;u về kịch bản hơn, thử th&aacute;ch diễn xuất hơn như vai c&ocirc;ng tố vi&ecirc;n An Ni trong phim&nbsp;<em>C&ocirc;ng tố tinh anh</em>. Vai diễn n&agrave;y ho&agrave;n to&agrave;n kh&aacute;c với những nh&acirc;n vật m&agrave; trước đ&oacute; Địch Lệ Nhiệt Ba thể hiện.</p>\r\n\r\n<p>Vai diễn trong&nbsp;<em>C&ocirc;ng tố tinh anh</em>&nbsp;c&oacute; ảnh hưởng lớn tới con đường sự nghiệp của nữ diễn vi&ecirc;n sau n&agrave;y. Nếu phim c&oacute; th&agrave;nh t&iacute;ch tốt, Địch Lệ Nhiệt Ba sẽ c&oacute; nhiều cơ hội tiếp cận c&aacute;c bộ phim c&oacute; sức nặng để tranh giải thưởng. Gi&uacute;p c&ocirc; x&oacute;a bỏ danh hiệu &quot;Thủy hậu&quot; (Thị hậu gi&agrave;nh giải thưởng nhờ đi cửa sau) tại Lễ trao giải Kim Ưng 2018. Ngược lại, c&ocirc; phải tiếp tục đ&oacute;ng những dự &aacute;n phim ng&ocirc;n t&igrave;nh, c&oacute; chất lượng kh&ocirc;ng cao.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Địch Lệ Nhiệt Ba c&ograve;n dự &aacute;n&nbsp;<em>An Lạc truyện</em>&nbsp;đ&atilde; quay xong những chưa kịp l&ecirc;n s&oacute;ng. Bạn diễn của c&ocirc; l&agrave; t&agrave;i tử Cung Tuấn, được đ&aacute;nh gi&aacute; đẹp đ&ocirc;i b&ecirc;n mỹ nh&acirc;n T&acirc;n Cương.</p>\r\n\r\n<p>Ngo&agrave;i ra, Địch Lệ Nhiệt Ba được cho l&agrave; đang c&acirc;n nhắc tham gia dự &aacute;n phim cổ trang&nbsp;<em>Vạn tra tri&ecirc;u ho&agrave;ng</em>. Bộ phim c&oacute; nội dung mới mẻ, hấp dẫn khi nữ ch&iacute;nh T&ocirc; Lục Hạ li&ecirc;n tục xuất hiện để gi&uacute;p đỡ những c&ocirc; g&aacute;i c&oacute; số phận khổ sở, gi&uacute;p họ thay đổi vận mệnh. Nội dung của phim trải qua nhiều c&acirc;u chuyện kh&aacute;c nhau, ở những thời đại kh&aacute;c biệt.</p>', '1670397930_dich_le_nhiet_ba8.jpg', 1, 0, 28, 22, '2022-12-07 00:25:30', '2022-12-07 00:25:30'),
(38, 'Thay đổi bước ngoặt trong chiến lược Zero Covid-19 của Trung Quốc', 'thay-doi-buoc-ngoat-trong-chien-luoc-zero-covid-19-cua-trung-quoc', 'Giới chức Trung Quốc ngày 7/12 cho biết sẽ nới lỏng các biện pháp giãn cách Covid-19, khi người có triệu chứng nhẹ hoặc không triệu chứng có thể cách ly tại nhà.', '<p>Giới chức Trung Quốc ng&agrave;y 7/12 cho biết sẽ nới lỏng c&aacute;c biện ph&aacute;p gi&atilde;n c&aacute;ch Covid-19, khi người c&oacute; triệu chứng nhẹ hoặc kh&ocirc;ng triệu chứng c&oacute; thể c&aacute;ch ly tại nh&agrave;.</p>\r\n\r\n<p>Người d&acirc;n đeo khẩu trang tr&ecirc;n đường phố tại Thượng Hải, Trung Quốc, h&ocirc;m 6/12. Ảnh: Reuters.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/ovhunah/2022_12_05/2022_12_06T092511Z_1008234367_RC280Y9KN063_RTRMADP_3_HEALTH_CORONAVIRUS_CHINA.JPG\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://znews-photo.zingcdn.me/w960/Uploaded/ovhunah/2022_12_05/2022_12_06T092511Z_1008234367_RC280Y9KN063_RTRMADP_3_HEALTH_CORONAVIRUS_CHINA.JPG\" title=\"null\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Người d&acirc;n đeo khẩu trang tr&ecirc;n đường phố tại Thượng Hải, Trung Quốc, h&ocirc;m 6/12. Ảnh:&nbsp;<em>Reuters.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;Những người kh&ocirc;ng c&oacute; triệu chứng v&agrave; c&aacute;c trường hợp nhẹ c&oacute; thể được c&aacute;ch ly tại nh&agrave;, đồng thời tăng cường theo d&otilde;i sức khỏe v&agrave; c&oacute; thể chuyển đến c&aacute;c bệnh viện được chỉ định để điều trị kịp thời nếu t&igrave;nh trạng của họ trở n&ecirc;n nghi&ecirc;m trọng&quot;, Ủy ban Y tế&nbsp;<a href=\"https://zingnews.vn/tieu-diem/trung-quoc.html\">Trung Quốc</a>&nbsp;(NHC) cho biết ng&agrave;y 7/12,&nbsp;<em>Guardian&nbsp;</em>đưa tin.</p>\r\n\r\n<p>NHC n&oacute;i th&ecirc;m hầu hết trường hợp l&agrave; dương t&iacute;nh kh&ocirc;ng c&oacute; triệu chứng v&agrave; c&aacute;c trường hợp nhẹ, do đ&oacute; kh&ocirc;ng cần điều trị đặc biệt.</p>\r\n\r\n<p>Theo&nbsp;<em>Bloomberg</em>, đ&acirc;y l&agrave; sự thay đổi lớn trong ch&iacute;nh s&aacute;ch chống Covid-19 của Trung Quốc, nhằm kh&ocirc;i phục nền kinh tế v&agrave; giải quyết nhiều phản &aacute;nh trong c&ocirc;ng ch&uacute;ng.</p>\r\n\r\n<p>Trong 10 biện ph&aacute;p mới được c&ocirc;ng bố, giới chức tập trung v&agrave;o đẩy nhanh việc ti&ecirc;m chủng cho người cao tuổi; người d&acirc;n cũng kh&ocirc;ng cần phải tr&igrave;nh m&atilde; sức khỏe tr&ecirc;n ứng dụng điện thoại để được ph&eacute;p đi lại.</p>\r\n\r\n<p>Ngo&agrave;i ra, việc chỉ định khu vực nguy cơ cao chỉ được giới hạn trong phạm vi từng t&ograve;a nh&agrave;, thay v&igrave; to&agrave;n bộ khu d&acirc;n cư.</p>\r\n\r\n<p>Giới chức y tế Trung Quốc cho biết &quot;sẽ đảm bảo an to&agrave;n v&agrave; sức khỏe người d&acirc;n ở mức lớn nhất, đồng thời giữ t&aacute;c động đến ph&aacute;t triển kinh tế x&atilde; hội ở mức tối thiểu&quot;,&nbsp;<em>South China Morning Post</em>&nbsp;cho hay.</p>\r\n\r\n<p>Tuần trước, Ph&oacute; thủ tướng Trung Quốc T&ocirc;n Xu&acirc;n Lan, quan chức h&agrave;ng đầu phụ tr&aacute;ch kiểm so&aacute;t Covid-19, n&oacute;i rằng bản chất của virus đ&atilde; thay đổi, v&agrave; c&aacute;c biến chủng mới &iacute;t g&acirc;y bệnh hơn.</p>\r\n\r\n<p>B&agrave; nhấn mạnh đất nước đang đứng trước &quot;một giai đoạn mới, với c&aacute;c nhiệm vụ mới&quot;.</p>\r\n\r\n<p>B&agrave; T&ocirc;n Xu&acirc;n Lan khẳng định việc điều chỉnh c&aacute;c biện ph&aacute;p chống Covid-19 sẽ diễn &quot;theo từng bước nhỏ, nhưng kh&ocirc;ng ngừng&quot;.</p>', '1670398076_zerocovid.png', 1, 0, 30, 22, '2022-12-07 00:27:56', '2022-12-07 00:27:56'),
(39, 'Người bị sốt xuất huyết ăn gì để tăng tiểu cầu?', 'nguoi-bi-sot-xuat-huyet-an-gi-de-tang-tieu-cau?', 'Việc bổ sung dinh dưỡng hợp lý để tăng tiểu cầu cho người sốt xuất huyết rất quan trọng, giúp bệnh nhân nhanh chóng hồi phục sức khỏe và phòng tránh các biến chứng', '<p>Việc bổ sung dinh dưỡng hợp l&yacute; để tăng tiểu cầu cho người sốt xuất huyết rất quan trọng, gi&uacute;p bệnh nh&acirc;n nhanh ch&oacute;ng hồi phục sức khỏe v&agrave; ph&ograve;ng tr&aacute;nh c&aacute;c biến chứng.</p>\r\n\r\n<p>Để tăng tiểu cầu cho bệnh nh&acirc;n sốt xuất huyết bằng thực phẩm, người d&acirc;n n&ecirc;n d&ugrave;ng c&aacute;c m&oacute;n gi&agrave;u gi&agrave;u kho&aacute;ng chất v&agrave; chất dinh dưỡng như sắt, folate, vitamin C v&agrave; vitamin B-12. Ảnh: Lifegate.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/gtnvzv/2022_12_06/verdira_mese_universitarie_e1666276811887_1.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để tăng tiểu cầu cho bệnh nh&acirc;n sốt xuất huyết bằng thực phẩm, người d&acirc;n n&ecirc;n d&ugrave;ng c&aacute;c m&oacute;n gi&agrave;u gi&agrave;u kho&aacute;ng chất v&agrave; chất dinh dưỡng như sắt, folate, vitamin C v&agrave; vitamin B-12. Ảnh: Lifegate.</p>\r\n\r\n<p><img alt=\"\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/gtnvzv/2022_12_06/verdira_mese_universitarie_e1666276811887_1.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://znews-photo.zingcdn.me/w960/Uploaded/gtnvzv/2022_12_06/verdira_mese_universitarie_e1666276811887_1.jpg\" title=\"null\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Để tăng tiểu cầu cho bệnh nh&acirc;n sốt xuất huyết bằng thực phẩm, người d&acirc;n n&ecirc;n d&ugrave;ng c&aacute;c m&oacute;n gi&agrave;u gi&agrave;u kho&aacute;ng chất v&agrave; chất dinh dưỡng như sắt, folate, vitamin C v&agrave; vitamin B-12. Ảnh:&nbsp;<em>Lifegate</em>.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TS.BS. Trương Hồng Sơn, Viện trưởng Viện Y học ứng dụng Việt Nam, cho biết biến chứng nguy hiểm nhất của bệnh sốt xuất huyết ch&iacute;nh l&agrave; g&acirc;y hạ tiểu cầu. Nếu kh&ocirc;ng được ph&aacute;t hiện v&agrave; xử tr&iacute; sớm, bệnh c&oacute; thể g&acirc;y tử vong.</p>\r\n\r\n<p>Tiểu cầu l&agrave; c&aacute;c tế b&agrave;o m&aacute;u gi&uacute;p đ&ocirc;ng m&aacute;u khi cần thiết. Ch&uacute;ng li&ecirc;n kết v&agrave; d&iacute;nh v&agrave;o nhau trong nỗ lực v&aacute; bất kỳ tổn thương n&agrave;o đối với ni&ecirc;m mạc mạch m&aacute;u. Trong một mẫu m&aacute;u điển h&igrave;nh, c&oacute; 1,5 đến 4 lac tiểu cầu tr&ecirc;n mỗi microlit. Con số nhỏ hơn 1,5 lac được gọi l&agrave; giảm tiểu cầu v&agrave; con số lớn hơn 4 lac được gọi l&agrave; tăng tiểu cầu.</p>\r\n\r\n<p>Khi mức tiểu cầu b&igrave;nh thường giảm (giảm tiểu cầu), cơ thể ch&uacute;ng ta bắt đầu xuất hiện c&aacute;c triệu chứng dễ bị bầm t&iacute;m, chảy m&aacute;u, mệt mỏi... Trong bệnh sốt xuất huyết, mức độ tiểu cầu giảm, sự h&igrave;nh th&agrave;nh cục m&aacute;u đ&ocirc;ng giảm.</p>\r\n\r\n<h3>Ăn g&igrave; gi&uacute;p tăng tiểu cầu?</h3>\r\n\r\n<p>Việc bổ sung dinh dưỡng hợp l&yacute; để tăng tiểu cầu cho người sốt xuất huyết rất quan trọng, gi&uacute;p bệnh nh&acirc;n nhanh ch&oacute;ng hồi phục sức khỏe v&agrave; ph&ograve;ng tr&aacute;nh c&aacute;c biến chứng.</p>\r\n\r\n<p>Theo TS.BS. Trương Hồng Sơn, để tăng tiểu cầu cho bệnh nh&acirc;n sốt xuất huyết bằng thực phẩm, người d&acirc;n n&ecirc;n d&ugrave;ng c&aacute;c m&oacute;n gi&agrave;u gi&agrave;u kho&aacute;ng chất v&agrave; chất dinh dưỡng như sắt, folate, vitamin C v&agrave; vitamin B-12.</p>\r\n\r\n<p>Ng&agrave;y nay, tất cả chất dinh dưỡng n&agrave;y đều c&oacute; ở dạng vi&ecirc;n uống bổ sung, nhưng tốt nhất l&agrave; bạn n&ecirc;n th&ecirc;m ch&uacute;ng một c&aacute;ch tự nhi&ecirc;n qua thực phẩm. Ăn uống l&agrave;nh mạnh l&agrave; điều cần thiết để lấy lại sức khỏe.</p>\r\n\r\n<p>&quot;Tuy nhi&ecirc;n, việc tăng số lượng tiểu cầu chỉ bằng thực phẩm v&agrave; tập thể dục l&agrave; kh&aacute; kh&oacute; khăn. Để phục hồi số lượng tiểu cầu b&igrave;nh thường, một số bệnh như sốt si&ecirc;u vi v&agrave; sốt xuất huyết đ&ocirc;i khi cần truyền tiểu cầu qua đường tĩnh mạch&quot;, b&aacute;c sĩ Sơn cho hay.</p>\r\n\r\n<p>Vị chuy&ecirc;n gia n&agrave;y cũng liệt k&ecirc; danh s&aacute;ch c&aacute;c loại thực phẩm l&agrave;m tăng tiểu cầu một c&aacute;ch tự nhi&ecirc;n.</p>\r\n\r\n<p><strong>Chiết xuất l&aacute; đu đủ</strong></p>\r\n\r\n<p>Thực tế, ti&ecirc;u thụ đu đủ hoặc chiết xuất từ ​​l&aacute; đu đủ sẽ gi&uacute;p bạn tăng số lượng tiểu tự nhi&ecirc;n, nhanh ch&oacute;ng chỉ trong v&agrave;i ng&agrave;y. C&aacute;c nh&agrave; nghi&ecirc;n cứu cho rằng nước &eacute;p l&aacute; đu đủ rất c&oacute; lợi cho việc điều trị số lượng tiểu cầu thấp.</p>\r\n\r\n<p>Hướng dẫn sử dụng l&aacute; đu đủ:</p>\r\n\r\n<ul>\r\n	<li>Cho l&aacute; đu đủ đ&atilde; rửa sạch v&agrave;o m&aacute;y xay sinh tố hoặc cối gi&atilde; nhuyễn.</li>\r\n	<li>Th&ecirc;m nước lọc đun s&ocirc;i để nguội v&agrave; tiến h&agrave;nh xay/gi&atilde;. Bạn sẽ thu được nước &eacute;p c&oacute; m&agrave;u xanh đậm.</li>\r\n	<li>Loại bỏ b&atilde; thừa, uống 2 muỗng canh nước l&aacute; đu đủ mỗi ng&agrave;y.</li>\r\n</ul>\r\n\r\n<p>Hương vị của nước &eacute;p l&aacute; đu đủ rất đắng. Bạn c&oacute; thể th&ecirc;m đường khi uống để cải thiện m&ugrave;i vị trong miệng.</p>\r\n\r\n<p><strong>Quả lựu</strong></p>\r\n\r\n<p>Ngo&agrave;i việc l&agrave; một loại tr&aacute;i c&acirc;y m&ugrave;a đ&ocirc;ng ngon, lựu c&ograve;n tốt cho m&aacute;u của bạn. Ch&uacute;ng kh&ocirc;ng chỉ gi&uacute;p tăng cường năng lượng m&agrave; c&ograve;n gi&uacute;p duy tr&igrave; số lượng tiểu cầu trong m&aacute;u ở mức b&igrave;nh thường. Lựu cũng chứa nhiều chất chống oxy h&oacute;a v&agrave; vitamin C, c&oacute; thể gi&uacute;p tăng cường khả năng miễn dịch v&agrave; chống nhiễm tr&ugrave;ng hiệu quả.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Mac sot xuat huyet anh 1\" src=\"https://znews-photo.zingcdn.me/w1200/Uploaded/gtnvzv/2022_12_06/pomegranate_3_20_5_2021.jpg\" style=\"height:440px; width:700px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ngo&agrave;i việc l&agrave; một loại tr&aacute;i c&acirc;y m&ugrave;a đ&ocirc;ng ngon, lựu c&ograve;n tốt cho m&aacute;u của bạn. Ảnh:&nbsp;<em>I</em><em>nterpretation.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Rau l&aacute; xanh</strong></p>\r\n\r\n<p>Một thực phẩm kh&aacute;c để tăng tiểu cầu l&agrave; rau. C&aacute;c loại rau l&aacute; xanh như b&ocirc;ng cải xanh v&agrave; rau bina l&agrave; nguồn thực phẩm gi&agrave;u vitamin K, sắt v&agrave; axit b&eacute;o omega-3.</p>\r\n\r\n<p>B&ocirc;ng cải xanh v&agrave; rau bina n&ecirc;n được th&ecirc;m v&agrave;o chế độ ăn của người bị sốt xuất huyết. Ch&uacute;ng cũng rất gi&agrave;u kho&aacute;ng chất v&agrave; chất chống oxy h&oacute;a tốt cho cơ thể ch&uacute;ng ta. Cả hai loại rau n&agrave;y gi&uacute;p tăng cường hệ thống miễn dịch.</p>', '1670398144_verdira_mese_universitarie_e1666276811887_1.jpg', 1, 0, 24, 22, '2022-12-07 00:29:04', '2022-12-07 00:29:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hoten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `hoten`, `email`, `quyen`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(5, 'Nguyễn Đức Bình', 'binh@gmail.com', 0, NULL, '$2y$10$tnf5p4tpTpv7R8d8OpqsUunVaokdKE1K8l.SgnP9cTdSljSQA7Z.W', NULL, '2022-11-15 21:18:19', '2022-12-01 23:36:20', '1669962980_avatar_sanji.jpg'),
(7, 'Nguyễn Huỳnh Thanh Hải', 'hai@gmail.com', 2, NULL, '$2y$10$GyuxsCwqxFuKWdY9D5GJGOyP8Rq/S2.n22Vt69e.RTuegxohRdjfy', NULL, '2022-12-01 22:53:55', '2022-12-03 20:46:27', '1670125587_avatar_Screenshot 11_24_2022 8_57_27 AM.png'),
(17, 'Nguyễn Huỳnh Thanh Hải', 'h@gmail.com', 2, NULL, '$2y$10$R4Ir9tfQvyZnZyySmlnSdOYFXTrlYgeAy5CLdojFeBOHCaWnhKfaS', NULL, '2022-12-02 22:07:36', '2022-12-02 22:07:36', 'user.png'),
(22, 'Thanh Hải', 'hai.nht1004@gmail.com', 1, NULL, '$2y$10$QcQ853zafBOoAp7zRdHuWOhVbii1VbZU5M8Q1K1BKbtVVfMBEWme2', NULL, '2022-12-02 22:49:16', '2022-12-02 22:49:16', 'user.png'),
(23, 'Đức Bình', 'nguyenducbinh.02122001@gmail.com', 2, NULL, '$2y$10$q6C/eLv1AE6aLzVPXkjvzOoFI.tTjHTQDhAOx9UZfzZBC/E//fmDu', NULL, '2022-12-07 00:31:36', '2022-12-07 00:31:36', 'user.png');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tieude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieudekhongdau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `tieude`, `tieudekhongdau`, `link`, `created_at`, `updated_at`) VALUES
(2, 'cái tết của ông năm', 'cai-tet-cua-ong-nam', 'https://www.youtube.com/embed/fs_2D2VGuHo', '2022-12-01 19:05:49', '2022-12-02 19:33:21'),
(3, 'NHỮNG CÔNG TRÌNH  ĐƯỢC TRUNG QUỐC SAO CHÉP: TỪ THÁP NGHIÊNG PISA CHO ĐẾN CẦU VÀNG ĐÀ NẴNG', 'nhung-cong-trinh--duoc-trung-quoc-sao-chep:-tu-thap-nghieng-pisa-cho-den-cau-vang-da-nang', 'https://www.youtube.com/embed/LGJCoaUF_7A', '2022-12-02 21:47:14', '2022-12-02 21:48:08'),
(4, 'BÍ ẨN \"TAM GIÁC QUỶ\" BERMUDA', 'bi-an-\"tam-giac-quy\"-bermuda', 'https://www.youtube.com/embed/RLeInPE51DI', '2022-12-02 21:49:11', '2022-12-02 21:49:11'),
(5, 'Toà trả hồ sơ điều tra bổ sung, Trang Nemo quỳ xin lỗi bị hại', 'toa-tra-ho-so-dieu-tra-bo-sung--trang-nemo-quy-xin-loi-bi-hai', 'https://www.youtube.com/embed/dGtgHSNJ7Xg', '2022-12-02 21:49:54', '2022-12-02 21:49:54'),
(6, 'Cụ bà nghẹn ngào trải lòng sau drama: Buồn lắm nhưng nó tới xin lỗi rồi nên thôi bỏ qua', 'cu-ba-nghen-ngao-trai-long-sau-drama:-buon-lam-nhung-no-toi-xin-loi-roi-nen-thoi-bo-qua', 'https://www.youtube.com/embed/xacL22fljdE', '2022-12-02 21:50:23', '2022-12-02 21:50:23'),
(7, 'Phim này là bố đường của mọi phim siêu anh hùng | Review Tử Tế: 7 Samurai', 'phim-nay-la-bo-duong-cua-moi-phim-sieu-anh-hung-|-review-tu-te:-7-samurai', 'https://www.youtube.com/embed/HCt18_YoljI', '2022-12-02 21:51:10', '2022-12-02 21:51:10'),
(8, 'Như Lai Thiên Thủ Chưởng VS. Súng Lục Quyền | Recap Xàm : Tân Thiếu Lâm Tự', 'nhu-lai-thien-thu-chuong-vs.-sung-luc-quyen-|-recap-xam-:-tan-thieu-lam-tu', 'https://www.youtube.com/embed/mV4NpjIb2xg', '2022-12-02 21:51:47', '2022-12-02 21:51:47'),
(9, 'From Bắc Kinh with Love | Recap Xàm #311: Quốc Sản 007', 'from-bac-kinh-with-love-|-recap-xam--311:-quoc-san-007', 'https://www.youtube.com/embed/FvptBHicdNo', '2022-12-02 21:52:11', '2022-12-02 21:52:11'),
(10, 'Sức Mạnh gia đình sẽ hóa giải tất cả | Reup 108 : KungFu Panda', 'suc-manh-gia-dinh-se-hoa-giai-tat-ca-|-reup-108-:-kungfu-panda', 'https://www.youtube.com/embed/tPEpUf_naOA', '2022-12-02 21:52:45', '2022-12-02 21:52:45'),
(11, 'Thỏ và Cáo là đôi bạn thân | Recap Xàm Zootopia', 'tho-va-cao-la-doi-ban-than-|-recap-xam-zootopia', 'https://www.youtube.com/embed/ljx2jkOOLDM', '2022-12-02 21:53:39', '2022-12-02 21:53:39'),
(12, 'Nữ tài xế cố tình tông vào CSGT vì sợ muộn giờ làm', 'nu-tai-xe-co-tinh-tong-vao-csgt-vi-so-muon-gio-lam', 'https://www.youtube.com/embed/UF1Lr-cTXZ4', '2022-12-02 21:54:15', '2022-12-02 21:54:15'),
(13, 'Lời khai Nguyễn Kim Trung Thái: Xóa dữ liệu camera vì “bấn loạn”', 'loi-khai-nguyen-kim-trung-thai:-xoa-du-lieu-camera-vi--ban-loan-', 'https://www.youtube.com/embed/qbBpiXc8UFo', '2022-12-02 21:54:35', '2022-12-02 21:54:35'),
(14, 'Luật sư nói về bản án cho dì ghẻ, cha ruột vụ bạo hành bé 8 tuổi', 'luat-su-noi-ve-ban-an-cho-di-ghe--cha-ruot-vu-bao-hanh-be-8-tuoi', 'https://www.youtube.com/embed/1GzIc_DNSCo', '2022-12-02 21:54:55', '2022-12-02 21:54:55'),
(15, 'Đội tuyển Đức rời Qatar trong nỗi thất vọng ngập tràn| World Cup 2022', 'doi-tuyen-duc-roi-qatar-trong-noi-that-vong-ngap-tran|-world-cup-2022', 'https://www.youtube.com/embed/aak0FdkHB_Y', '2022-12-02 21:56:30', '2022-12-02 21:56:30'),
(16, 'Tin tức công nghệ 2/10 | Biến giấc mơ thành hiện thực trong một thế giới tồn tại song song | FBNC', 'tin-tuc-cong-nghe-2/10-|-bien-giac-mo-thanh-hien-thuc-trong-mot-the-gioi-ton-tai-song-song-|-fbnc', 'https://www.youtube.com/embed/Os8VpbDgefw', '2022-12-02 21:57:24', '2022-12-02 21:57:24'),
(17, 'Bản tin World Cup 2/12 | Thụy Sĩ - Serbia: lặp lại kịch bản 4 năm trước ? | FBNC', 'ban-tin-world-cup-2/12-|-thuy-si---serbia:-lap-lai-kich-ban-4-nam-truoc-?-|-fbnc', 'https://www.youtube.com/embed/tdWsbUByXhI', '2022-12-02 21:58:02', '2022-12-02 22:01:59'),
(18, 'Làm sao để hiểu biết công nghệ? | Các nguồn tin mình đọc mỗi ngày', 'lam-sao-de-hieu-biet-cong-nghe?-|-cac-nguon-tin-minh-doc-moi-ngay', 'https://www.youtube.com/embed/ZJx5V-rJ9cU', '2022-12-02 21:58:43', '2022-12-02 21:58:43'),
(20, 'Tin tức công nghệ 3/7 | Windows 11 mới có gì hấp dẫn ? | FBNC', 'tin-tuc-cong-nghe-3/7-|-windows-11-moi-co-gi-hap-dan-?-|-fbnc', 'https://www.youtube.com/embed/uSEir4MRsFc', '2022-12-02 22:00:51', '2022-12-02 22:01:23'),
(21, 'Thời sự hôm nay 1/12 | Sau biến cố, tỷ phú Jack Ma đang sống ở đâu? | FBNC', 'thoi-su-hom-nay-1/12-|-sau-bien-co--ty-phu-jack-ma-dang-song-o-dau?-|-fbnc', 'https://www.youtube.com/embed/A-79t6u3cuo', '2022-12-02 22:02:39', '2022-12-02 22:02:39'),
(22, 'Prudential Việt Nam chung tay vì một tương lai độc lập cho người lớn tuổi | FBNC', 'prudential-viet-nam-chung-tay-vi-mot-tuong-lai-doc-lap-cho-nguoi-lon-tuoi-|-fbnc', 'https://www.youtube.com/embed/Stm0p-3k87c', '2022-12-02 22:03:24', '2022-12-02 22:03:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binhluan_id_tintuc_foreign` (`id_tintuc`),
  ADD KEY `binhluan_id_user_foreign` (`id_user`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `loaitin`
--
ALTER TABLE `loaitin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loaitin_id_theloai_foreign` (`id_theloai`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tintuc_id_loaitin_foreign` (`id_loaitin`),
  ADD KEY `tintuc_id_user_foreign` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaitin`
--
ALTER TABLE `loaitin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_id_tintuc_foreign` FOREIGN KEY (`id_tintuc`) REFERENCES `tintuc` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `binhluan_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `loaitin`
--
ALTER TABLE `loaitin`
  ADD CONSTRAINT `loaitin_id_theloai_foreign` FOREIGN KEY (`id_theloai`) REFERENCES `theloai` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_id_loaitin_foreign` FOREIGN KEY (`id_loaitin`) REFERENCES `loaitin` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tintuc_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
