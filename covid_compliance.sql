-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2022 at 02:04 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_id` varchar(25) NOT NULL,
  `Campus_id` varchar(25) NOT NULL,
  `Gender` char(1) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `First_name` varchar(25) NOT NULL,
  `Last_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `Campus_id`, `Gender`, `Email`, `Password`, `First_name`, `Last_name`) VALUES
('111', '1', 'm', 'tb@gmail.com', '12345', 'thabo', 'chauke');

-- --------------------------------------------------------

--
-- Table structure for table `campus`
--

CREATE TABLE `campus` (
  `Camp_id` varchar(25) NOT NULL,
  `Campus_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campus`
--

INSERT INTO `campus` (`Camp_id`, `Campus_name`) VALUES
('1', 'sosh');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Feedback_id` int(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `Comment` varchar(255) NOT NULL,
  `Date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `healthform`
--

CREATE TABLE `healthform` (
  `Form_id` int(13) NOT NULL,
  `User_id` int(13) NOT NULL,
  `Vaccination_status` varchar(25) NOT NULL,
  `Covid19` varchar(25) NOT NULL,
  `Recent_cough` varchar(25) NOT NULL,
  `Difficulty_breath` varchar(4) NOT NULL,
  `Weight_lose` varchar(4) NOT NULL,
  `Headache` varchar(4) NOT NULL,
  `Infected_person` varchar(4) NOT NULL,
  `Form_check` varchar(25) NOT NULL,
  `Status` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int(25) NOT NULL,
  `pictureName` varchar(255) NOT NULL,
  `pic_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `pictureName`, `pic_path`) VALUES
(32, 'lolo', 'http://localhost:3000/pic_path/pic_path-1649755700300.jpg'),
(33, 'lolo', 'http://localhost:3000/pic_path/pic_path-1649756026471.png'),
(34, 'loloh', 'http://3000/image/pic_path-1649756349839.png'),
(35, 'loloh', 'http://3000/pic_path/pic_path-1649756614616.png'),
(36, 'loloh', 'http://localhost:3000/pic_path/pic_path-1649756731067.png'),
(37, 'loloh', 'http://localhost:3000/pic_path/pic_path-1649757800289.png'),
(38, 'loloh', 'http://localhost:3000/pic_path/pic_path-1649758250138.png'),
(39, 'loloha', 'http://localhost:3000/pic_path/pic_path-1649760356349.png'),
(40, 'lolol', 'http://localhost:3000/pic_path/pic_path-1649835292968.png'),
(41, 'lolol', 'http://localhost:3000/image/pic_path-1649836420727.png'),
(42, 'lolol', 'http://localhost:3000/image/pic_path-1651570989650.png'),
(43, 'lo', 'http://localhost:3000/image/pic_path-1651571028355.png'),
(44, 'loyyy', 'http://localhost:3000/pic_path/pic_path-1651571154439.png'),
(45, 'loyyyff', 'http://localhost:3000/pic_path/pic_path-1651577011225.png');

-- --------------------------------------------------------

--
-- Table structure for table `newsfeed`
--

CREATE TABLE `newsfeed` (
  `News_id` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `News` varchar(1050) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newsfeed`
--

INSERT INTO `newsfeed` (`News_id`, `Title`, `News`) VALUES
(1, '[covid]', '[covid2 fwewrffr rweqrfc ]');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(25) NOT NULL,
  `admin_id` int(25) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

CREATE TABLE `officer` (
  `Officer_id` varchar(25) NOT NULL,
  `Campus_id` varchar(25) NOT NULL,
  `First_name` varchar(25) NOT NULL,
  `Last_name` varchar(25) NOT NULL,
  `Gender` char(1) NOT NULL,
  `Cellphone_number` varchar(10) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `officer`
--

INSERT INTO `officer` (`Officer_id`, `Campus_id`, `First_name`, `Last_name`, `Gender`, `Cellphone_number`, `Email`, `Password`) VALUES
('111', '1', 'thabo', 'chauke', 'm', '0123662559', 'tb@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `Record_id` int(25) NOT NULL,
  `Officer_id` int(25) NOT NULL,
  `User_id` varchar(25) NOT NULL,
  `Form_id` int(13) NOT NULL,
  `Form_check` varchar(25) NOT NULL,
  `Date` varchar(10) NOT NULL,
  `Tempareture` int(4) NOT NULL,
  `isAllowedEntrence` tinyint(1) NOT NULL,
  `Status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`Record_id`, `Officer_id`, `User_id`, `Form_id`, `Form_check`, `Date`, `Tempareture`, `isAllowedEntrence`, `Status`) VALUES
(1, 0, '2164', 0, '1', '', 0, 0, ''),
(4, 0, '2164', 0, '0', '', 0, 0, ''),
(5, 0, '2164', 0, '0', '', 0, 0, ''),
(6, 0, '222', 0, '0', '', 0, 0, ''),
(7, 0, '13', 0, '1', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `no` int(11) NOT NULL,
  `User_id` varchar(13) NOT NULL,
  `Camp_id` varchar(25) NOT NULL,
  `First_name` varchar(25) NOT NULL,
  `Last_name` varchar(25) NOT NULL,
  `Gender` char(1) NOT NULL,
  `Type` char(1) NOT NULL,
  `Cellphone_number` varchar(10) DEFAULT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `profile_pic` blob DEFAULT NULL,
  `vaccination_card` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`no`, `User_id`, `Camp_id`, `First_name`, `Last_name`, `Gender`, `Type`, `Cellphone_number`, `Email`, `Password`, `profile_pic`, `vaccination_card`) VALUES
(1, '0000', '1', 'undefined', 'undefined', '&', 'u', 'undefined', 'undefined', '12345', '', ''),
(21, '0111', '1', 'ant', 'bab', 'm', 'u', '071636235', 'banzs', '12345', NULL, ''),
(23, '0131', '1', 'ant', 'bab', 'm', 'u', '071636235', 'banze.aj@mail.com', '12345', NULL, ''),
(25, '01341', '1', 'ant', 'bab', 'm', 'u', '071636235', 'banze.aj@mail.com', '12345', NULL, ''),
(28, '013491', '1', 'ant', 'bab', 'm', 'u', '071636235', 'banze.aj@mail.com', '12345', NULL, ''),
(33, '0134911', '1', 'ant', 'bab', 'm', 'u', '071636235', 'banze.aj@mail.com', '12345', NULL, ''),
(35, '01349411', '1', 'ant', 'bab', 'm', 'u', '071636235', 'banze.aj@mail.com', '12345', NULL, ''),
(48, '01443', '1', 'ant', 'bab', 'm', 'u', '071636235', 'banze.aj@gmail.com', '12345', NULL, ''),
(44, '01513', '1', 'ant', 'bab', 'm', 'u', '071636235', 'banze.aj@mail.com', '12345', NULL, ''),
(42, '01513113', '1', 'ant', 'bab', 'm', 'u', '071636235', 'banze.aj@mail.com', '12345', NULL, ''),
(41, '015163113', '1', 'ant', 'bab', 'm', 'u', '071636235', 'banze.aj@mail.com', '12345', NULL, ''),
(46, '01543', '1', 'ant', 'bab', 'm', 'u', '071636235', 'banze.aj@mail.com', '12345', NULL, ''),
(36, '015511', '1', 'ant', 'bab', 'm', 'u', '071636235', 'banze.aj@mail.com', '12345', NULL, ''),
(37, '0155311', '1', 'ant', 'bab', 'm', 'u', '071636235', 'banze.aj@mail.com', '12345', NULL, ''),
(38, '01556311', '1', 'ant', 'bab', 'm', 'u', '071636235', 'banze.aj@mail.com', '12345', NULL, ''),
(39, '015563113', '1', 'ant', 'bab', 'm', 'u', '071636235', 'banze.aj@mail.com', '12345', NULL, ''),
(18, 'undefined', 'undefined', 'undefined', 'undefined', 'u', 'u', 'undefined', 'undefined', 'undefined', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `video_id` int(25) NOT NULL,
  `video_name` varchar(25) NOT NULL,
  `video_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `Visitor_id` int(25) NOT NULL,
  `Campus_id` int(1) NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(25) NOT NULL,
  `Gender` char(1) NOT NULL,
  `Cellphone_number` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `vaccination_card` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`Visitor_id`, `Campus_id`, `First_name`, `Last_name`, `Gender`, `Cellphone_number`, `Email`, `Password`, `vaccination_card`) VALUES
(0, 0, '', '', '', '', '', '12345', 'http://3000/visitor/vaccination_card-1649675716860.png'),
(11116, 0, '', '', '', '', '', '', 'http://3000/visitor/vaccination_card-1649676055688.png'),
(32135, 1, 'http://3000/visitor/vacci', '', '', '', '', '', 'anto'),
(321356, 1, '', '', '', '', '', '', 'http://3000/visitor/vaccination_card-1649676389688.png'),
(216464280, 1, 'keke', 'koke', 'F', '0875254000', 'koko@gmail.com', '12345', '');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_record`
--

CREATE TABLE `visitor_record` (
  `visitor_record_id` int(25) NOT NULL,
  `Officer_id` int(25) NOT NULL,
  `Visitor_id` int(25) NOT NULL,
  `Form_check` varchar(25) NOT NULL,
  `Date` varchar(25) NOT NULL,
  `Tempareture` int(25) NOT NULL,
  `isAlllowedEntrance` tinyint(4) NOT NULL,
  `Health_status_reason` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_id`),
  ADD KEY `FK_admin_campus_works` (`Campus_id`);

--
-- Indexes for table `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`Camp_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Feedback_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `newsfeed`
--
ALTER TABLE `newsfeed`
  ADD PRIMARY KEY (`News_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `officer`
--
ALTER TABLE `officer`
  ADD PRIMARY KEY (`Officer_id`),
  ADD KEY `FK_officer_campus_employes` (`Campus_id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`Record_id`),
  ADD KEY `FK_record_user_has` (`User_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_id`),
  ADD KEY `FK_user_camp_accom` (`Camp_id`),
  ADD KEY `all` (`no`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`Visitor_id`);

--
-- Indexes for table `visitor_record`
--
ALTER TABLE `visitor_record`
  ADD PRIMARY KEY (`visitor_record_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Feedback_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `newsfeed`
--
ALTER TABLE `newsfeed`
  MODIFY `News_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `Record_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_record`
--
ALTER TABLE `visitor_record`
  MODIFY `visitor_record_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `FK_admin_campus_works` FOREIGN KEY (`Campus_id`) REFERENCES `campus` (`Camp_id`);

--
-- Constraints for table `officer`
--
ALTER TABLE `officer`
  ADD CONSTRAINT `FK_officer_campus_employes` FOREIGN KEY (`Campus_id`) REFERENCES `campus` (`Camp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
