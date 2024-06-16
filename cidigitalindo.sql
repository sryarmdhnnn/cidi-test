-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2024 at 08:02 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cidigitalindo`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `photo`) VALUES
(5, 'abf9dc8ac816930e73e66e4d69d92839.png');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `text`, `photo`) VALUES
(1, 'Hardware', '\"Tinjauan terperinci terhadap arsitektur hardware mengungkap keindahan di balik kecerdasan mesin yang membangun fondasi teknologi masa depan.\" ', '894c64e2f43f660559d0c7a8ab5e0528.jpg'),
(2, 'Website', '\"Sebuah website adalah gerbang digital yang menghubungkan pemikiran, inspirasi, dan informasi, membentuk jaringan tak terbatas dari ide-ide yang memperkaya pengalaman daring kita.\"', '92186aa2c4df6eec7be6d24350690896.jpg'),
(3, 'Mobile', '\"Mobile bukan hanya perangkat, tetapi jendela tak terbatas ke dunia, menghubungkan kita dengan kekuatan besar informasi, kreativitas, dan konektivitas, mengikat kami pada kemungkinan tak terbatas di ujung jari kita.\"', 'f572a6f91d6300e069076398d7fc99cb.jpg'),
(4, 'Software', '\"Tidak ada batasan dalam dunia yang diciptakan oleh kode. Dengan software, imajinasi kita menjadi kenyataan dan batasan teknologi hanya sebatas kreativitas kita.\"', '6c659d5f0dace2c1d7344bb7a45c13f4.jpg'),
(5, 'Desgin', '\"Desain adalah seni mengubah ide menjadi realitas visual yang memikat, menyampaikan cerita tanpa kata, dan menciptakan pengalaman yang tak terlupakan.\"', 'f9bad117df61dd5fe83756189a054f08.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bg_majors`
--

CREATE TABLE `bg_majors` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bg_majors`
--

INSERT INTO `bg_majors` (`id`, `photo`) VALUES
(1, '1fa054fa289e79849b52575ca21a8fc6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `photo`) VALUES
(3, 'Lab Komputer', 'lab-komputer-20220825185508.jpg'),
(4, 'Perpustakaan', 'perpustakaan-20220825190131.png'),
(5, 'Kantin', 'kantin-20220825190142.png'),
(6, 'Lapangan', 'lapangan-20220825190202.png'),
(9, 'Musholla', 'musholla-20200430120051.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `identity`
--

CREATE TABLE `identity` (
  `id` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identity`
--

INSERT INTO `identity` (`id`, `meta_title`, `meta_description`, `meta_keyword`, `photo`) VALUES
(1, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus.', 'Digitalindo', '18efe02e7fcc5c6a4ee8c619e501a7d9.png');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `user_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 2, 'Pengaturan Web', '', 'fas fa-fw fa-cog', 'Y'),
(2, 2, 'Agenda', 'jadwal', 'fas fa-fw fa-users', 'Y'),
(3, 2, 'Manajemen Media', '', 'fas fa-fw fa-school', 'Y'),
(4, 2, 'Struktur Organisasi', 'struktur', 'fas fa-fw fa-sitemap', 'Y'),
(5, 1, 'Manajemen User', 'user', 'fas fa-fw fa-user', 'Y'),
(6, 2, 'Profile', '', 'fas fa-fw fa-home', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `opening`
--

CREATE TABLE `opening` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opening`
--

INSERT INTO `opening` (`id`, `content`, `photo`) VALUES
(1, 'Digitalindo adalah perusahaan swasta yang bergerak dalam bidang Hardware dan Software Development yang mengkhususkan diri dalam menciptakan dan mengembangkan aplikasi web, aplikasi mobile, serta aplikasi lainnya berbasis web, berdiri sejak 2009, kami menawarkan solusi dan layanan terbaik untuk kelancaran usaha Anda. Kami memiliki tim pengembang / programmer yang berpengalaman dibidangnya, kami akan memberikan layanan profesional dengan keahlian solusi IT kami, selain itu sejak teknologi informasi berkembang secara pesat, ini adalah penting bagi tim pengembang kami dalam melakukan update terhadap pengetahuan dan beradaptasi pada situasi perkembangan teknologi, oleh karena itu, kami ingin membantu klien dalam menyediakan sumber daya yang telah dibekali dengan situasi akan teknologi baru, untuk memberikan layanan terbaik sesuai dengan kebutuhan klien. Product spesial kami adalah aplikasi Logistics, Aplikasi Logistics, Aplikasi Cargo, Aplikasi Kurir.', 'bac116fca143d45f18a54c146fba2b75.png');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `seo_title`, `content`, `photo`, `is_active`, `date`) VALUES
(2, 'Hardware', 'hardware', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus. Mauris non dolor laoreet, efficitur ligula eget, suscipit ipsum. Praesent porttitor sollicitudin magna maximus pharetra. Nullam pretium vestibulum augue, sed viverra velit gravida vel. Nunc feugiat arcu vel urna lobortis mollis. Ut arcu augue, ullamcorper ut magna a, elementum aliquam nunc. Pellentesque sapien nibh, suscipit volutpat sem ut, vulputate efficitur arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean aliquet sagittis congue. Maecenas felis sem, interdum vel consectetur quis, vulputate in augue.</p>\r\n\r\n<p>Vestibulum massa dolor, sollicitudin eget nulla iaculis, tincidunt luctus lacus. Suspendisse nisi ligula, imperdiet eget tempor et, faucibus et orci. Pellentesque semper viverra metus, eget fermentum felis ornare at. In semper lacinia elit, eget consequat dolor blandit vitae. Aliquam erat volutpat. Aliquam et dictum erat. Etiam purus ipsum, convallis sit amet lorem eget, iaculis rhoncus arcu. Aliquam id fringilla magna, a euismod justo. Nam non urna feugiat ligula finibus blandit. Cras libero sapien, bibendum facilisis justo id, ultricies ullamcorper nisi.</p>\r\n\r\n<p>Maecenas condimentum aliquet pulvinar. Suspendisse quis malesuada nulla, eget eleifend tellus. Suspendisse pharetra enim in ante fermentum consectetur. Vivamus viverra, felis vitae condimentum tempus, libero ex consectetur dui, vel interdum nibh turpis in lectus. Suspendisse potenti. Nam sagittis, ligula id tempor tristique, enim eros facilisis purus, vitae elementum risus lectus sit amet ipsum. In nec sollicitudin massa, ut cursus purus. Proin eu tempor magna, non vestibulum diam.</p>', '-20240611184545.jpg', 'Y', '2024-06-11'),
(3, 'Mobile', 'mobile', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus. Mauris non dolor laoreet, efficitur ligula eget, suscipit ipsum. Praesent porttitor sollicitudin magna maximus pharetra. Nullam pretium vestibulum augue, sed viverra velit gravida vel. Nunc feugiat arcu vel urna lobortis mollis. Ut arcu augue, ullamcorper ut magna a, elementum aliquam nunc. Pellentesque sapien nibh, suscipit volutpat sem ut, vulputate efficitur arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean aliquet sagittis congue. Maecenas felis sem, interdum vel consectetur quis, vulputate in augue.</p>\r\n\r\n<p>Vestibulum massa dolor, sollicitudin eget nulla iaculis, tincidunt luctus lacus. Suspendisse nisi ligula, imperdiet eget tempor et, faucibus et orci. Pellentesque semper viverra metus, eget fermentum felis ornare at. In semper lacinia elit, eget consequat dolor blandit vitae. Aliquam erat volutpat. Aliquam et dictum erat. Etiam purus ipsum, convallis sit amet lorem eget, iaculis rhoncus arcu. Aliquam id fringilla magna, a euismod justo. Nam non urna feugiat ligula finibus blandit. Cras libero sapien, bibendum facilisis justo id, ultricies ullamcorper nisi.</p>\r\n\r\n<p>Maecenas condimentum aliquet pulvinar. Suspendisse quis malesuada nulla, eget eleifend tellus. Suspendisse pharetra enim in ante fermentum consectetur. Vivamus viverra, felis vitae condimentum tempus, libero ex consectetur dui, vel interdum nibh turpis in lectus. Suspendisse potenti. Nam sagittis, ligula id tempor tristique, enim eros facilisis purus, vitae elementum risus lectus sit amet ipsum. In nec sollicitudin massa, ut cursus purus. Proin eu tempor magna, non vestibulum diam.</p>', '-20240611184652.jpg', 'Y', '2024-06-11'),
(4, 'Software', 'software', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus. Mauris non dolor laoreet, efficitur ligula eget, suscipit ipsum. Praesent porttitor sollicitudin magna maximus pharetra. Nullam pretium vestibulum augue, sed viverra velit gravida vel. Nunc feugiat arcu vel urna lobortis mollis. Ut arcu augue, ullamcorper ut magna a, elementum aliquam nunc. Pellentesque sapien nibh, suscipit volutpat sem ut, vulputate efficitur arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean aliquet sagittis congue. Maecenas felis sem, interdum vel consectetur quis, vulputate in augue.</p>\r\n\r\n<p>Vestibulum massa dolor, sollicitudin eget nulla iaculis, tincidunt luctus lacus. Suspendisse nisi ligula, imperdiet eget tempor et, faucibus et orci. Pellentesque semper viverra metus, eget fermentum felis ornare at. In semper lacinia elit, eget consequat dolor blandit vitae. Aliquam erat volutpat. Aliquam et dictum erat. Etiam purus ipsum, convallis sit amet lorem eget, iaculis rhoncus arcu. Aliquam id fringilla magna, a euismod justo. Nam non urna feugiat ligula finibus blandit. Cras libero sapien, bibendum facilisis justo id, ultricies ullamcorper nisi.</p>\r\n\r\n<p>Maecenas condimentum aliquet pulvinar. Suspendisse quis malesuada nulla, eget eleifend tellus. Suspendisse pharetra enim in ante fermentum consectetur. Vivamus viverra, felis vitae condimentum tempus, libero ex consectetur dui, vel interdum nibh turpis in lectus. Suspendisse potenti. Nam sagittis, ligula id tempor tristique, enim eros facilisis purus, vitae elementum risus lectus sit amet ipsum. In nec sollicitudin massa, ut cursus purus. Proin eu tempor magna, non vestibulum diam.</p>', '-20240611184720.jpg', 'Y', '2024-06-11'),
(5, 'Design', 'design', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus. Mauris non dolor laoreet, efficitur ligula eget, suscipit ipsum. Praesent porttitor sollicitudin magna maximus pharetra. Nullam pretium vestibulum augue, sed viverra velit gravida vel. Nunc feugiat arcu vel urna lobortis mollis. Ut arcu augue, ullamcorper ut magna a, elementum aliquam nunc. Pellentesque sapien nibh, suscipit volutpat sem ut, vulputate efficitur arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean aliquet sagittis congue. Maecenas felis sem, interdum vel consectetur quis, vulputate in augue.</p>\r\n\r\n<p>Vestibulum massa dolor, sollicitudin eget nulla iaculis, tincidunt luctus lacus. Suspendisse nisi ligula, imperdiet eget tempor et, faucibus et orci. Pellentesque semper viverra metus, eget fermentum felis ornare at. In semper lacinia elit, eget consequat dolor blandit vitae. Aliquam erat volutpat. Aliquam et dictum erat. Etiam purus ipsum, convallis sit amet lorem eget, iaculis rhoncus arcu. Aliquam id fringilla magna, a euismod justo. Nam non urna feugiat ligula finibus blandit. Cras libero sapien, bibendum facilisis justo id, ultricies ullamcorper nisi.</p>\r\n\r\n<p>Maecenas condimentum aliquet pulvinar. Suspendisse quis malesuada nulla, eget eleifend tellus. Suspendisse pharetra enim in ante fermentum consectetur. Vivamus viverra, felis vitae condimentum tempus, libero ex consectetur dui, vel interdum nibh turpis in lectus. Suspendisse potenti. Nam sagittis, ligula id tempor tristique, enim eros facilisis purus, vitae elementum risus lectus sit amet ipsum. In nec sollicitudin massa, ut cursus purus. Proin eu tempor magna, non vestibulum diam.</p>', '-20240611184825.jpg', 'Y', '2024-06-11'),
(6, 'Website', 'website', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus. Mauris non dolor laoreet, efficitur ligula eget, suscipit ipsum. Praesent porttitor sollicitudin magna maximus pharetra. Nullam pretium vestibulum augue, sed viverra velit gravida vel. Nunc feugiat arcu vel urna lobortis mollis. Ut arcu augue, ullamcorper ut magna a, elementum aliquam nunc. Pellentesque sapien nibh, suscipit volutpat sem ut, vulputate efficitur arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean aliquet sagittis congue. Maecenas felis sem, interdum vel consectetur quis, vulputate in augue.</p>\r\n\r\n<p>Vestibulum massa dolor, sollicitudin eget nulla iaculis, tincidunt luctus lacus. Suspendisse nisi ligula, imperdiet eget tempor et, faucibus et orci. Pellentesque semper viverra metus, eget fermentum felis ornare at. In semper lacinia elit, eget consequat dolor blandit vitae. Aliquam erat volutpat. Aliquam et dictum erat. Etiam purus ipsum, convallis sit amet lorem eget, iaculis rhoncus arcu. Aliquam id fringilla magna, a euismod justo. Nam non urna feugiat ligula finibus blandit. Cras libero sapien, bibendum facilisis justo id, ultricies ullamcorper nisi.</p>\r\n\r\n<p>Maecenas condimentum aliquet pulvinar. Suspendisse quis malesuada nulla, eget eleifend tellus. Suspendisse pharetra enim in ante fermentum consectetur. Vivamus viverra, felis vitae condimentum tempus, libero ex consectetur dui, vel interdum nibh turpis in lectus. Suspendisse potenti. Nam sagittis, ligula id tempor tristique, enim eros facilisis purus, vitae elementum risus lectus sit amet ipsum. In nec sollicitudin massa, ut cursus purus. Proin eu tempor magna, non vestibulum diam.</p>', '-20240611184843.jpg', 'Y', '2024-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `structure`
--

CREATE TABLE `structure` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `structure`
--

INSERT INTO `structure` (`id`, `photo`) VALUES
(1, 'c34d2f264a0bc5bf27b2f9e79efaa92e.png');

-- --------------------------------------------------------

--
-- Table structure for table `submenus`
--

CREATE TABLE `submenus` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `sub_url` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenus`
--

INSERT INTO `submenus` (`id`, `menu_id`, `sub_title`, `sub_url`, `is_active`) VALUES
(1, 1, 'Identitas Web', 'identitas', 'Y'),
(2, 1, 'Sambutan', 'sambutan', 'Y'),
(3, 3, 'Banner', 'banner', 'Y'),
(4, 3, 'Fasilitas', 'fasilitas', 'Y'),
(5, 3, 'Berita', 'berita', 'Y'),
(6, 3, 'Background Jurusan', 'background', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$pfe4X24wUalRwJseC96pLOh2FshRtmYVNRhS8eLTKCSv9KVXRWxBy', 'admin@mail.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1718117224, 1, 'Abid', 'Taufiqur R.', NULL, '081222332442');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(38, 1, 1),
(39, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bg_majors`
--
ALTER TABLE `bg_majors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identity`
--
ALTER TABLE `identity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opening`
--
ALTER TABLE `opening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `structure`
--
ALTER TABLE `structure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenus`
--
ALTER TABLE `submenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bg_majors`
--
ALTER TABLE `bg_majors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `identity`
--
ALTER TABLE `identity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `opening`
--
ALTER TABLE `opening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `structure`
--
ALTER TABLE `structure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `submenus`
--
ALTER TABLE `submenus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `submenus`
--
ALTER TABLE `submenus`
  ADD CONSTRAINT `submenus_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
