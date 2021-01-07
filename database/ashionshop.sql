-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 07, 2021 lúc 05:48 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ashionshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `idblog` int(11) DEFAULT NULL,
  `idtaikhoan` int(11) DEFAULT NULL,
  `idbinhluan` int(11) DEFAULT NULL,
  `noidung` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `thoigiantao` datetime(6) DEFAULT NULL,
  `luotthich` int(11) DEFAULT NULL,
  `trangthai` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='bình luận trong blog';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `tieude` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `urlavatar` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `motangan` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `noidung` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `idtaikhoan` int(11) DEFAULT NULL,
  `thoigiantao` datetime DEFAULT NULL,
  `luotxem` int(11) DEFAULT NULL,
  `trangthai` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='blog';

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `tieude`, `urlavatar`, `motangan`, `noidung`, `idtaikhoan`, `thoigiantao`, `luotxem`, `trangthai`) VALUES
(1, 'Test', 'blog-9.jpg', 'Bài viết dùng để test', '<div class=\"blog__details__desc\" style=\"margin-bottom: 40px; color: rgb(33, 37, 41); font-family: Montserrat, sans-serif;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 15px; color: rgb(68, 68, 68); line-height: 27px;\">Afashion season can be defined as much by the people on the catwalk as it can by the clothes they are wearing. This time around, a key moment came at the end of Marc Jacobs’ New York show, when an almost makeup-free Christy Turlington made a rare return to the catwalk, aged 50 (she also stars, with the designer himself, in the label’s AW ad campaign), where the average catwalk model is around 18.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; color: rgb(68, 68, 68); line-height: 27px;\">A few days later, Simone Rocha arguably upped the ante. The 32-year-old’s show – in part inspired by Louise Bourgeois, who lived until she was 98 – featured models in their 30s and 40s, including cult favourite Jeny Howorth and actor Chloë Sevigny.</p></div><div class=\"blog__details__quote\" style=\"border-top: 2px solid rgb(202, 21, 21); position: relative; padding-top: 22px; margin-bottom: 20px; color: rgb(33, 37, 41); font-family: Montserrat, sans-serif;\"><div class=\"icon\" style=\"height: 30px; width: 30px; font-size: 18px; color: rgb(202, 21, 21); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; left: 0px; top: -11px;\"><span class=\"fa fa-quote-left\" style=\"font-weight: normal; font-stretch: normal; font-family: FontAwesome; font-size: inherit;\"></span></div><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(17, 17, 17); font-weight: 600; line-height: 30px; font-style: italic;\">Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p></div><div class=\"blog__details__desc\" style=\"margin-bottom: 40px; color: rgb(33, 37, 41); font-family: Montserrat, sans-serif;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; color: rgb(68, 68, 68); line-height: 27px;\">Occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate.</p></div>', 4, '2020-08-28 08:01:18', 0, 1),
(2, 'Xu hướng thời trang mùa đông 2020', 'fw19-trend-1.jpg', 'Chào mùa mới, các tín đồ thời trang lại rục rịch tìm kiếm ý tưởng độc – lạ để refresh tủ quần áo thu đông. Dưới đây là  6 xu hướng hứa hẹn khuấy động làng mốt mà nàng có thể tham khảo.', '<p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: justify;\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); font-weight: bold;\">Màu hồng – Biểu tượng lãng mạn và nữ tính</strong></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: justify;\">Là gam màu được thảm đỏ Oscar danh giá ưu ái năm nay, sắc hồng sẽ làm sáng bừng những ngày tiết trời u buồn của mùa thu. Dù là sắc hồng pastel nhẹ nhàng hay gam hồng neon nổi bật, các nhà mốt vẫn luôn biết cách chiều lòng giới mộ điệu với các thiết kế cực kì trendy.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13);\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414509/fw19-trend-1.jpg\" alt=\"\" data-id=\"34554\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></em></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13);\">Từ trái sang: Mark Fast, Molly Goddard, MSGM</em></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13);\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414510/fw19-trend-2.png\" alt=\"\" data-id=\"34555\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></em></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\">Sắc thái tôn lên vẻ ngọt ngào cho người mặc dường như rất được lòng của 2 chị em quyền lực&nbsp; Kylie Jenner và Kendall Jenner.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414511/fw19-trend-3.png\" alt=\"\" data-id=\"34556\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\">Phong cách menswear được các IT girls đình đám lên đồ “cực ngọt” mà những nàng đã trót mê mẩn gam màu này cần phải học hỏi ngay.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: justify;\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); font-weight: bold;\">Xếp nếp ruffle bồng bềnh</strong></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: justify;\">Sau khi nhà mốt Marc Jacob trình làng mẫu đầm ruffle đồ sộ trong show Xuân Hè 2019, các fashionistas cũng bắt đầu chuẩn bị để hòa mình vào “cơn sốt” ruffle đang nhen nhóm bùng nổ.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13);\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414512/fw19-trend-4.jpg\" alt=\"\" data-id=\"34557\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></em></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13);\">Từ trái sang: Prabal Gurung, Bora Aksu, Alberta Ferretti</em></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13);\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414513/fw19-trend-5.jpg\" alt=\"\" data-id=\"34558\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></em></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif;\">Không nằm ngoài dự đoán, mùa mốt Thu Đông năm nay, trang phục nếp xếp mềm mại lại “gây bão” khi tiếp tục xuất hiện trong show thời trang của NTK Thổ Nhĩ Kỳ Bora Aksu và NTK tài năng người Ý Alberta Ferretti.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414514/fw19-trend-6.jpg\" alt=\"\" data-id=\"34559\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414515/fw19-trend-7.jpg\" alt=\"\" data-id=\"34560\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif;\">Các người đẹp châu Á như hotgirl Thái Lan Pimtha, “thủ lĩnh” Jennie của nhóm nhạc nữ hot nhất Hàn Quốc Black Pink không ngừng khoe lên trang Instagram hàng triệu người theo dõi outfit váy +áo nhấn nhá chi tiết xếp nếp nữ tính.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: justify;\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); font-weight: bold;\">Xếp li thời thượng</strong></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: justify;\">Những đường xếp li mềm mại đã trở lại trên sàn diễn thời trang danh giá. Các NTK có vô vàn cách để làm mới phong cách người mặc cùng xu hướng này, từ sắc sảo như các thiết kế của Longchamp đến thanh tao và độc đáo như&nbsp; phong cách Dior.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414516/fw19-trend-8.jpg\" alt=\"\" data-id=\"34561\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13);\">Từ trái sang là mẫu thiết kế của: Longchamp, Alberta Ferretti, Fendi</em></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13);\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414517/fw19-trend-9.png\" alt=\"\" data-id=\"34562\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></em></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414518/fw19-trend-10.jpg\" alt=\"\" data-id=\"34563\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif;\">Chỉ cần diện combo áo kiểu/áo hoodie + chân váy xếp pli nàng đã tỏa sáng lung linh trong bất kì dịp nào. Tùy sở thích mà bạn có thể phối cùng giày sneakers khỏe khoắn hay giày cao gót nữ tính.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: justify;\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); font-weight: bold;\">Đầy khí chất cùng suit</strong></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: justify;\">Khi phong trào nữ quyền tiếp tục lan rộng cùng chiến dịch #Metoo và #Timesup, các NTK thời trang cũng có những động thái ủng hộ sự kiện ý nghĩa này, thể hiện rõ nét thông qua các thiết kế suit đậm chất menswear trong BST Thu Đông năm nay.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414519/fw19-trend-11.jpg\" alt=\"\" data-id=\"34564\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13);\">Từ trái sang: Tom Ford, Annakiki, Zadig &amp; Voltaire</em></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13);\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414520/fw19-trend-12.png\" alt=\"\" data-id=\"34565\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></em></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif;\">Suit là iteam thời trang thể hiện sự sang trọng và thanh lịch, tuy nhiên nếu bạn muốn thêm chút trẻ trung năng động cho bộ trang phục, đừng ngần ngại phá cách cùng các item màu tươi sáng và mix cùng giày sneakers cá tính.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414521/fw19-trend-13.png\" alt=\"\" data-id=\"34566\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: justify;\">Nếu với bạn, suit vẫn quá trang trọng so với một buổi họp mặt cùng bạn bè, hãy thử khoác áo vest ngoài outfit gồm quần jeans và áo croptop. Chẳng còn nghi ngờ gì nữa, phong cách vừa cổ điển vừa hiện đại này sẽ giúp bạn thu hút mọi ánh nhìn.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: justify;\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); font-weight: bold;\">Trang phục chất liệu da &nbsp;“chất chơi”</strong></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: justify;\">Khi tiết trời bắt đầu se se lạnh và những cơn mưa cũng xuất hiện nhiều hơn, các item chất liệu da sẽ là lựa chọn lý tưởng cho nàng sành điệu. Mùa mốt Thu Đông năm nay, nếu như&nbsp; Gabbriela Hearst và Burberry chú trọng vào các thiết kế đầm da thì Tod’s lại táo bạo hơn với bộ suit da “toàn tập”.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414522/fw19-trend-14.jpg\" alt=\"\" data-id=\"34567\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13);\">Từ trái sang: Gabbriela Hearst, Burberry, Tod’s</em></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13);\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414523/fw19-trend-15.jpg\" alt=\"\" data-id=\"34568\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></em></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: justify;\">&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif;\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414524/fw19-trend-16.png\" alt=\"\" data-id=\"34569\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px; display: block; margin-left: auto; margin-right: auto;\"></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: justify;\">Thật khó để cưỡng lại sức hút của những mẫu áo khoác da và chân váy da cá tính. Một lưu ý nếu bạn muốn trông thật thần thái khi diện item này chính là không nên phối quá nhiều màu sắc trên cùng một outfit. Giày bốt da là món phụ kiện thường được các nàng ưu ái lựa chọn để mix cùng phong cách này.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: justify;\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); font-weight: bold;\">Xinh ngất ngây với gam màu tươi sáng</strong></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: justify;\">Các NTK thời trang tin rằng trang phục đơn sắc sáng màu sẽ giúp “hack” dáng tuyệt vời không thua gì giày cao gót. Thay vì chỉ diện mỗi trang phục màu trung tính, hãy thử vượt ra khỏi vùng an toàn của bạn và hòa mình vào “cuộc chơi” sắc màu đầy sôi động.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); font-weight: bold;\">&nbsp;<img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414525/fw19-trend-17.jpg\" alt=\"\" data-id=\"34570\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></strong></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13);\">Từ trái sang là thiết kế của: Kate Spade, Roksanda và Emporio Armani</em></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13);\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414526/fw19-trend-18.png\" alt=\"\" data-id=\"34571\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></em></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\">&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif; text-align: center;\"><img id=\"__mcenew\" src=\"http://www.maisonjsc.com/media/images/414527/fw19-trend-19.png\" alt=\"\" data-id=\"34572\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); border: 0px;\"></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.13); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding-bottom: 25px; color: rgb(0, 0, 0); font-family: avertaregular, &quot;Helvetica Neue&quot;, Helvetica, arial, Roboto, sans-serif;\">Sự lên ngôi của các gam màu tươi sáng trong mùa mốt năm nay là dịp để những tín đồ yêu thích phong cách nổi bật được thỏa sức sáng tạo và biến hóa đa dạng.</p>', 1, '2020-09-05 07:58:54', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `mota` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `urlavatar` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `iddanhmuc` int(11) DEFAULT NULL,
  `thoigiantao` datetime DEFAULT NULL,
  `trangthai` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='danh mục sản phẩm';

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `mota`, `urlavatar`, `iddanhmuc`, `thoigiantao`, `trangthai`) VALUES
(1, 'Thời trang nữ', 'Nắm bắt xu hướng thời trang hiện đại. Hãy tự tin khoe cá tính của riêng bạn.', 'category-1.jpg', NULL, '2020-08-27 07:46:18', 1),
(2, 'Thời trang nam', 'Thể hiện phong cách thời trang tinh tế của riêng bạn.', 'category-2.jpg', NULL, '2020-08-27 07:51:54', 1),
(3, 'Thời trang trẻ em', 'Sành điệu, dễ thương cho bé yêu của bạn.', 'category-3.jpg', NULL, '2020-08-27 07:54:19', 1),
(4, 'Mĩ phẩm', 'Hãy lựa chọn những mĩ phẩm chính hãng, chất lượng cho riêng mình.', 'category-4.jpg', NULL, '2020-08-27 07:56:27', 1),
(5, 'Phụ kiện', 'Những phụ kiện bắt mắt, thời trang đang chờ đợi bạn.', 'category-5.jpg', NULL, '2020-08-27 07:58:35', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `idtaikhoan` int(11) DEFAULT NULL,
  `hodem` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'họ đệm',
  `ten` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'họ đệm',
  `diachi` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'địa chỉ',
  `email` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `sodienthoai` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `ghichu` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `thoigiantao` datetime(6) DEFAULT NULL,
  `magiamgia` int(11) DEFAULT NULL,
  `trangthai` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='đơn hàng';

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `idtaikhoan`, `hodem`, `ten`, `diachi`, `email`, `sodienthoai`, `ghichu`, `thoigiantao`, `magiamgia`, `trangthai`) VALUES
(1, NULL, 'Nguyễn Thế', 'Trưởng', 'Thái Bình', 'wolonguyen@gmail.com', '0356928512', 'Giao hàng vào chiều tối', '2020-09-05 06:42:58.000000', NULL, 1),
(2, NULL, 'Nguyễn Thế', 'Trưởng', 'Hà Nội', 'wolonguyen@gmail.com', '0356928512', 'Giao hàng vào chiều tối', '2020-09-05 06:44:30.000000', NULL, 1),
(3, NULL, 'Nguyễn Thế', 'Trưởng', 'Hà Nội', 'wolonguyen@gmail.com', '0356928512', 'Giao hàng vào chiều tối', '2020-09-05 06:44:50.000000', NULL, 1),
(4, NULL, 'Nguyễn Thế', 'Trưởng', 'Hà Nội', 'ntruong879@gmail.com', '0356928512', 'Giao hàng vào chiều tối', '2020-09-05 07:44:02.000000', NULL, 1),
(5, NULL, 'Nguyễn Thế', 'Trưởng', 'Thái Bình', 'wolonguyen@gmail.com', '0356928512', 'Giao hàng vào chiều tối', '2020-09-05 08:33:28.000000', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang_sanpham`
--

CREATE TABLE `donhang_sanpham` (
  `id` int(11) NOT NULL,
  `iddonhang` int(11) DEFAULT NULL,
  `idsanpham` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `ghichu` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `thoigiantao` datetime DEFAULT NULL,
  `trangthai` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `donhang_sanpham`
--

INSERT INTO `donhang_sanpham` (`id`, `iddonhang`, `idsanpham`, `soluong`, `ghichu`, `thoigiantao`, `trangthai`) VALUES
(1, 1, 2, 2, 'Giao hàng vào chiều tối', NULL, 1),
(2, 2, 2, 1, 'Giao hàng vào chiều tối', '2020-09-05 06:44:30', 1),
(3, 2, 3, 2, 'Giao hàng vào chiều tối', '2020-09-05 06:44:30', 1),
(4, 4, 2, 1, 'Giao hàng vào chiều tối', '2020-09-05 07:44:03', 1),
(5, 4, 4, 3, 'Giao hàng vào chiều tối', '2020-09-05 07:44:03', 1),
(6, 5, 2, 3, 'Giao hàng vào chiều tối', '2020-09-05 08:33:28', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id` int(11) NOT NULL,
  `hoten` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `message` varchar(5000) COLLATE utf8mb4_bin DEFAULT NULL,
  `thoigiantao` datetime DEFAULT NULL,
  `trangthai` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='contact-liên hệ';

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`id`, `hoten`, `email`, `website`, `message`, `thoigiantao`, `trangthai`) VALUES
(1, 'Nguyễn Thế Trưởng', 'wolonguyen@gmail.com', 'http://localhost:8080/', 'Công ty rất tốt! Tôi có thể làm việc tại công ty trong tương lại được không!?', '2020-08-25 17:50:01', 1),
(2, 'Nguyễn Thế Trưởng', 'wolonguyen@gmail.com', 'http://localhost:8080/', 'Nếu được làm việc tại công ty là niềm vinh dự của tôi. Tôi hi vọng nhận được phản hồi từ phía công ty!', '2020-08-25 17:51:28', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `magiamgia`
--

CREATE TABLE `magiamgia` (
  `id` int(11) NOT NULL,
  `magiamgia` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `thoigiantao` datetime DEFAULT NULL,
  `thoigianbatdau` datetime DEFAULT NULL,
  `thoigianketthuc` datetime DEFAULT NULL,
  `phantramgiam` int(11) DEFAULT NULL,
  `dieukien1` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `dieukien2` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `dieukien3` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `trangthai` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='bảng mã giảm giá';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `tendaydu` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'tên đầy đủ',
  `email` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `sodienthoai` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'số điện thoại',
  `urlavatar` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `thoigiantao` datetime DEFAULT NULL,
  `trangthai` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='bảng người dùng';

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `tendaydu`, `email`, `sodienthoai`, `urlavatar`, `diachi`, `thoigiantao`, `trangthai`) VALUES
(1, 'Administrator', 'admin@email.com', '84123456789', 'product-8.jpg', 'Thái Bình - Hà Nội', '2020-08-28 06:47:59', 1),
(5, 'Nguyễn Thế Trưởng', 'wolonguyen@gmail.com', '0356928512', 'product-1.jpg', 'Thái Bình', '2020-08-28 07:37:14', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `tenquyen` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `mota` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `thoigiantao` datetime DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='quyền truy cập';

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `tenquyen`, `mota`, `thoigiantao`, `trangthai`) VALUES
(1, 'ADMIN', 'Vai trò người quản trị hệ thống', '2020-08-30 23:46:50', 1),
(2, 'GUEST', 'Quyền khách hàng', '2020-08-30 23:49:50', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_taikhoan`
--

CREATE TABLE `role_taikhoan` (
  `id` int(11) NOT NULL,
  `idrole` int(11) NOT NULL,
  `idtaikhoan` int(11) NOT NULL,
  `thoigiantao` datetime DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='bảng role-tài khoản';

--
-- Đang đổ dữ liệu cho bảng `role_taikhoan`
--

INSERT INTO `role_taikhoan` (`id`, `idrole`, `idtaikhoan`, `thoigiantao`, `trangthai`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `iddanhmuc` int(11) NOT NULL,
  `gia` decimal(10,0) DEFAULT NULL,
  `giamgia` int(11) DEFAULT NULL COMMENT 'giảm giá bao nhiêu phần trăm\r\n0% là không giảm giá',
  `motangan` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'mô tả ngắn\ndùng để hiển thị ở trang shop',
  `mota` longtext COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'mô tả\nhiển thị ở trang details',
  `urlavatar1` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ảnh đại diện 1 (nếu có)',
  `urlavatar2` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ảnh đại diện 2(nếu có)',
  `urlavatar3` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ảnh đại diện 3 (nếu có)',
  `thoigiantao` datetime DEFAULT NULL COMMENT 'ngày tạo',
  `luotxem` int(11) DEFAULT 0 COMMENT 'số lượt xem\r\n',
  `luotmua` int(11) DEFAULT 0 COMMENT 'lượt mua hàng',
  `luotthich` int(11) DEFAULT 0 COMMENT 'lượt thích',
  `trangthai` int(11) DEFAULT 1 COMMENT 'trạng thái\\n0 là không còn tồn tại (bị xóa bỏ)\\n1 là đang bán\\n2 là còn hàng\\n3 là hết hàng\\n4 là đang giảm giá'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='bảng thông tin sản phẩm';

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `iddanhmuc`, `gia`, `giamgia`, `motangan`, `mota`, `urlavatar1`, `urlavatar2`, `urlavatar3`, `thoigiantao`, `luotxem`, `luotmua`, `luotthich`, `trangthai`) VALUES
(1, 'Buttons tweed blazer', 1, '500000', 0, 'Buttons tweed blazer', '<p><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Buttons tweed blazer</a></p><p><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Buttons tweed blazer</a><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Buttons tweed blazer</a></p><p><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Buttons tweed blazer</a></p><p><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Buttons tweed blazer</a><br><br><br><br></p>', 'aovangchanh.jpg', '', '', '2020-08-27 15:24:23', 0, 0, 0, 1),
(2, 'Flowy striped skirt', 2, '450000', 0, 'Flowy striped skirt', '<p><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Flowy striped skirt</a><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Flowy striped skirt</a><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Flowy striped skirt</a><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Flowy striped skirt</a><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Flowy striped skirt</a><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Flowy striped skirt</a><br></p>', 'Flowystripedskirt.jpg', '', '', '2020-08-27 15:25:39', 0, 0, 0, 1),
(3, 'Cotton T-Shirt', 1, '1200000', 10, 'Cotton T-Shirt', '<p><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Cotton T-Shirt</a></p><p>shasbd</p><p>ádjasdiuawkansdjaw</p><p>ạdiaw</p><p>ádjbawdas</p><p>đănksad<br><br></p>', 'CottonT-Shirt.jpg', '', '', '2020-08-27 15:28:30', 0, 0, 0, 1),
(4, 'Slim striped pocket shirt', 2, '800000', 0, 'Slim striped pocket shirt', '<p><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Slim striped pocket shirt</a></p><p>ádjawj</p><p>asjdhawiu&nbsp;</p><p>ádiuaw</p><p>asdiuawhdiasjdaw aoiwadw</p><p><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Slim striped pocket shirt</a><br><br></p>', 'Slimstripedpocketshirt.jpg', '', '', '2020-08-27 15:29:39', 0, 0, 0, 1),
(5, 'Fit micro corduroy shirt', 2, '700000', 0, 'Fit micro corduroy shirt', '<p>ad<a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Fit micro corduroy shirt</a></p><p>ádawdasd</p><p>jfiemkmndkmfiuakhsdw</p><p>jasbdowa</p><p>sdbawkd</p>', 'Fitmicrocorduroyshirt.jpg', '', '', '2020-08-27 15:30:52', 0, 0, 0, 1),
(6, 'Tropical Kimono', 1, '750000', 15, 'Tropical KimonoTropical Kimono', '<p>ahgsdauw</p><p>ádhajwhdjkaSDiauwdnasdjh</p><p>ádawdjkas</p><p>daiuwbnaskd</p><p>ăduhajsbdaw</p><p>đáuhabjwd</p>', 'TropicalKimono.jpg', '', '', '2020-08-27 15:31:53', 0, 0, 0, 1),
(7, 'Contrasting sunglasses', 1, '700000', 20, 'Contrasting sunglasseshyw dia', '<p><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Contrasting sunglasses</a></p><p>ashduaw ;sid&nbsp;&nbsp;</p><p>asduihwkasnaiw oaiwh</p><p>asdbhawujdb ád</p><p>awhamwbdno;iknds f</p><p>e<br><br></p>', 'Contrastingsunglasses.jpg', '', '', '2020-08-27 15:32:59', 0, 0, 0, 1),
(8, 'Water resistant backpack', 2, '730000', 0, 'Water resistant backpack gtw sd', '<p><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/index.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Water resistant backpack</a>ádgawyuij</p><p>sdawjvhblas</p><p>dawikjvba s</p><p>dăidjbnasd</p><p>awkijbc ựer</p><p>uawujn</p>', 'Waterresistantbackpack.jpg', '', '', '2020-08-27 18:26:58', 0, 0, 0, 1),
(9, 'Circular pendant earrings', 5, '390000', 10, 'Circular pendant earrings', '<p>áudygawubsd</p><p>aáiodaw</p><p>ajsdauwdh=sd</p><p>ă</p><p>hoa tai</p>', 'Circularpendantearrings.jpg', '', '', '2020-08-27 15:36:29', 0, 0, 0, 1),
(10, 'Túi da đen :V', 5, '890000', 0, 'auiw doaiw daoiw m', '<p>ádawduabsd</p><p>ặhabdsljawalsdjbalwknSdawd[ad;awaDsalwdba\'d</p><p>ádasd</p><p>ơ</p>', 'shop-2.jpg', '', '', '2020-08-27 15:38:03', 0, 0, 0, 1),
(11, 'cái gì đó :V ở đây này gì gì đó ấy :V', 3, '450000', 0, 'thuấhwasduahwashldawd', '<p>Yêu là thathu</p>', 'shop-8.jpg', 'bs-3.jpg', 'cp-1.jpg', '2020-09-16 01:14:10', 0, 0, 0, 1),
(12, 'Furry hooded parka', 1, '2500000', 0, 'ádawadawdFurry hooded parka', '<p>ádawawdaw</p><p>đak[ư\'ădb</p><p><a href=\"file:///C:/Users/Truong/Desktop/devpro/ashion/shop.html#\" style=\"color: rgb(17, 17, 17); background-color: rgb(255, 255, 255); outline: none; font-size: 14px; font-family: Montserrat, sans-serif; text-align: center;\">Furry hooded parka</a><br></p>', 'shop-1.jpg', 'rp-3.jpg', 'f-1.jpg', '2020-08-27 15:40:38', 0, 0, 0, 1),
(17, 'aaaa', 3, '750000', 0, 'aaaaaaaaaaaaaaaaa', '<p><img src=\"data:image/png;base64,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\" data-filename=\"logo.png\" style=\"width: 135px;\"></p><p>aaa</p>', '', '', '', '2020-09-10 02:55:44', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamtronggiohang`
--

CREATE TABLE `sanphamtronggiohang` (
  `id` int(11) NOT NULL,
  `idsanpham` int(11) DEFAULT NULL,
  `idtaikhoan` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `thoigiantao` datetime DEFAULT NULL,
  `trangthai` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamyeuthich`
--

CREATE TABLE `sanphamyeuthich` (
  `id` int(11) NOT NULL,
  `idsanpham` int(11) DEFAULT NULL,
  `idtaikhoan` int(11) DEFAULT NULL,
  `thoigiantao` datetime DEFAULT NULL,
  `trangthai` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='sản phẩm yêu thích của khách hàng';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `idnguoidung` int(11) NOT NULL,
  `tendangnhap` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `matkhau` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `thoigiantao` datetime DEFAULT NULL,
  `trangthai` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `idnguoidung`, `tendangnhap`, `matkhau`, `thoigiantao`, `trangthai`) VALUES
(1, 1, 'Admin', '$2a$08$qICawU2cBy90XmwRqbgOVOpWEflYbILwy7zOh60J88/WzLq.SKyZu', '2020-08-28 06:47:59', 1),
(4, 5, 'Wolo', '$2a$08$qICawU2cBy90XmwRqbgOVOpWEflYbILwy7zOh60J88/WzLq.SKyZu', '2020-08-28 07:37:14', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_binhluan_blog` (`idblog`),
  ADD KEY `FK_binhluan_taikhoan` (`idtaikhoan`),
  ADD KEY `FK_binhluan_binhluan` (`idbinhluan`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_taikhoan` (`idtaikhoan`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_danhmuc_danhmuc` (`iddanhmuc`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_donhang_taikhoan` (`idtaikhoan`),
  ADD KEY `FK_donhang_magiamgia` (`magiamgia`);

--
-- Chỉ mục cho bảng `donhang_sanpham`
--
ALTER TABLE `donhang_sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_dhsp_sp` (`idsanpham`),
  ADD KEY `FK_dhsp_donhang` (`iddonhang`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_taikhoan`
--
ALTER TABLE `role_taikhoan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_roletk_role` (`idrole`),
  ADD KEY `FK_roletk_taikhoan` (`idtaikhoan`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sanpham_danhmuc` (`iddanhmuc`);

--
-- Chỉ mục cho bảng `sanphamtronggiohang`
--
ALTER TABLE `sanphamtronggiohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_spgh_sp` (`idsanpham`),
  ADD KEY `FK_spgh_taikhoan` (`idtaikhoan`);

--
-- Chỉ mục cho bảng `sanphamyeuthich`
--
ALTER TABLE `sanphamyeuthich`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_spthich_taikhoan` (`idtaikhoan`),
  ADD KEY `FK_spthich_sanpham` (`idsanpham`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_taikhoan_nguoidung` (`idnguoidung`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `donhang_sanpham`
--
ALTER TABLE `donhang_sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `role_taikhoan`
--
ALTER TABLE `role_taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `sanphamtronggiohang`
--
ALTER TABLE `sanphamtronggiohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanphamyeuthich`
--
ALTER TABLE `sanphamyeuthich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `FK_binhluan_binhluan` FOREIGN KEY (`idbinhluan`) REFERENCES `binhluan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_binhluan_blog` FOREIGN KEY (`idblog`) REFERENCES `blog` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_binhluan_taikhoan` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `FK_blog_taikhoan` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD CONSTRAINT `FK_danhmuc_danhmuc` FOREIGN KEY (`iddanhmuc`) REFERENCES `danhmuc` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `FK_donhang_magiamgia` FOREIGN KEY (`magiamgia`) REFERENCES `magiamgia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_donhang_taikhoan` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `donhang_sanpham`
--
ALTER TABLE `donhang_sanpham`
  ADD CONSTRAINT `FK_dhsp_donhang` FOREIGN KEY (`iddonhang`) REFERENCES `donhang` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_dhsp_sp` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `role_taikhoan`
--
ALTER TABLE `role_taikhoan`
  ADD CONSTRAINT `FK_roletk_role` FOREIGN KEY (`idrole`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_roletk_taikhoan` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_sanpham_danhmuc` FOREIGN KEY (`iddanhmuc`) REFERENCES `danhmuc` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `sanphamtronggiohang`
--
ALTER TABLE `sanphamtronggiohang`
  ADD CONSTRAINT `FK_spgh_sp` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_spgh_taikhoan` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `sanphamyeuthich`
--
ALTER TABLE `sanphamyeuthich`
  ADD CONSTRAINT `FK_spthich_sanpham` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_spthich_taikhoan` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `FK_taikhoan_nguoidung` FOREIGN KEY (`idnguoidung`) REFERENCES `nguoidung` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
