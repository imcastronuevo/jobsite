-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2023 at 01:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobhunter`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(3) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `adminname`, `email`, `mypassword`, `created_at`) VALUES
(1, 'Okram', 'marko.santos@icloud.com', '$2y$10$LCDRmbYRtlydcUlQNCkwWekcD.PDssT.WWMFJN0jHLU9X/wGtA1Mm', '2023-12-22 12:24:01'),
(2, 'Okram', 'marko.santos@icloud.com', '$2y$10$tviaOI.gDlhiibTIYX5L7.F5Ywf.1armI5MgUKd/sjQ8XuGkkN1ga', '2023-12-22 12:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'design', '2023-12-18 09:10:53'),
(2, 'development', '2023-12-18 09:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(3) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` text NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `vacancy` int(3) NOT NULL,
  `job_category` varchar(200) NOT NULL,
  `experience` varchar(200) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `application_deadline` varchar(200) NOT NULL,
  `job_description` text NOT NULL,
  `responsibilities` text NOT NULL,
  `education_experience` text NOT NULL,
  `other_benifits` text NOT NULL,
  `company_email` varchar(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `company_id` int(3) NOT NULL,
  `company_image` varchar(200) NOT NULL,
  `status` int(3) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_title`, `job_region`, `job_type`, `vacancy`, `job_category`, `experience`, `salary`, `gender`, `application_deadline`, `job_description`, `responsibilities`, `education_experience`, `other_benifits`, `company_email`, `company_name`, `company_id`, `company_image`, `status`, `created_at`) VALUES
(1, 'Game Developer', 'San Francisco', 'Full Time', 2, 'design', '3-6 years', '$70k - $100k', 'Any', '20-11-2023', 'UI/UX Designer responsibilities include gathering user requirements, designing graphic elements and building navigation components. To be successful in this role, you should have experience with design software and wireframe tools. If you also have a portfolio of professional design projects that includes work with web/mobile applications, we’d like to meet you.', 'Gather and evaluate user requirements in collaboration with product managers and engineers\r\nIllustrate design ideas using storyboards, process flows and sitemaps\r\nDesign graphic user interface elements, like menus, tabs and widgets\r\nBuild page navigation buttons and search fields\r\nDevelop UI mockups and prototypes that clearly illustrate how sites function and look like', 'UI/UX Designer responsibilities include gathering user requirements, designing graphic elements and building navigation components. To be successful in this role, you should have experience with design software and wireframe tools. If you also have a portfolio of professional design projects that includes work with web/mobile applications, we’d like to meet you. number 3', 'Retain Users for a Long Time. ...\r\nBoosts Branding. ...\r\nAttracts New Customers on the Platform. ...\r\nIncreases Productivity. ...\r\nIncreases Conversion Rates of Your Platform. ...\r\nHelps in Search Engine Optimization. ...\r\nReduces Costs. ...\r\nBest Experience for All Devices.', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 1, '2023-12-13 10:43:51'),
(2, 'Web Developer', 'Ontario', 'Part Time', 1, 'development', '1-3 years', '$70k - $100k', 'Female', '20-11-2023', 'Create Responsive designs', 'code all day', 'bachelors degree', 'sickleave', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 1, '2023-12-14 09:54:10'),
(3, 'Web Developer', 'Anywhere', 'Full Time', 1, 'development', '1-3 years', '$70k - $100k', 'Male', '20-11-2023', 'Create Responsive designs', 'code all day', 'bachelors degree', 'sickleave \'a;sfla\';slfa\';sfl\';l,f\';w,f\';a,f\';aw,f\'w;f, lf,mle;,fl;e,fl;a,fal,fdl;as,d\'as;s,das\';,d.\'w ;,fe l\'f,l\';ef', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 1, '2023-12-14 09:57:05'),
(5, 'Web Developer', 'Ontario', 'Full Time', 1, '', '1-3 years', '$70k - $100k', 'Female', '20-11-2023', 'Create Responsive designs', 'code all day', 'bachelors degree', 'sickleave', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 0, '2023-12-14 09:59:31'),
(6, 'Web Developer', 'Ontario', 'Full Time', 1, '', '1-3 years', '$70k - $100k', 'Female', '20-11-2023', 'Create Responsive designs', 'code all day', 'bachelors degree', 'sickleave', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 0, '2023-12-14 10:00:15'),
(7, 'Web Developer', 'Ontario', 'Full Time', 1, '', '1-3 years', '$70k - $100k', 'Female', '20-11-2023', 'Create Responsive designs', 'code all day', 'bachelors degree', 'sickleave', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 0, '2023-12-14 10:02:16'),
(8, 'Web Developer', 'Manhattan', 'Full Time', 1, '', '3-6 years', '$70k - $100k', 'Male', '20-11-2023', 'gdgsdg', 'dsgsdgsdg', 'dsgsdgsdg', 'sdgsdgdg', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 0, '2023-12-14 10:02:44'),
(9, 'Web Developer', 'Manhattan', 'Full Time', 1, '', '3-6 years', '$70k - $100k', 'Male', '20-11-2023', 'gdgsdg', 'dsgsdgsdg', 'dsgsdgsdg', 'sdgsdgdg', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 0, '2023-12-14 10:03:16'),
(10, 'UI/UX', 'Manhattan', 'Part Time', 1, '', '3-6 years', '$50k - $70k', 'Female', '20-11-2023', 'dsgsdgsdg', 'dsgsdgsdg', 'sdgsdgsdg', '', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 0, '2023-12-14 10:05:29'),
(11, 'UI/UX', 'Toronto', 'Part Time', 1, '', '1-3 years', '$70k - $100k', 'Female', '20-11-2023', 'dsgsdgsdg', 'dsgsdgsdg', 'sdgsdgsdg', 'awfrawfawf', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 0, '2023-12-14 10:06:36'),
(12, 'UI/UX', 'Toronto', 'Part Time', 1, '', '1-3 years', '$70k - $100k', 'Female', '20-11-2023', 'dsgsdgsdg', 'dsgsdgsdg', 'sdgsdgsdg', 'awfrawfawf', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 0, '2023-12-14 10:12:44'),
(13, 'UI/UX', 'Toronto', 'Part Time', 1, 'design', '1-3 years', '$70k - $100k', 'Female', '20-11-2023', 'dsgsdgsdg', 'dsgsdgsdg', 'sdgsdgsdg', 'awfrawfawf', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 0, '2023-12-14 10:13:41'),
(14, 'UI/UX', 'Toronto', 'Part Time', 1, 'design', '1-3 years', '$70k - $100k', 'Female', '20-11-2023', 'dsgsdgsdg', 'dsgsdgsdg', 'sdgsdgsdg', 'awfrawfawf', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 0, '2023-12-14 10:13:56'),
(15, 'UI/UX', 'Toronto', 'Part Time', 1, 'design', '1-3 years', '$70k - $100k', 'Female', '20-11-2023', 'dsgsdgsdg', 'dsgsdgsdg', 'sdgsdgsdg', 'awfrawfawf', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 1, '2023-12-14 10:14:23'),
(16, 'UI/UX', 'Toronto', 'Part Time', 1, 'design', '1-3 years', '$70k - $100k', 'Female', '20-11-2023', 'dsgsdgsdg', 'dsgsdgsdg', 'sdgsdgsdg', 'awfrawfawf', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 1, '2023-12-14 10:16:44'),
(17, 'UI/UX', 'Toronto', 'Part Time', 1, 'design', '1-3 years', '$70k - $100k', 'Female', '20-11-2023', 'dsgsdgsdg', 'dsgsdgsdg', 'sdgsdgsdg', 'awfrawfawf', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 0, '2023-12-14 10:29:18'),
(18, 'Game developer', 'Toronto', 'Full Time', 1, 'development', '3-6 years', '$50k - $70k', 'Male', '20-11-2023', 'create games', 'create and play games', 'bachelors degree', 'sick leaves', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 1, '2023-12-18 09:27:42'),
(19, 'Sr. Web Developer', 'San Francisco', 'Part Time', 2, 'development', '3-6 years', '$50k - $70k', 'Male', '20-11-2023', 'Create Responsive designs', 'code all day', 'bachelors degree', 'sickleave', 'kittyduts@gmail.com', 'kittyDuterter', 12, 'person_1.jpg', 1, '2023-12-19 09:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` int(3) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `cv` varchar(200) NOT NULL,
  `worker_id` int(3) NOT NULL,
  `job_id` int(3) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `company_id` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `username`, `email`, `cv`, `worker_id`, `job_id`, `job_title`, `company_id`, `created_at`) VALUES
(1, 'sotnas', 'Marko231@gmail.com', 'React Intro.pdf', 7, 1, 'Game Developer', 12, '2023-12-20 09:55:44'),
(2, 'sotnas', 'Marko231@gmail.com', 'React Intro.pdf', 7, 19, 'Sr. Web Developer', 12, '2023-12-22 12:38:17'),
(3, 'sotnas', 'Marko231@gmail.com', 'React Intro.pdf', 7, 19, 'Sr. Web Developer', 12, '2023-12-22 12:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `save_jobs`
--

CREATE TABLE `save_jobs` (
  `id` int(3) NOT NULL,
  `job_id` int(3) NOT NULL,
  `worker_id` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `save_jobs`
--

INSERT INTO `save_jobs` (`id`, `job_id`, `worker_id`, `created_at`) VALUES
(4, 1, 7, '2023-12-21 09:47:50'),
(5, 16, 7, '2023-12-21 09:48:01'),
(6, 15, 7, '2023-12-22 12:39:38');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(3) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `keyword`, `created_at`) VALUES
(1, 'web developer', '2022-11-01 07:36:03'),
(2, 'web designer', '2022-11-01 08:48:25'),
(3, 'web designer', '2022-11-01 08:49:22'),
(4, 'game desinger', '2022-11-01 08:50:18'),
(5, 'web developer', '2022-11-03 09:15:27'),
(6, 'game designer', '2023-12-22 11:05:14'),
(7, 'UI/UX', '2023-12-22 11:26:31'),
(8, 'UI/UX', '2023-12-22 11:30:09'),
(9, 'Game Developer', '2023-12-22 11:30:35'),
(10, 'Game Developer', '2023-12-22 11:31:55'),
(11, 'Game Developer', '2023-12-22 11:32:42'),
(12, 'web developer', '2023-12-22 11:33:05'),
(13, 'game developer', '2023-12-22 11:38:42'),
(14, 'game developer', '2023-12-22 11:38:49'),
(15, 'game developer', '2023-12-22 11:38:52'),
(16, 'game developer', '2023-12-22 12:14:35'),
(17, 'game developer', '2023-12-22 12:15:44'),
(18, 'game developer', '2023-12-22 12:16:21'),
(19, 'game developer', '2023-12-22 12:16:38'),
(20, 'game designer', '2023-12-22 12:16:49'),
(21, 'game designer', '2023-12-22 12:16:53'),
(22, 'game designer', '2023-12-22 12:17:13'),
(23, 'game designer', '2023-12-22 12:17:25'),
(24, 'game developer', '2023-12-22 12:29:11'),
(25, 'game developer', '2023-12-22 12:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `cv` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `bio` varchar(500) DEFAULT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `linkedin` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reset_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `mypassword`, `img`, `type`, `cv`, `title`, `bio`, `facebook`, `twitter`, `linkedin`, `created_at`, `reset_token`) VALUES
(2, 'Marko', 'marko.santos@icloud.com', '$2y$10$UMfZXHlq4H7qlfIc2aTjHuVFPiNben6rm3rT6efzW6Z9m4QtR2NYa', 'sq_img_10.jpg', '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-07 09:32:56', NULL),
(3, 'markosantos', 'marknelsonl.santos@gmail.com', '$2y$10$DII58Mttw3xXLkCH7kzfguhHoAyC0/PDPgtRk0rUk9wSlawulEArS', 'sq_img_10.jpg', '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-07 09:33:12', NULL),
(4, 'markosantos', 'markosantos.dev@gmail.com', '$2y$10$5PP58DdJxNczO.s6NuF/XuLgSZXY0eGbuj2I09DJtlWo5Imu4gjDa', 'sq_img_10.jpg', '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-07 09:34:20', NULL),
(5, 'Marko', 'Marko@yahoo.com', '$2y$10$ZzHNYHO9KRUZWHpbJGS7Ku9qSH4DgYwVC0KqUV.rZxYDQAIlUMZzG', 'sq_img_10.jpg', '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-07 09:50:14', NULL),
(6, 'Okram', 'Marko2342@yahoo.com', '$2y$10$6sFxtx1AObhPoJCE.TWeYe6uz4RnKC5vInNi1cHBVyzz0l/82OoGu', 'person_2.jpg', 'Company', NULL, NULL, NULL, NULL, '', '0', '2023-12-08 02:20:42', NULL),
(7, 'sotnas', 'Marko231@gmail.com', '$2y$10$r5u3l7EyPl4/j5DY3u1JO.vhPNaYLu.TbVy6Yq6LGXPaHa8qtIleG', 'person_4.jpg', 'Employee', 'React Intro.pdf', 'Web Developer', '\"I\'m Simon Low, and I\'m seeking a position as an architect. I have extensive experience in civil engineering and computer-aided design.\"', 'Facebook.com', 'Twitter.com', 'linkedin.com.ph', '2023-12-08 02:24:33', NULL),
(8, 'MarkoSantos23', 'marksotnas@gmail.com', '$2y$10$cMw4Q3S1Yyg/yBG2IxbvpuY.mGw5vx3Dqo/xGkjkQ.bvHtn336z7G', 'person_2.jpg', 'Company', NULL, 'NULL', '\"I\'m Felix Loh, and I\'m an experienced nurse. I\'m currently seeking a travel nursing role where I can apply my skills.\"fasssfsasfafasfsffasfasfasfasf', 'Facebook.com', '', '0', '2023-12-08 03:25:42', NULL),
(9, 'Jao Mapa', 'jaomapa@gmail.com', '$2y$10$y6xp5InWI8yGYhgxyQ2jBeecsYhZK902KOhNtZHJGCLmR1DAhCjHe', 'person_3.jpg', 'Employee', 'React Intro.pdf', 'Web Developer', 'Datign Tambay ngayon palaboy', 'fb.com', 'twit.com', 'lind.com', '2023-12-12 10:51:40', NULL),
(10, 'Arnold', 'Arnold@terminator.com', '$2y$10$Vra0Y.9NbcwB4spnWgJXmOyhrACsze5RGcXchSLFNE6h60HFVIT/u', 'sq_img_10.jpg', 'Company', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 07:48:42', NULL),
(11, 'tom cruise', 'missionimposible@gmail.com', '$2y$10$QQ3arH7tagBasns6gcE7feoQAjPJLZ5kEguzsuX3F8sSkz0jew9b6', 'defaultpic.jpg', 'Employee', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 07:52:05', NULL),
(12, 'kittyDuterter', 'kittyduts@gmail.com', '$2y$10$iQEsSM44wZpUumekxC5BX.8aV3ITRW/jiWDCRiKAqkDOhmdXvyPWi', 'person_1.jpg', 'Company', 'NULL', 'NULL', 'Anak ni duterte', 'fb.com', 'twit.com', 'twit.com', '2023-12-13 07:55:14', 'a162bbd2254b48571f9508b87dd33f692cccca8ffb5634a5ef91e05cb0abd074');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `save_jobs`
--
ALTER TABLE `save_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `save_jobs`
--
ALTER TABLE `save_jobs`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
