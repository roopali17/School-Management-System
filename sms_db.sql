-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2025 at 02:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `fname`, `lname`) VALUES
(1, 'elias', '$2y$10$H7obJEdmLzqqcPy7wQWhsOLUvrgzC8f1Y1or2Gxaza5z1PT0tvLy6', 'Elias', 'Abdurrahman');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `grade`, `section`) VALUES
(1, 7, 2),
(2, 1, 1),
(3, 3, 1),
(4, 2, 1),
(7, 7, 1),
(8, 9, 1),
(12, 1, 2),
(13, 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `grade_id` int(11) NOT NULL,
  `grade` varchar(31) NOT NULL,
  `grade_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`grade_id`, `grade`, `grade_code`) VALUES
(1, '1', 'G'),
(2, '2', 'G'),
(3, '1', 'KG'),
(4, '2', 'KG'),
(7, '3', 'G'),
(9, '5', 'G'),
(14, '6', 'G');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `sender_full_name` varchar(100) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `sender_full_name`, `sender_email`, `message`, `date_time`) VALUES
(1, 'John doe', 'es@gmail.com', 'Hello, world', '2023-02-17 23:39:15'),
(2, 'John doe', 'es@gmail.com', 'Hi', '2023-02-17 23:49:19'),
(3, 'John doe', 'es@gmail.com', 'Hey, ', '2023-02-17 23:49:36'),
(4, 'Roopali Kosta', 'kostaroopali@gmail.com', 'Good afternoon', '2025-04-09 01:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `notice_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `description`, `notice_date`) VALUES
(2, 'change of timings', 'From tomorrow the timing for school will be 10:00 am to 4:00pm due to winter', '2025-04-02 21:43:07'),
(6, 'Holiday', 'The summer vacation is going to start from 1st May 2025 to 30th June 2025. Happy holidays!', '2025-04-09 19:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(6, 'D'),
(10, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `current_year` int(11) NOT NULL,
  `current_semester` varchar(11) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `slogan` varchar(300) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `current_year`, `current_semester`, `school_name`, `slogan`, `about`) VALUES
(1, 2025, 'II', 'Yohan Senior Secondary School', 'Empowering Students for a Bright Future', 'Yohan Senior Secondary School, established in 2005, is a reputed educational institution committed to providing quality education and overall development of students. Located in a peaceful and student-friendly environment, the school offers classes from Nursery to Grade 12 with a focus on academic excellence, discipline, and moral values. With well-qualified faculty, modern infrastructure, and a balanced curriculum, the school aims to nurture responsible, confident, and skilled individuals prepared for future challenges. Over the years, Yohan Senior Secondary School has earned a name for its consistent performance, co-curricular achievements, and dedication to holistic learning.');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `address` varchar(31) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_joined` timestamp NULL DEFAULT current_timestamp(),
  `parent_fname` varchar(127) NOT NULL,
  `parent_lname` varchar(127) NOT NULL,
  `parent_phone_number` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `username`, `password`, `fname`, `lname`, `grade`, `section`, `address`, `gender`, `email_address`, `date_of_birth`, `date_of_joined`, `parent_fname`, `parent_lname`, `parent_phone_number`) VALUES
(1, 'john12', '$2y$10$xmtROY8efWeORYiuQDE3SO.eZwscao20QNuLky1Qlr88zDzNNq4gm', 'John', 'Doe', 7, 2, 'California', 'Male', 'abas55@ab.com', '2012-09-12', '2019-12-11 14:16:44', 'Doe', 'Mark', '1234567890'),
(3, 'abas', '$2y$10$KLFheMWgpLfoiqMuW2LQxOPficlBiSIJ9.wE2qr5yJUbAQ.5VURoO', 'Abas', 'A.', 2, 1, 'Berlin', 'Male', 'abas@ab.com', '2002-12-03', '2021-12-01 14:16:51', 'dsf', 'dfds', '7979'),
(4, 'jo', '$2y$10$pYyVlWg9jxkT0u/4LrCMS.ztMaOvgyol1hgNt.jqcFEqUC7yZLIYe', 'John3', 'Doe', 1, 1, 'California,  Los angeles', 'Female', 'jo@jo.com', '2013-06-13', '2022-09-10 13:48:49', 'Doe', 'Mark', '074932040'),
(5, 'jo2', '$2y$10$lRQ58lbak05rW7.be8ok4OaWJcb9znRp9ra.qXqnQku.iDrA9N8vy', 'Jhon', 'Doe', 1, 1, 'UK', 'Male', 'jo@jo.com', '1990-02-15', '2023-02-12 18:11:26', 'Doe', 'Do', '0943568654'),
(7, 'roops12', '$2y$10$lOLgobQKT2O.Z.nh99jqienQ13ipCz7VPO4JXZuG4V0SssAEsNuVu', 'Roopali', 'Kosta', 9, 1, 'Madan Mahal', 'Male', 'roopali@gmail.com', '2012-12-12', '2025-04-08 16:52:14', 'as', 'pr', '8989565634');

-- --------------------------------------------------------

--
-- Table structure for table `student_class`
--

CREATE TABLE `student_class` (
  `student_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_class`
--

INSERT INTO `student_class` (`student_class_id`, `student_id`, `class_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 3, 2),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_score`
--

CREATE TABLE `student_score` (
  `id` int(11) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `results` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_score`
--

INSERT INTO `student_score` (`id`, `semester`, `year`, `student_id`, `teacher_id`, `subject_id`, `results`) VALUES
(1, 'II', 2021, 1, 1, 1, '10 15,15 20,10 10,10 20,30 35'),
(2, 'II', 2023, 1, 1, 4, '15 20,4 5'),
(3, 'I', 2022, 1, 1, 5, '10 20,50 50'),
(4, 'II', 2025, 1, 1, 1, '23 25,25 25,12 25,20 25,25 25');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(31) NOT NULL,
  `subject_code` varchar(31) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject`, `subject_code`, `grade`) VALUES
(1, 'English', 'EN', 7),
(2, 'Hindi', 'H', 7),
(3, 'Maths', 'M', 7),
(4, 'Science', 'SCI', 7),
(5, 'English', 'E', 1),
(6, 'Maths', 'M', 1),
(8, 'Hindi', 'HINDI', 1),
(1245, 'GK', 'GK', 1),
(1248, 'drawing', 'DRAW', 3),
(1249, 'Story Telling', 'ST', 3),
(1250, 'Maths', 'M', 3),
(1251, 'so sci', 'SS1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `class` varchar(31) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL,
  `subjects` varchar(31) NOT NULL,
  `address` varchar(31) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(31) NOT NULL,
  `qualification` varchar(127) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `username`, `password`, `class`, `fname`, `lname`, `subjects`, `address`, `employee_number`, `date_of_birth`, `phone_number`, `qualification`, `gender`, `email_address`, `date_of_joined`) VALUES
(1, 'oliver12', '$2y$10$JruTW/rNZ6CVO4nxYWCrn.GJpiIKMACEPYrK00S7Dk/fkbJIdYau2', '1234', 'Oliver', 'Noah', '1245', 'Indore', 6546, '2022-09-12', '9457396788', 'BSc', 'Male', 'ol@ab.com', '2022-09-09 05:23:45'),
(5, 'abas', '$2y$10$cMSKcHEJcg3K6wbVcxcXGuksgU39i70aEQVKN7ZHrzqTH9oAc3y5m', '123', 'Abas', 'A.', '12', 'Berlin', 1929, '2003-09-16', '09457396789', 'BSc,', 'Male', 'abas55@ab.com', '2022-09-09 06:42:31'),
(8, '11k', '$2y$10$9JcL8Wyi/33QTMdAGiZGiewmRoKXWHWDNlTyPC5niyitQnZ/cXzAG', '123', 'A', 'B', '13', 'xfvvvvvvvvv', 1236, '1111-11-11', '7440378897', 'B.sc', 'Female', 'kostaroopali@gmail.com', '2025-04-03 16:43:51'),
(9, 'rkosta17', '$2y$10$u65cfxKZFy4Uv4EwvvsrM.jMHwVIYpOZKITaFAg3Cwe2PINT8gW8a', '1238', 'Roop', 'Kosta', '1234568', 'Sharda Chowk', 47105, '2002-08-17', '7440378897', 'bca', 'Female', 'kostaroopali@gmail.com', '2025-04-06 09:47:30'),
(11, 'zy1', '$2y$10$qJ63b2WAa/8e2iHfGOd5Lu6m9ZbHfYu6RvXmRx5Eood527bQiMTLS', '1', 'z', 'y', '16', 'Sharda Chowk', 6546, '2011-11-11', '9457396788', 'bca', 'Male', 'vihan@gmail.com', '2025-04-08 22:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subjects`
--

CREATE TABLE `teacher_subjects` (
  `teacher_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_subjects`
--

INSERT INTO `teacher_subjects` (`teacher_id`, `subject_id`) VALUES
(1, 1245),
(1, 1245),
(1, 1245);

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `timetable_id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `admin_id` int(11) NOT NULL,
  `is_break` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`timetable_id`, `subject_id`, `start_time`, `end_time`, `teacher_id`, `class_id`, `day`, `period`, `section`, `admin_id`, `is_break`) VALUES
(89, 2, '07:00:00', '08:00:00', 5, 1, 'Monday', 1, NULL, 1, 0),
(94, 2, '08:00:00', '09:00:00', 5, 1, 'Monday', 2, NULL, 1, 0),
(95, 3, '09:00:00', '10:00:00', 8, 1, 'Monday', 3, NULL, 1, 0),
(96, NULL, '10:00:00', '10:20:00', NULL, 1, 'Monday', 4, NULL, 1, 1),
(97, 4, '10:20:00', '11:20:00', 9, 1, 'Monday', 5, NULL, 1, 0),
(98, 1, '07:00:00', '08:00:00', 1, 1, 'Tuesday', 1, NULL, 1, 0),
(99, 2, '08:00:00', '09:00:00', 5, 1, 'Tuesday', 2, NULL, 1, 0),
(100, 3, '09:00:00', '10:00:00', 8, 1, 'Tuesday', 3, NULL, 1, 0),
(101, NULL, '10:00:00', '10:20:00', NULL, 1, 'Tuesday', 4, NULL, 1, 1),
(102, 4, '10:20:00', '11:20:00', 9, 1, 'Tuesday', 5, NULL, 1, 0),
(103, 1, '07:00:00', '08:00:00', 1, 1, 'Wednesday', 1, NULL, 1, 0),
(104, 2, '08:00:00', '09:00:00', 5, 1, 'Wednesday', 2, NULL, 1, 0),
(105, 1, '09:00:00', '10:00:00', 1, 1, 'Wednesday', 3, NULL, 1, 0),
(106, NULL, '10:00:00', '10:20:00', NULL, 1, 'Wednesday', 4, NULL, 1, 1),
(107, 4, '10:20:00', '11:20:00', 9, 1, 'Wednesday', 5, NULL, 1, 0),
(108, 1, '07:00:00', '08:00:00', 1, 1, 'Thursday', 1, NULL, 1, 0),
(109, 2, '08:00:00', '09:00:00', 5, 1, 'Thursday', 2, NULL, 1, 0),
(110, 3, '09:00:00', '10:00:00', 8, 1, 'Thursday', 3, NULL, 1, 0),
(111, NULL, '10:00:00', '10:20:00', NULL, 1, 'Thursday', 4, NULL, 1, 1),
(112, 4, '10:20:00', '11:20:00', 9, 1, 'Thursday', 5, NULL, 1, 0),
(113, 4, '07:00:00', '08:00:00', 9, 1, 'Friday', 1, NULL, 1, 0),
(114, 3, '08:00:00', '09:00:00', 8, 1, 'Friday', 2, NULL, 1, 0),
(115, 2, '09:00:00', '10:00:00', 5, 1, 'Friday', 3, NULL, 1, 0),
(116, NULL, '10:00:00', '10:20:00', NULL, 1, 'Friday', 4, NULL, 1, 1),
(117, 1, '10:20:00', '11:20:00', 1, 1, 'Friday', 5, NULL, 1, 0),
(118, 4, '07:00:00', '08:00:00', 9, 1, 'Saturday', 1, NULL, 1, 0),
(119, 3, '08:00:00', '09:00:00', 8, 1, 'Saturday', 2, NULL, 1, 0),
(120, 2, '09:00:00', '10:00:00', 5, 1, 'Saturday', 3, NULL, 1, 0),
(121, NULL, '10:00:00', '10:20:00', NULL, 1, 'Saturday', 4, NULL, 1, 1),
(122, 1, '10:20:00', '11:20:00', 1, 1, 'Saturday', 5, NULL, 1, 0),
(123, 1245, '07:00:00', '08:00:00', 9, 2, 'Monday', 1, NULL, 1, 0),
(124, 5, '08:00:00', '09:00:00', 1, 2, 'Monday', 2, NULL, 1, 0),
(125, 8, '09:00:00', '10:00:00', 5, 2, 'Monday', 3, NULL, 1, 0),
(126, NULL, '10:00:00', '10:20:00', NULL, 2, 'Monday', 4, NULL, 1, 1),
(127, 5, '10:20:00', '11:20:00', 1, 2, 'Monday', 5, NULL, 1, 0),
(128, 6, '07:00:00', '08:00:00', 8, 2, 'Tuesday', 1, NULL, 1, 0),
(129, 6, '08:00:00', '09:00:00', 8, 2, 'Tuesday', 2, NULL, 1, 0),
(130, 5, '09:00:00', '10:00:00', 1, 2, 'Tuesday', 3, NULL, 1, 0),
(131, NULL, '10:00:00', '10:20:00', NULL, 2, 'Tuesday', 4, NULL, 1, 1),
(132, 8, '10:20:00', '11:20:00', 5, 2, 'Tuesday', 5, NULL, 1, 0),
(133, 3, '07:00:00', '08:00:00', 8, 2, 'Wednesday', 1, NULL, 1, 0),
(134, 1, '08:00:00', '09:00:00', 1, 2, 'Wednesday', 2, NULL, 1, 0),
(135, 1245, '09:00:00', '10:00:00', 9, 2, 'Wednesday', 3, NULL, 1, 0),
(136, NULL, '10:00:00', '10:20:00', NULL, 2, 'Wednesday', 4, NULL, 1, 1),
(137, 8, '10:20:00', '11:20:00', 5, 2, 'Wednesday', 5, NULL, 1, 0),
(138, 3, '07:00:00', '08:00:00', 8, 2, 'Thursday', 1, NULL, 1, 0),
(139, 1, '08:00:00', '09:00:00', 1, 2, 'Thursday', 2, NULL, 1, 0),
(140, 1245, '09:00:00', '10:00:00', 9, 2, 'Thursday', 3, NULL, 1, 0),
(141, NULL, '10:00:00', '10:20:00', NULL, 2, 'Thursday', 4, NULL, 1, 1),
(142, 8, '10:20:00', '11:20:00', 5, 2, 'Thursday', 5, NULL, 1, 0),
(143, 6, '07:00:00', '08:00:00', 8, 2, 'Friday', 1, NULL, 1, 0),
(144, 5, '08:00:00', '09:00:00', 1, 2, 'Friday', 2, NULL, 1, 0),
(145, 1245, '09:00:00', '10:00:00', 9, 2, 'Friday', 3, NULL, 1, 0),
(146, NULL, '10:00:00', '10:20:00', NULL, 2, 'Friday', 4, NULL, 1, 1),
(147, 8, '10:20:00', '11:20:00', 5, 2, 'Friday', 5, NULL, 1, 0),
(148, 6, '07:00:00', '08:00:00', 8, 2, 'Saturday', 1, NULL, 1, 0),
(149, 5, '08:00:00', '09:00:00', 1, 2, 'Saturday', 2, NULL, 1, 0),
(150, 1245, '09:00:00', '10:00:00', 9, 2, 'Saturday', 3, NULL, 1, 0),
(151, NULL, '10:00:00', '10:20:00', NULL, 2, 'Saturday', 4, NULL, 1, 1),
(152, 8, '10:20:00', '11:20:00', 5, 2, 'Saturday', 5, NULL, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `student_class`
--
ALTER TABLE `student_class`
  ADD PRIMARY KEY (`student_class_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `student_score`
--
ALTER TABLE `student_score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD KEY `fk_teacher` (`teacher_id`),
  ADD KEY `fk_subject` (`subject_id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`timetable_id`),
  ADD UNIQUE KEY `unique_timetable_entry` (`subject_id`,`day`,`period`,`class_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `fk_admin_id` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_class`
--
ALTER TABLE `student_class`
  MODIFY `student_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_score`
--
ALTER TABLE `student_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1253;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `timetable_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_class`
--
ALTER TABLE `student_class`
  ADD CONSTRAINT `student_class_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `student_class_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`);

--
-- Constraints for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD CONSTRAINT `fk_subject` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`),
  ADD CONSTRAINT `fk_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`),
  ADD CONSTRAINT `teacher_subjects_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`),
  ADD CONSTRAINT `teacher_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

--
-- Constraints for table `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `fk_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  ADD CONSTRAINT `timetable_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`),
  ADD CONSTRAINT `timetable_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`),
  ADD CONSTRAINT `timetable_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
