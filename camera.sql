-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2018 at 11:35 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `camera`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adv`
--

CREATE TABLE `tbl_adv` (
  `pk_adv_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `c_url` varchar(500) NOT NULL,
  `c_hotadv` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_adv`
--

INSERT INTO `tbl_adv` (`pk_adv_id`, `c_name`, `c_img`, `c_url`, `c_hotadv`) VALUES
(1, 'adv left 1', '15100552261508749465banner03d5.jpg', 'http://vnexpress.net', 0),
(2, 'adv left 2', '1508920413widebanner221b.jpg', 'http://dantri.com.vn', 1),
(3, 'ưqe', 'ưqe', 'ưewqe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `pk_category_product_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_home` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`pk_category_product_id`, `c_name`, `c_home`) VALUES
(3, 'Camera quan sát', 1),
(4, 'Máy ảnh', 1),
(5, 'Dịch Vụ Sửa Chữa', 0),
(6, 'Iphone', 1),
(7, 'Sam Sung', 0),
(9, 'Xixaomi', 0),
(10, 'iPHONE', 0),
(11, 'OPPO', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `hovaten` varchar(500) NOT NULL,
  `diachi` varchar(2000) NOT NULL,
  `dienthoai` varchar(200) NOT NULL,
  `ghichu` text NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `hovaten`, `diachi`, `dienthoai`, `ghichu`, `email`, `password`) VALUES
(22, 'Nguyễn Văn A', '', '', '', 'nva@mail.com', '202cb962ac59075b964b07152d234b70'),
(23, 'test', 'test1', '123', '', 'admin@mail.com', '202cb962ac59075b964b07152d234b70'),
(28, 'nguyeenh thanh', 'thanh xuân', '0948648684', '', 'hahaha@gmail.com', 'password'),
(29, 'nguyễn hoàng nam', 'thanh nhàn', '06948644', '', 'nhanha@gmail.com', '202cb962ac59075b964b07152d234b70'),
(30, 'nguyeenh thanh', '02', 'giahu', '', 'soldiersoociu@gmail.com', 'password'),
(31, 'nguyeenh thanh', 'hoàng hà', '01689487864', '', 'nhanha123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(32, 'thanhkma123', 'thanh hóa', '123456', '', 'thanhkma1703@gmail.com', '202cb962ac59075b964b07152d234b70'),
(33, 'xin chào', 'Hà Đông', '01688487864', '', 'xinchao@gmail.com', '202cb962ac59075b964b07152d234b70'),
(34, 'nguyeenh thanh', '1703', '01689487864', '', 'thành', '202cb962ac59075b964b07152d234b70'),
(35, 'Thu Hương', 'Thanh hóa', '01689487864', '', 'huong@gmail.com', '202cb962ac59075b964b07152d234b70'),
(36, 'thanh123', 'thanh xuân', '0123', '', 'thanhkma@gmail.com', '202cb962ac59075b964b07152d234b70'),
(37, 'Hà Thu Hương', 'HOẰNG HÓA THANH HÓA', '01689487864', '', 'thuhuong123@gmail.com', '25f9e794323b453885f5181f1b624d0b'),
(38, 'thanh', 'Ngày', '01688487864', '', 'hahaha123@gmail.com', '8478e2bdb758f8467225ae87ed3750c2'),
(39, 'thành nguyễn', 'Thành hóa ', '01689487864', '', 'thanh12345@gmail.com', '202cb962ac59075b964b07152d234b70'),
(40, 'hà thu hương M5', 'hà nội', '016894789578', '', 'thuhuong143@gmail.com', '202cb962ac59075b964b07152d234b70'),
(41, 'phạm hương', 'thanh hóa', '01689487864', '', 'huongpham@gmail.com', '25f9e794323b453885f5181f1b624d0b'),
(42, 'Nhu ha', '123', '', '', 'nhuha@gmail.com', '202cb962ac59075b964b07152d234b70'),
(43, 'sầ', 'sàa', 'sfsaf', 'sfasfa', 'sfafsa', 'sầ'),
(44, 'sadsa', 'saddas', 'giahusadasd', '', 'saddsa', '08d1071984bce5997c706c7746e22d4d'),
(45, 'ádsd', 'saddsa', 'giahusdasd', '', 'sdsd', '5f19644ba8a00de3f3877543789b279b'),
(46, 'NGuyễn đình thành', 'thanh hóa', '01689487864', '', 'thanhkma@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(47, 'thanh', 'adad', 'adadad', '', 'ha@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(48, 'thành kma', 'thanh hóa', '01689', '', 'ha123@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(49, 'thadadad', 'asasa', 'adminasasas', '', 'thanh@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(50, 'sâs', 'ầ', 'adminsàa', '', 'sầ', '5326193b1f15e9dc5ff27606c776b427'),
(51, 'nguyen dinh thanh', 'thanh hoas', '01689487864', '', 'thanhkma1996@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(52, 'qưeweqewqweqwe', 'adad', 'admin', '', 'thanh123@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_introduce`
--

CREATE TABLE `tbl_introduce` (
  `pk_introduce_id` int(11) UNSIGNED NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_description` varchar(20000) NOT NULL,
  `c_content` text NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `c_hotintroduce` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_introduce`
--

INSERT INTO `tbl_introduce` (`pk_introduce_id`, `c_name`, `c_description`, `c_content`, `c_img`, `c_hotintroduce`) VALUES
(1, 'Hội trại KMA', '<p>ADADADDA</p>\r\n', '<p>ADADAD</p>\r\n', '150998187823114920_1098894050246375_588046006_n.jpg', 1),
(2, 'Học viện kĩ thuật mật mã', '<p>adad</p>\r\n', '<p>addaadda</p>\r\n', '150998192123130911_1346252112187100_2394122530442815368_n.jpg', 1),
(3, 'CỘNG TÁC VIÊN TECHHOUSE', '<p>Techhouse tuyển dụng ctv viết b&agrave;i&nbsp;</p>\r\n', '<h1><span style=\"color:#c0392b\"><span style=\"font-family:Times New Roman,Times,serif\">H&atilde;y chia sẻ &yacute; kiến của bạn bằng c&aacute;ch đăng nhập v&agrave;o biểu mẫu v&agrave; gửi b&agrave;i về cho ch&uacute;ng t&ocirc;i</span></span></h1>\r\n\r\n<h1><a href=\"https://docs.google.com/forms/d/15MoTZJNCHajQOyMeRDlvDP3Adkl4KxEVUsfZ-mB4LPo/edit\">GỬI B&Agrave;I TẠI Đ&Acirc;Y</a></h1>\r\n', '150998507722688421_1961673660773583_3862922922780554804_n.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `pk_news_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_description` varchar(20000) NOT NULL,
  `c_content` text NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `c_hotnews` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`pk_news_id`, `c_name`, `c_description`, `c_content`, `c_img`, `c_hotnews`) VALUES
(15, 'Oppo khởi chạy chương trình đặt hàng trước F3 Plus tại Việt Nam@', '<p>ti&ecirc;u ch&iacute;</p>\r\n', '<p>iphone</p>\r\n', '1508749802samsung-sl-m2020f063.jpg', 1),
(16, 'Samsung lại  đá để Apple', '<h1>Samsung lại &quot;đ&aacute; đểu&quot; Apple</h1>\r\n', '<p>Cuộc đua của những h&atilde;ng điện thoại cao cấp chưa bao giờ hạ nhiệt, điển h&igrave;nh l&agrave; hai h&atilde;ng điện thoại lớn nhất hiện nay đ&oacute; l&agrave; Samsung v&agrave; Apple khi li&ecirc;n tiếp cho ra mắt những si&ecirc;u phẩm điện thoại cao cấp cạnh tranh nhau khốc liệt. Điển h&igrave;nh l&agrave; mới đ&acirc;y Samsung lại &quot;đ&aacute; đểu&quot; Apple trong lễ ra mắt Galaxy S9: Ch&ecirc; iPhone X c&oacute; tai thỏ, bỏ cảm biến v&acirc;n tay.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Chi&ecirc;u tr&ograve; d&igrave;m h&agrave;ng đối thủ của Samsung khi ra mắt sản phẩm mới Galaxy S9</strong></h2>\r\n\r\n<p><img alt=\"Chiêu trò dìm hàng đối thủ của Samsung khi ra mắt sản phẩm mới Galaxy S9\" src=\"https://msmobile.com.vn/upload_images/images/2018/02/26/Mau-S9-Plus.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>Chi&ecirc;u tr&ograve; d&igrave;m h&agrave;ng đối thủ của Samsung khi ra mắt sản phẩm mới Galaxy S9</p>\r\n\r\n<p>Được xem l&agrave; kỳ ph&ugrave;ng địch thủ trong ph&acirc;n kh&uacute;c cao cấp v&igrave; vậy Samsung kh&ocirc;ng ngần ngại &ldquo;d&igrave;m h&agrave;ng&rdquo; đối thủ để n&acirc;ng tầm sản phẩm của m&igrave;nh. Kh&ocirc;ng lấy v&iacute; dụ đ&acirc;u xa khi trong một chiến dịch quảng c&aacute;o của Samsung nhắm đ&iacute;ch t&ecirc;n đối thủ như:&nbsp;<em>&ldquo;Trưởng th&agrave;nh rồi, đừng d&ugrave;ng iPhone nữa&rdquo; &ldquo;hay c&ocirc;ng k&iacute;ch việc Apple loại bỏ jack cắm tai nghe 3.5mm tr&ecirc;n iPhone 7&rdquo;</em></p>\r\n\r\n<p><img alt=\"Samsung không ngần ngại “dìm hàng” đối thủ để nâng tầm sản phẩm của mình\" src=\"https://msmobile.com.vn/upload_images/images/2018/02/26/Cai-Tien-Samsung-Galaxy-S9-Plus.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>Samsung kh&ocirc;ng ngần ngại &ldquo;d&igrave;m h&agrave;ng&rdquo; đối thủ để n&acirc;ng tầm sản phẩm của m&igrave;nh</p>\r\n\r\n<p>V&agrave; mới đ&acirc;y nhất, trong buổi lễ ra mắt Galaxy S9 tại MWC 2018 (Barcelona, T&acirc;y Ban Nha),&nbsp;Samsung lại &quot;đ&aacute; đểu&quot; Apple trong lễ ra mắt Galaxy S9: Ch&ecirc;&nbsp;<a href=\"https://msmobile.com.vn/iphone-8-8-plus-x/iphone-x-p2906.html\" target=\"_blank\">iPhone X</a>&nbsp;c&oacute; tai thỏ, bỏ cảm biến v&acirc;n tay. Cụ thể trong b&agrave;i giới thiệu về sản phẩm mới &ocirc;ng Justin Denison - ph&oacute; chủ tịch Samsung tại Mỹ cho biết</p>\r\n\r\n<p><em>&quot;Ch&uacute;ng t&ocirc;i tạo ra một thiết kế thật b&oacute;ng bẩy v&agrave; đồng nhất khiến người d&ugrave;ng kh&oacute; c&oacute; thể t&igrave;m thấy được điểm tận c&ugrave;ng của m&agrave;n h&igrave;nh. V&agrave; như mọi khi, chiếc m&aacute;y của ch&uacute;ng t&ocirc;i kh&ocirc;ng c&oacute; tai thỏ.&quot;</em></p>\r\n\r\n<p><em>&quot;Ch&uacute;ng t&ocirc;i cũng đ&atilde; ho&agrave;n thiện mặt lưng của m&aacute;y, n&oacute; đẹp như mặt trước vậy. V&iacute; dụ l&agrave; cảm biến v&acirc;n tay, thứ ai cũng biết l&agrave; c&aacute;ch phổ biến nhất để mở kh&oacute;a điện thoại. Đ&oacute; cũng l&agrave; l&yacute; do m&agrave; ch&uacute;ng t&ocirc;i kh&ocirc;ng gỡ bỏ n&oacute;.&quot;</em></p>\r\n\r\n<p><img alt=\"Camera Galaxy S9 chụp hình siêu đỉnh\" src=\"https://msmobile.com.vn/upload_images/images/2018/02/26/Camera-Sac-Net-Tren-Samsung-Galaxy-S9-Plus.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>Camera Galaxy S9 chụp h&igrave;nh si&ecirc;u đỉnh</p>\r\n\r\n<p>Ch&uacute;ng ta dễ d&agrave;ng nhận ra Samsung đang so s&aacute;nh giữa chiếc điện thoại mới nhất Galaxy S9 v&agrave; iPhone X. Nếu như chiếc iPhone X của Apple sở hữu thiết kế m&agrave;n h&igrave;nh tr&agrave;n viền nhưng lại c&oacute; phần &ldquo;tai thỏ&rdquo; ở cạnh tr&ecirc;n được cho l&agrave; xấu x&iacute;. B&ecirc;n cạnh đ&oacute;, Apple cũng đ&atilde; gỡ bỏ cảm biến v&acirc;n tay tr&ecirc;n iPhone X v&agrave; thay thế bằng c&ocirc;ng nghệ nhận dạng khu&ocirc;n mặt Face ID mới lạ. Jack cắm tai nghe - thứ m&agrave; Samsung giễu cợt Apple c&aacute;ch đ&acirc;y 1.5 năm trước, nay vẫn c&ograve;n gi&aacute; trị khi iPhone X kh&ocirc;ng c&oacute; jack cắm n&agrave;y, c&ograve;n Galaxy S9 th&igrave; vẫn c&ograve;n vẹn nguy&ecirc;n.</p>\r\n\r\n<p><img alt=\"Tính năng mới lạ mang lại trải nghiệm ấn tượng trên Galaxy S9\" src=\"https://msmobile.com.vn/upload_images/images/2018/02/26/Cum-Camera-Samsung-Galaxy-S9-Plus.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>T&iacute;nh năng mới lạ mang lại trải nghiệm ấn tượng tr&ecirc;n Galaxy S9</p>\r\n\r\n<p>Tuy nhi&ecirc;n,&nbsp;<a href=\"https://msmobile.com.vn/dien-thoai/samsung-galaxy-s9-chinh-hang-p2960.html\" target=\"_blank\">Galaxy S9&nbsp;</a>cũng c&oacute; một số t&iacute;nh năng mới &quot;học hỏi&quot; từ iPhone, cụ thể l&agrave; AR Emoji v&agrave; loa k&eacute;p.</p>\r\n', '1510099421tải xuống (2).jpg', 1),
(17, 'Rò rỉ cấu hình và ảnh nhãn dán ở mặt sau của Huawei Y3 (2018)', '<p>H&atilde;ng nghi&ecirc;n cứu Counterpoint dự b&aacute;o sẽ c&oacute; hơn 1/3 những chiếc smartphone xuất hiện tr&ecirc;n thị trường được trang bị chip xử l&iacute; AI v&agrave;o năm 2020. Điều n&agrave;y c&oacute; nghĩa l&agrave; v&agrave;o năm 2020 cứ 3 chiếc smartphone b&aacute;n ra tr&ecirc;n thị trường sẽ c&oacute; một chiếc được trang bị chip AI với khả năng xử l&iacute; vượt trội v&agrave; th&ocirc;ng minh.</p>\r\n\r\n<p>Những con chip AI n&agrave;y c&oacute; khả năng dịch thuật, ph&aacute;t hiện m&atilde; độc, gi&uacute;p chụp ảnh đẹp hơn, thậm ch&iacute; con chip n&agrave;y c&ograve;n đưa ra những lời khuy&ecirc;n về sức khỏe v&agrave; nhận dạng h&agrave;nh vi của con người. T&iacute;nh năng m&agrave; người d&ugrave;ng kỳ vọng nhất l&agrave; khả năng nhận diện h&agrave;nh vi của người d&ugrave;ng, do chip AI c&oacute; thể gi&uacute;p người d&ugrave;ng ph&aacute;t hiện nguy cơ bị tấn c&ocirc;ng, ph&acirc;n t&iacute;ch email hay những ứng dụng di động để đưa ra cảnh c&aacute;o cho người d&ugrave;ng.</p>\r\n\r\n<p>&nbsp;Cũng theo dự b&aacute;o của Counterpoint tỉ lệ n&agrave;y sẽ được tăng dần v&agrave;o năm 2018 sẽ l&agrave; 16%, năm 2019 sẽ l&agrave; 26% v&agrave; năm 2020 sẽ đạt tỉ lệ l&agrave; 35% . Trong số c&aacute;c nh&agrave; sản xuất nổi tiếng tr&ecirc;n thế giới th&igrave; Apple l&agrave; h&atilde;ng đi đầu với con chip Apple Bionic. &nbsp;Để biến c&aacute;c chiếc smartphone ng&agrave;y c&agrave;ng th&ocirc;ng minh hơn th&igrave; g&atilde; c&ocirc;ng nghệ khủng &nbsp;n&agrave;y đang tập trung ph&aacute;t triển chip AI nhằm đem lại con chip xử l&iacute; như mong muốn.</p>\r\n\r\n<p>C&ugrave;ng với đ&oacute;, l&agrave; Apple cũng c&oacute; nhiều lợi thế hơn tr&ecirc;n thị trường với chip AI v&agrave;o năm 2020 với tỉ lệ chấp thuận cao. Trong thời gian tới c&aacute;c h&atilde;ng như Qualcom được kỳ vọng sẽ bắt kịp nhanh với xu hướng chip AI.</p>\r\n\r\n<p>C&oacute; thể, Qualcomm sẽ vượt mặt Samsung, Huawei v&agrave; xếp thứ hai về khối lượng sản xuất. Ngo&agrave;i ra, Counterpoint cũng khẳng định rằng những chiếc smartphone được trang bị chip AI sẽ ph&aacute;t triển nhanh ở d&ograve;ng sản phẩm cao cấp. Đến năm 2018 c&aacute;c d&ograve;ng sản phẩm mang ph&acirc;n kh&uacute;c tầm trung sẽ bắt đầu được sở hữu con chip AI.&nbsp;</p>\r\n', '<p>asus</p>\r\n', '1510099635tải xuống (4).jpg', 0),
(19, 'Asus vừa trình làng iPhone X chạy Android', '<p>Zenfone 5 &ndash; chiếc điện thoại đến từ nh&agrave; sản xuất Asus vừa tr&igrave;nh l&agrave;ng tại MWC 2018 c&oacute; thiết kế mặt trước giống iPhone X đang l&agrave; xu hướng thời trang smartphone hiện nay thu h&uacute;t người d&ugrave;ng c&ocirc;ng nghệ.</p>\r\n', '<p>Zenfone 5 &ndash; chiếc điện thoại đến từ nh&agrave; sản xuất Asus vừa tr&igrave;nh l&agrave;ng tại MWC 2018 c&oacute; thiết kế mặt trước giống iPhone X đang l&agrave; xu hướng thời trang smartphone hiện nay thu h&uacute;t người d&ugrave;ng c&ocirc;ng nghệ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Cận Cảnh Asus Zenfone 5\" src=\"https://msmobile.com.vn/upload_images/images/2018/03/01/camera-kep-zenfone-5.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>Cận Cảnh Asus Zenfone 5</p>\r\n\r\n<h2><strong>Asus vừa tr&igrave;nh l&agrave;ng &#39;iPhone X chạy Android</strong></h2>\r\n\r\n<p><img alt=\"Asus vừa trình làng \'iPhone X chạy Android\" src=\"https://msmobile.com.vn/upload_images/images/2018/03/01/so-sanh-Zenfone-5-iPhone-x.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>Asus vừa tr&igrave;nh l&agrave;ng &#39;iPhone X chạy Android</p>\r\n\r\n<p>iPhone X đang l&agrave; chiếc điện thoại đẳng cấp bậc nhất của Apple, ch&iacute;nh v&igrave; vậy m&agrave; nhiều h&atilde;ng điện thoại đ&atilde; tham khảo xu hướng thiết kế cũng như hiệu năng của iPhone X. Kh&ocirc;ng chỉ Zenfone 5, một số mẫu smartphone Android kh&aacute;c đến từ Trung Quốc cũng bắt chước thiết kế của iPhone X. &Ocirc;ng Marcel Campos, Gi&aacute;m đốc tiếp thị to&agrave;n cầu của Asus, chia sẻ. &ldquo;Một số người sẽ n&oacute;i ch&uacute;ng t&ocirc;i sao ch&eacute;p iPhone X, nhưng điều đ&oacute; cũng chẳng tr&aacute;nh được. Nhu cầu của người d&ugrave;ng l&agrave; tr&ecirc;n hết&rdquo;.</p>\r\n\r\n<h2><strong>Ba mẫu model mới nhất từ Asus trong năm nay</strong></h2>\r\n\r\n<p><img alt=\"Công Nghệ Loa Kép Trên Asus Zenfone 5\" src=\"https://msmobile.com.vn/upload_images/images/2018/03/01/loa-kep-zenfone-5.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>C&ocirc;ng Nghệ Loa K&eacute;p Tr&ecirc;n Asus Zenfone 5</p>\r\n\r\n<p>Trong năm nay,Asus hứa hẹn ra mắt Zenfone mới gồm ba model: Zenfone 5 (6,2 inch), Zenfone 5Z cao cấp hơn với thiết kế tương tự nhưng th&ocirc;ng số phần cứng cao hơn, v&agrave; Zenfone 5 Lite (tại Mỹ l&agrave; Zenfone 5Q) c&oacute; thiết kế kh&aacute;c ho&agrave;n to&agrave;n.</p>\r\n\r\n<p>Trong đ&oacute;, Zenfone 5 được thiết kế tốt hơn, m&agrave;n h&igrave;nh 6,2 inch lớn hơn nhưng k&iacute;ch thước chỉ tương đương với chiếc Zenfone 4 cỡ 5,5 inch. Với thiết kế, Asus đ&atilde; l&agrave;m mỏng viền m&agrave;n h&igrave;nh đạt tỉ lệ tới 90% v&agrave; kh&ocirc;ng c&ograve;n c&aacute;c v&ugrave;ng thừa th&atilde;i như trước đ&acirc;y.&nbsp;B&ecirc;n cạnh đ&oacute;, Zenfone 5 c&oacute; cơ chế tự động hiệu chỉnh nhiệt độ m&agrave;u, giống t&iacute;nh năng True Tone tr&ecirc;n iPhone X, cho ph&eacute;p điện thoại theo d&otilde;i &aacute;nh mắt người d&ugrave;ng để từ đ&oacute; điều chỉnh m&agrave;n h&igrave;nh cho ph&ugrave; hợp. H&atilde;ng Asus gọi đ&acirc;y l&agrave; c&ocirc;ng nghệ tr&iacute; tuệ nh&acirc;n tạo (AI) m&agrave; kh&ocirc;ng c&ocirc;ng bố th&ocirc;ng tin chi tiết.&nbsp;</p>\r\n\r\n<h2><strong>Zenfone 5 - phi&ecirc;n bản iPhone X chạy Android</strong></h2>\r\n\r\n<p><img alt=\"Zenimoji Tái Tạo Khuôn Mặt Chân Thực Nhất\" src=\"https://msmobile.com.vn/upload_images/images/2018/03/01/Zenimoji-Zenfone-5.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>Zenimoji T&aacute;i Tạo Khu&ocirc;n Mặt Ch&acirc;n Thực Nhất</p>\r\n\r\n<p>Zenfone 5 c&oacute; cơ chế tự động hiệu chỉnh nhiệt độ m&agrave;u, giống t&iacute;nh năng True Tone tr&ecirc;n&nbsp;<a href=\"https://msmobile.com.vn/iphone-8-8-plus-x/iphone-x-p2906.html\" target=\"_blank\">iPhone X</a>, cho ph&eacute;p điện thoại theo d&otilde;i &aacute;nh mắt người d&ugrave;ng để từ đ&oacute; điều chỉnh m&agrave;n h&igrave;nh cho ph&ugrave; hợp. Asus gọi đ&acirc;y l&agrave; c&ocirc;ng nghệ tr&iacute; tuệ nh&acirc;n tạo (AI) m&agrave; kh&ocirc;ng c&ocirc;ng bố th&ocirc;ng tin chi tiết.</p>\r\n\r\n<p>Zenfone 5 được trang bị vi xử l&yacute; Snapdragon 636 của Qualcomm, bộ nhớ trong 64 GB, lựa chọn RAM 4 GB hoặc 6 GB. Trong khi đ&oacute;, Zenfone 5Z cao cấp hơn d&ugrave;ng chip Snapdragon 845, bộ nhớ trong 256 GB, RAM 8 GB, camera k&eacute;p mặt sau d&ugrave;ng tr&iacute; tuệ nh&acirc;n tạo, v&agrave; c&oacute; khởi điểm 499 USD.</p>\r\n\r\n<p>Phi&ecirc;n bản r&uacute;t gọn Zenfone 5 Lite với m&agrave;n h&igrave;nh 6 inch, cạnh viền mỏng, pin 3.300 mAh (như Zenfone 5), chạy Android Nougat v&agrave; được trang bị camera k&eacute;p mặt sau c&oacute; khả năng quay video 4K.</p>\r\n\r\n<p>Zenfone Lite sẽ l&ecirc;n kệ v&agrave;o th&aacute;ng ba, tiếp sau l&agrave; Zenfone 5 trong th&aacute;ng tư v&agrave; Zenfone 5Z trong th&aacute;ng s&aacute;u.</p>\r\n', '1508749802samsung-sl-m2020f063.jpg', 1),
(20, 'Hướng dẫn Jailbreak iPhone chạy iOS 9.3.2 và 9.3.3', '<p>H&atilde;ng nghi&ecirc;n cứu Counterpoint dự b&aacute;o sẽ c&oacute; hơn 1/3 những chiếc smartphone xuất hiện tr&ecirc;n thị trường được trang bị chip xử l&iacute; AI v&agrave;o năm 2020. Điều n&agrave;y c&oacute; nghĩa l&agrave; v&agrave;o năm 2020 cứ 3 chiếc smartphone b&aacute;n ra tr&ecirc;n thị trường sẽ c&oacute; một chiếc được trang bị chip AI với khả năng xử l&iacute; vượt trội v&agrave; th&ocirc;ng minh.</p>\r\n\r\n<p>Những con chip AI n&agrave;y c&oacute; khả năng dịch thuật, ph&aacute;t hiện m&atilde; độc, gi&uacute;p chụp ảnh đẹp hơn, thậm ch&iacute; con chip n&agrave;y c&ograve;n đưa ra những lời khuy&ecirc;n về sức khỏe v&agrave; nhận dạng h&agrave;nh vi của con người. T&iacute;nh năng m&agrave; người d&ugrave;ng kỳ vọng nhất l&agrave; khả năng nhận diện h&agrave;nh vi của người d&ugrave;ng, do chip AI c&oacute; thể gi&uacute;p người d&ugrave;ng ph&aacute;t hiện nguy cơ bị tấn c&ocirc;ng, ph&acirc;n t&iacute;ch email hay những ứng dụng di động để đưa ra cảnh c&aacute;o cho người d&ugrave;ng.</p>\r\n\r\n<p>&nbsp;Cũng theo dự b&aacute;o của Counterpoint tỉ lệ n&agrave;y sẽ được tăng dần v&agrave;o năm 2018 sẽ l&agrave; 16%, năm 2019 sẽ l&agrave; 26% v&agrave; năm 2020 sẽ đạt tỉ lệ l&agrave; 35% . Trong số c&aacute;c nh&agrave; sản xuất nổi tiếng tr&ecirc;n thế giới th&igrave; Apple l&agrave; h&atilde;ng đi đầu với con chip Apple Bionic. &nbsp;Để biến c&aacute;c chiếc smartphone ng&agrave;y c&agrave;ng th&ocirc;ng minh hơn th&igrave; g&atilde; c&ocirc;ng nghệ khủng &nbsp;n&agrave;y đang tập trung ph&aacute;t triển chip AI nhằm đem lại con chip xử l&iacute; như mong muốn.</p>\r\n\r\n<p>C&ugrave;ng với đ&oacute;, l&agrave; Apple cũng c&oacute; nhiều lợi thế hơn tr&ecirc;n thị trường với chip AI v&agrave;o năm 2020 với tỉ lệ chấp thuận cao. Trong thời gian tới c&aacute;c h&atilde;ng như Qualcom được kỳ vọng sẽ bắt kịp nhanh với xu hướng chip AI.</p>\r\n\r\n<p>C&oacute; thể, Qualcomm sẽ vượt mặt Samsung, Huawei v&agrave; xếp thứ hai về khối lượng sản xuất. Ngo&agrave;i ra, Counterpoint cũng khẳng định rằng những chiếc smartphone được trang bị chip AI sẽ ph&aacute;t triển nhanh ở d&ograve;ng sản phẩm cao cấp. Đến năm 2018 c&aacute;c d&ograve;ng sản phẩm mang ph&acirc;n kh&uacute;c tầm trung sẽ bắt đầu được sở hữu con chip AI.&nbsp;</p>\r\n', '<p>iphone 6</p>\r\n', '1508753442ip6s.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ngaymua` date NOT NULL,
  `gia` float NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `ngaymua`, `gia`, `trangthai`) VALUES
(51, 33, '2017-10-23', 10000000, 0),
(61, 32, '2017-10-31', 3500000000, 1),
(62, 32, '2017-10-31', 5000, 1),
(63, 39, '2017-11-09', 36000000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `fk_product_id` int(11) NOT NULL,
  `c_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`order_detail_id`, `order_id`, `fk_product_id`, `c_number`) VALUES
(97, 0, 9, 1),
(98, 0, 9, 1),
(99, 0, 7, 1),
(100, 0, 12, 1),
(101, 0, 9, 1),
(102, 0, 7, 1),
(103, 0, 6, 1),
(110, 50, 5, 1),
(111, 50, 6, 1),
(115, 51, 7, 1),
(116, 51, 12, 2),
(117, 51, 4, 1),
(118, 51, 6, 1),
(119, 52, 4, 1),
(120, 52, 0, 1),
(121, 53, 11, 3),
(122, 53, 14, 1),
(123, 53, 12, 1),
(124, 0, 2, 1),
(125, 0, 14, 1),
(126, 54, 12, 1),
(127, 55, 14, 1),
(128, 0, 12, 2),
(129, 0, 14, 2),
(130, 56, 14, 5),
(131, 57, 13, 4),
(132, 0, 9, 1),
(133, 0, 13, 1),
(134, 0, 6, 1),
(135, 59, 13, 5),
(136, 59, 6, 4),
(137, 60, 0, 2),
(138, 61, 0, 3),
(139, 61, 4, 1),
(140, 0, 0, 1),
(141, 0, 0, 1),
(142, 62, 0, 1),
(143, 0, 0, 1),
(144, 0, 0, 1),
(145, 0, 3, 3),
(146, 0, 2, 1),
(147, 0, 12, 1),
(148, 0, 20, 1),
(149, 0, 13, 1),
(150, 63, 20, 1),
(151, 63, 12, 1),
(152, 63, 11, 1),
(153, 0, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_policy`
--

CREATE TABLE `tbl_policy` (
  `pk_policy_id` int(100) NOT NULL,
  `c_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `c_description` varchar(20000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `c_content` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  `c_hotpolicy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_policy`
--

INSERT INTO `tbl_policy` (`pk_policy_id`, `c_name`, `c_description`, `c_content`, `c_hotpolicy`) VALUES
(1, 'Thành', '', '<p>adadaad</p>\r\n\r\n<p>H&atilde;ng nghi&ecirc;n cứu Counterpoint dự b&aacute;o sẽ c&oacute; hơn 1/3 những chiếc smartphone xuất hiện tr&ecirc;n thị trường được trang bị chip xử l&iacute; AI v&agrave;o năm 2020. Điều n&agrave;y c&oacute; nghĩa l&agrave; v&agrave;o năm 2020 cứ 3 chiếc smartphone b&aacute;n ra tr&ecirc;n thị trường sẽ c&oacute; một chiếc được trang bị chip AI với khả năng xử l&iacute; vượt trội v&agrave; th&ocirc;ng minh.</p>\r\n\r\n<p>Những con chip AI n&agrave;y c&oacute; khả năng dịch thuật, ph&aacute;t hiện m&atilde; độc, gi&uacute;p chụp ảnh đẹp hơn, thậm ch&iacute; con chip n&agrave;y c&ograve;n đưa ra những lời khuy&ecirc;n về sức khỏe v&agrave; nhận dạng h&agrave;nh vi của con người. T&iacute;nh năng m&agrave; người d&ugrave;ng kỳ vọng nhất l&agrave; khả năng nhận diện h&agrave;nh vi của người d&ugrave;ng, do chip AI c&oacute; thể gi&uacute;p người d&ugrave;ng ph&aacute;t hiện nguy cơ bị tấn c&ocirc;ng, ph&acirc;n t&iacute;ch email hay những ứng dụng di động để đưa ra cảnh c&aacute;o cho người d&ugrave;ng.</p>\r\n\r\n<p>&nbsp;Cũng theo dự b&aacute;o của Counterpoint tỉ lệ n&agrave;y sẽ được tăng dần v&agrave;o năm 2018 sẽ l&agrave; 16%, năm 2019 sẽ l&agrave; 26% v&agrave; năm 2020 sẽ đạt tỉ lệ l&agrave; 35% . Trong số c&aacute;c nh&agrave; sản xuất nổi tiếng tr&ecirc;n thế giới th&igrave; Apple l&agrave; h&atilde;ng đi đầu với con chip Apple Bionic. &nbsp;Để biến c&aacute;c chiếc smartphone ng&agrave;y c&agrave;ng th&ocirc;ng minh hơn th&igrave; g&atilde; c&ocirc;ng nghệ khủng &nbsp;n&agrave;y đang tập trung ph&aacute;t triển chip AI nhằm đem lại con chip xử l&iacute; như mong muốn.</p>\r\n\r\n<p>C&ugrave;ng với đ&oacute;, l&agrave; Apple cũng c&oacute; nhiều lợi thế hơn tr&ecirc;n thị trường với chip AI v&agrave;o năm 2020 với tỉ lệ chấp thuận cao. Trong thời gian tới c&aacute;c h&atilde;ng như Qualcom được kỳ vọng sẽ bắt kịp nhanh với xu hướng chip AI.</p>\r\n\r\n<p>C&oacute; thể, Qualcomm sẽ vượt mặt Samsung, Huawei v&agrave; xếp thứ hai về khối lượng sản xuất. Ngo&agrave;i ra, Counterpoint cũng khẳng định rằng những chiếc smartphone được trang bị chip AI sẽ ph&aacute;t triển nhanh ở d&ograve;ng sản phẩm cao cấp. Đến năm 2018 c&aacute;c d&ograve;ng sản phẩm mang ph&acirc;n kh&uacute;c tầm trung sẽ bắt đầu được sở hữu con chip AI.&nbsp;</p>\r\n', 1),
(2, 'THÀNH ĐẸP TRAI', '', '<p>h</p>\r\n\r\n<p>H&atilde;ng nghi&ecirc;n cứu Counterpoint dự b&aacute;o sẽ c&oacute; hơn 1/3 những chiếc smartphone xuất hiện tr&ecirc;n thị trường được trang bị chip xử l&iacute; AI v&agrave;o năm 2020. Điều n&agrave;y c&oacute; nghĩa l&agrave; v&agrave;o năm 2020 cứ 3 chiếc smartphone b&aacute;n ra tr&ecirc;n thị trường sẽ c&oacute; một chiếc được trang bị chip AI với khả năng xử l&iacute; vượt trội v&agrave; th&ocirc;ng minh.</p>\r\n\r\n<p>Những con chip AI n&agrave;y c&oacute; khả năng dịch thuật, ph&aacute;t hiện m&atilde; độc, gi&uacute;p chụp ảnh đẹp hơn, thậm ch&iacute; con chip n&agrave;y c&ograve;n đưa ra những lời khuy&ecirc;n về sức khỏe v&agrave; nhận dạng h&agrave;nh vi của con người. T&iacute;nh năng m&agrave; người d&ugrave;ng kỳ vọng nhất l&agrave; khả năng nhận diện h&agrave;nh vi của người d&ugrave;ng, do chip AI c&oacute; thể gi&uacute;p người d&ugrave;ng ph&aacute;t hiện nguy cơ bị tấn c&ocirc;ng, ph&acirc;n t&iacute;ch email hay những ứng dụng di động để đưa ra cảnh c&aacute;o cho người d&ugrave;ng.</p>\r\n\r\n<p>&nbsp;Cũng theo dự b&aacute;o của Counterpoint tỉ lệ n&agrave;y sẽ được tăng dần v&agrave;o năm 2018 sẽ l&agrave; 16%, năm 2019 sẽ l&agrave; 26% v&agrave; năm 2020 sẽ đạt tỉ lệ l&agrave; 35% . Trong số c&aacute;c nh&agrave; sản xuất nổi tiếng tr&ecirc;n thế giới th&igrave; Apple l&agrave; h&atilde;ng đi đầu với con chip Apple Bionic. &nbsp;Để biến c&aacute;c chiếc smartphone ng&agrave;y c&agrave;ng th&ocirc;ng minh hơn th&igrave; g&atilde; c&ocirc;ng nghệ khủng &nbsp;n&agrave;y đang tập trung ph&aacute;t triển chip AI nhằm đem lại con chip xử l&iacute; như mong muốn.</p>\r\n\r\n<p>C&ugrave;ng với đ&oacute;, l&agrave; Apple cũng c&oacute; nhiều lợi thế hơn tr&ecirc;n thị trường với chip AI v&agrave;o năm 2020 với tỉ lệ chấp thuận cao. Trong thời gian tới c&aacute;c h&atilde;ng như Qualcom được kỳ vọng sẽ bắt kịp nhanh với xu hướng chip AI.</p>\r\n\r\n<p>C&oacute; thể, Qualcomm sẽ vượt mặt Samsung, Huawei v&agrave; xếp thứ hai về khối lượng sản xuất. Ngo&agrave;i ra, Counterpoint cũng khẳng định rằng những chiếc smartphone được trang bị chip AI sẽ ph&aacute;t triển nhanh ở d&ograve;ng sản phẩm cao cấp. Đến năm 2018 c&aacute;c d&ograve;ng sản phẩm mang ph&acirc;n kh&uacute;c tầm trung sẽ bắt đầu được sở hữu con chip AI.&nbsp;</p>\r\n', 1),
(3, 'Chính Sách Bảo Hành Sản Phẩm', '<p>Bảo h&agrave;nh đối với c&aacute;c thiết bị mua tại TechHouse</p>\r\n', '<p dir=\"ltr\">&ndash; M&aacute;y mới 100% fullbox: kh&aacute;ch h&agrave;ng được Bảo h&agrave;nh 13 th&aacute;ng, 1 đổi 1 trong 15 ng&agrave;y đầu (bao Test cả&nbsp;<strong>nguồn, m&agrave;n h&igrave;nh</strong>&nbsp;trong 15 ng&agrave;y đầu)</p>\r\n\r\n<p dir=\"ltr\">&ndash; M&aacute;y cũ, m&aacute;y likenew, m&aacute;y nobox, m&aacute;y trưng b&agrave;y: kh&aacute;ch h&agrave;ng được Bảo h&agrave;nh 07 th&aacute;ng, 1 đổi 1 v&agrave; bao Test cả<strong>&nbsp;nguồn, m&agrave;n h&igrave;nh</strong>&nbsp;trong 15 ng&agrave;y đầu.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;Đối với nguồn v&agrave; m&agrave;n h&igrave;nh cảm ứng sẽ bảo h&agrave;nh theo cấp độ kh&aacute;ch chọn khi mua m&aacute;y</p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;&nbsp;&nbsp;&nbsp; &raquo; Bảo h&agrave;nh th&ocirc;ng thường:</strong>&nbsp;Kh&ocirc;ng bảo h&agrave;nh nguồn, Pin v&agrave; m&agrave;n h&igrave;nh cảm ứng sau 15 ng&agrave;y</p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&raquo; Bảo h&agrave;nh V&agrave;ng:</strong>&nbsp;Bảo h&agrave;nh nguồn, Pin v&agrave; m&agrave;n h&igrave;nh cảm ứng 07 th&aacute;ng đối với m&aacute;y mới v&agrave;&nbsp;07 th&aacute;ng đối với m&aacute;y cũ</p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp; &nbsp; &nbsp;&raquo; Bảo h&agrave;nh Platinum:</strong>&nbsp;Bảo h&agrave;nh nguồn, Pin v&agrave; m&agrave;n h&igrave;nh cảm ứng 13 th&aacute;ng đối với tất cả c&aacute;c d&ograve;ng m&aacute;y iPhone v&agrave; Xiaomi mới 100% Fullbox</p>\r\n\r\n<p dir=\"ltr\">- Phụ kiện lỗi được đổi mới trong v&ograve;ng 1 th&aacute;ng kể từ ng&agrave;y mua</p>\r\n\r\n<p dir=\"ltr\">- Phần mềm hỗ trợ trọn đời m&aacute;y</p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>B. Biểu ph&iacute; &aacute;p dụng cho c&aacute;c G&oacute;i Bảo H&agrave;nh V&agrave;ng (BHV) v&agrave; Bảo H&agrave;nh Platium (BHP) d&agrave;nh ri&ecirc;ng cho c&aacute;c Sản phẩm&nbsp;iPhone</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>-&nbsp;</strong>G&oacute;i Bảo h&agrave;nh V&agrave;ng (BHV) = Bảo h&agrave;nh thường + Gi&aacute; trị g&oacute;i Bảo H&agrave;nh&nbsp;V&agrave;ng&nbsp;(qui định cho từng mức gi&aacute;&nbsp;SP</p>\r\n\r\n<p dir=\"ltr\"><strong>-&nbsp;</strong>G&oacute;i Bảo h&agrave;nh Platinum (BHP) = Bảo h&agrave;nh thường + Gi&aacute; trị g&oacute;i Bảo H&agrave;nh Platinum (qui định cho từng mức gi&aacute; SP)</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pk_product_id` int(11) NOT NULL,
  `fk_category_product_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_description` varchar(2000) NOT NULL,
  `c_content` text NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `c_price` int(11) NOT NULL,
  `c_hotproduct` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pk_product_id`, `fk_category_product_id`, `c_name`, `c_description`, `c_content`, `c_img`, `c_price`, `c_hotproduct`) VALUES
(12, 3, 'HikVision DS-2CD2842F-IW', '<p>THƯƠMG HIỆU CAMERA B&Aacute;N CHẠY NHẤT THẾ GIỚI - MODEL CAO CẤP&nbsp;<br />\r\nCamera IP Cube C&oacute; d&acirc;y v&agrave; kh&ocirc;ng d&acirc;y h&ocirc;̀ng ngoại 2.0MP (All in One)&nbsp;<br />\r\nĐộ ph&acirc;n giải: 2.0 Megapixel, Cảm bi&ecirc;́n: 1/3&quot; Progressive Scan CMOS&nbsp;<br />\r\n&Ocirc;́ng kính 2.8mm ( Đặt hàng: 4mm, 6mm). Đ&ocirc;̣ nhạy sáng cao:0.01 Lux@F1.2. 0 Lux với IR. Tầm xa hồng ngoại nh&igrave;n đ&ecirc;m: 10m, Tầm xa cảm biến chống trộm: 10m&nbsp;<br />\r\nKết nối kh&ocirc;ng d&acirc;y Wifi hoặc c&oacute; d&acirc;y RJ45. Chống nhiễu kỹ thật số DNR, Chống ngược s&aacute;ng kỹ thật số WDR, Cắt lọc hồng ngoại ICR . T&iacute;ch hợp mic v&agrave; loa tr&ecirc;n camera.&nbsp;<br />\r\nT&iacute;ch hợp khe cắm thẻ nhớ dung lượng tối đa 128GB. Tự chuy&ecirc;̉n ch&ecirc;́ đ&ocirc;̣ ngày/đ&ecirc;m. Ngu&ocirc;̀n cấp 12V DC hoặc PoE . Chuẩn kết nối ONVIF.&nbsp;<br />\r\nLắp trong nh&agrave;. M&agrave;u trắng. Tính năng th&ocirc;ng minh mới : Phát hi&ecirc;̣n x&acirc;m nh&acirc;̣p khu vực c&acirc;́m hay vượt Hàng rào ảo. Tặng Adaptor 12V ch&iacute;nh h&atilde;ng&nbsp;<br />\r\n+ Hỗ trợ t&ecirc;n miền xem qua mạng trọn đời sản phẩm,&nbsp;<br />\r\nBẢO H&Agrave;NH CẢ CH&Aacute;Y NỔ TRONG 24 TH&Aacute;NG</p>\r\n', '<p>Camera&nbsp;HikVision DS-2CD2842F-IW</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Ph&acirc;n loại</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>IP Full HD kh&ocirc;ng d&acirc;y/ c&oacute; d&acirc;y</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nhạy s&aacute;ng tối thiểu</p>\r\n			</td>\r\n			<td>\r\n			<p>0.01 Lux/F1.2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ống k&iacute;nh quan s&aacute;t</p>\r\n			</td>\r\n			<td style=\"vertical-align:bottom\">\r\n			<p>2.8/ mm (~93.1&deg;)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Onvif</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute; hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Wifi</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute; hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Hồng ngoại</p>\r\n			</td>\r\n			<td>\r\n			<p>1 LED ARRAY tầm xa l&ecirc;n đến 15-20 m&eacute;t</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&Acirc;m thanh</p>\r\n			</td>\r\n			<td>\r\n			<p>Hỗ trợ giao thoại 2 chiều</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bit Rate</p>\r\n			</td>\r\n			<td>\r\n			<p>32kbps &ndash; 8Mbps</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>POE</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute; hỗ trợ POE ( 802.3af)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>B&aacute;o động</p>\r\n			</td>\r\n			<td>\r\n			<p>B&aacute;o động chuyển động th&ocirc;ng minh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Xem qua mạng</p>\r\n			</td>\r\n			<td>\r\n			<p>Miễn ph&iacute; hosting&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dải nhiệt hoạt động</p>\r\n			</td>\r\n			<td>\r\n			<p>( -40&deg;~60&deg;)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'p_7766_samsung-snp-3120vhp.jpg', 20000, 1),
(14, 4, 'Sony a5', '', '<table>\r\n	<caption>Th&ocirc;ng số kỹ thuật</caption>\r\n	<tbody>\r\n		<tr>\r\n			<td>Model:</td>\r\n			<td>DSC-WX350/WCE32</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u sắc:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nh&agrave; sản xuất:</td>\r\n			<td>Sony</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thời gian bảo h&agrave;nh:</td>\r\n			<td>24 th&aacute;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Địa điểm bảo h&agrave;nh:</td>\r\n			<td>Nguyễn Kim</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y ảnh:</td>\r\n			<td>Kỹ thuật số</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&aacute;y ảnh:</td>\r\n			<td>18.2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ xử l&yacute; h&igrave;nh ảnh:</td>\r\n			<td>BIONZ X</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến h&igrave;nh ảnh:</td>\r\n			<td>CMOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Zoom quang học :</td>\r\n			<td>20x</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><a href=\"javascript:void(0)\" id=\"productSpecification_viewFull\">Xem to&agrave;n bộ th&ocirc;ng số</a></p>\r\n', '2_7ryi-0b_6uuu-c0.jpg', 34000000, 1),
(18, 3, 'Camera Dome Vantech TVI VP-1200 T', '', '<p>THƯƠNG HIỆU CAMERA B&Aacute;N CHẠY NHẤT VIỆT NAM&nbsp;<br />\r\ncamera Dome TVI Vantech 720P&nbsp;<br />\r\nĐộ ph&acirc;n giải HD: 1.0 Megapixel&nbsp;<br />\r\n-Ống k&iacute;nh: 3.6mm.&nbsp;<br />\r\n-Số đ&egrave;n LED hồng ngoại: 3 hoặc 6 đ&egrave;n Array LED, tầm xa nh&igrave;n đ&ecirc;m 20m&nbsp;<br />\r\n-Chức năng quan s&aacute;t Ng&agrave;y v&agrave; Đ&ecirc;m (IR-CUT).&nbsp;<br />\r\n-Chức năng c&acirc;n bằng &aacute;nh s&aacute;ng trắng.&nbsp;<br />\r\n-Chức năng điều chỉnh độ lợi AGC.&nbsp;<br />\r\n-Chức năng giảm nhiễu số 3D-DNR.&nbsp;<br />\r\n-Chức năng chống ngược s&aacute;ng BLC (BackLight Compensation).&nbsp;<br />\r\n-Nguồn điện: 12VDC.</p>\r\n', '213_p_1437692052185.jpg', 2300000, 1),
(19, 10, 'Iphone 5se', '', '', '15099911131508749419iphone-6s---6s-plus-hong-color-x96i-91-uw67-ts-m58z-4y.jpg', 4500000, 0),
(21, 3, 'Camera Hikvision DS-2CV2Q01EFD-IW', '', '<p>Camera Robot 1MP xoay 4 chiều&nbsp;<br />\r\n Up to 1.0 megapixel high resolution&nbsp;<br />\r\n Ống k&iacute;nh 2.8mm&nbsp;<br />\r\n Chống ngược s&aacute;ng kỹ thuật số&nbsp;<br />\r\n 3D Digital Noise Reduction&nbsp;<br />\r\n T&iacute;ch hợp Micro, loa đ&agrave;m thoại 2 chiều&nbsp;<br />\r\n Hỗ trợ thẻ nhớ l&ecirc;n đến 128GB&nbsp;<br />\r\n Hồng ngoại 5m&nbsp;<br />\r\n Hỗ trợ Wi-fi&nbsp;<br />\r\n DC 5V &plusmn; 10 %, cổng micro USB&nbsp;<br />\r\n Mobile Monitoring via Hik-Connect</p>\r\n', '2065_camera_ip_clever_dog_1w_mau_xanh_1.jpg', 2190, 1),
(22, 10, 'Macbook Air', '', '<ul>\r\n	<li>M&agrave;n H&igrave;nh :&nbsp;13.3 inch LED-backlit</li>\r\n	<li>CPU :&nbsp;Intel, Core i5, 2.3 GHz</li>\r\n	<li>Ram :&nbsp;8 GB, LPDDR3, 2133MHz</li>\r\n	<li>VGA :&nbsp;Intel Iris Plus Graphics 640</li>\r\n	<li>HĐH :&nbsp;Mac Os</li>\r\n	<li>Nặng :&nbsp;1.37 kg</li>\r\n</ul>\r\n', '1_tyq2-m6.jpg', 30000000, 1),
(23, 6, 'Iphone5', '', '', 'ts880.jpg', 1000000000, 1),
(24, 4, 'CANON 700D', '', '', 'May_anh_Nikon_D3400_kit_18-55mm_002_suhk-0h.jpg', 7400000, 0),
(25, 9, 'xiaomi Mi 5 Plus', '', '', 'medium-xiaomi-redmi-4x-black-mau-den-chinh-hang-gia-re.jpg', 3500000, 1),
(26, 11, 'OPPO A37', '', '', 'medium-oppo-a37-cu-2.jpg', 2100000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slide`
--

CREATE TABLE `tbl_slide` (
  `pk_slide_id` int(11) NOT NULL,
  `c_name` varchar(200) NOT NULL,
  `c_img` varchar(1000) NOT NULL,
  `c_hotslide` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slide`
--

INSERT INTO `tbl_slide` (`pk_slide_id`, `c_name`, `c_img`, `c_hotslide`) VALUES
(21, 'dịch vụ', 'IMG_7620-2.jpg', 1),
(24, 'ảnh kỉ niệm', '23435236_937443123078093_756421025029877334_n.jpg', 1),
(25, 'ảnh kí yếu', '23472015_937443173078088_5286543601857582992_n.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_support`
--

CREATE TABLE `tbl_support` (
  `pk_support_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_contact` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_support`
--

INSERT INTO `tbl_support` (`pk_support_id`, `c_name`, `c_contact`) VALUES
(1, 'Tư vấn bán hàng 1', 'Mrs. Thanh: 01689487864'),
(2, 'Tư vấn bán hàng 2', 'Mr. Ha : 01664142919'),
(3, 'Email liên hệ', 'soldiersoociut@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `pk_user_id` int(11) NOT NULL,
  `c_username` varchar(500) NOT NULL,
  `c_password` varchar(500) NOT NULL,
  `c_fullname` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`pk_user_id`, `c_username`, `c_password`, `c_fullname`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', ''),
(8, 'thanh', '202cb962ac59075b964b07152d234b70', ''),
(9, 'Thành', '202cb962ac59075b964b07152d234b70', 'Nguyễn Anh Thành'),
(11, 'thanh2', '8478e2bdb758f8467225ae87ed3750c2', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_adv`
--
ALTER TABLE `tbl_adv`
  ADD PRIMARY KEY (`pk_adv_id`);

--
-- Indexes for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`pk_category_product_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_introduce`
--
ALTER TABLE `tbl_introduce`
  ADD PRIMARY KEY (`pk_introduce_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`pk_news_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `tbl_policy`
--
ALTER TABLE `tbl_policy`
  ADD PRIMARY KEY (`pk_policy_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pk_product_id`);

--
-- Indexes for table `tbl_slide`
--
ALTER TABLE `tbl_slide`
  ADD PRIMARY KEY (`pk_slide_id`);

--
-- Indexes for table `tbl_support`
--
ALTER TABLE `tbl_support`
  ADD PRIMARY KEY (`pk_support_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`pk_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_adv`
--
ALTER TABLE `tbl_adv`
  MODIFY `pk_adv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `pk_category_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `tbl_introduce`
--
ALTER TABLE `tbl_introduce`
  MODIFY `pk_introduce_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `pk_news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `tbl_policy`
--
ALTER TABLE `tbl_policy`
  MODIFY `pk_policy_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pk_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tbl_slide`
--
ALTER TABLE `tbl_slide`
  MODIFY `pk_slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_support`
--
ALTER TABLE `tbl_support`
  MODIFY `pk_support_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `pk_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
