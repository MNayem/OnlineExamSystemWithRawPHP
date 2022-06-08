-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 08:05 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examsystemphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `college` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `gender`, `college`) VALUES
(1, 'mdnayem.cse21@gmail.com', '12345678', 'Male', 'Zhejiang Sci-Tech University, China');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('628e275616334', '628e2756303de'),
('628e2756635ec', '628e27566bea0'),
('628e2756b799e', '628e2756edc20'),
('628e275738415', '628e2757505f2'),
('628e275778d8b', '628e2757812af'),
('628e28585f36d', '628e2858bbd76'),
('628e28592bd79', '628e28593413b'),
('628e285982908', '628e28598acf9'),
('628e28a11521a', '628e28a17b968'),
('628f3719479a1', '628f371954731'),
('628f50b350704', '628f50b3658fc');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('628f0945b151a', 'MD. NAYEM', 'mdnayem.cse21@gmail.com', 'Mathematics', 'It was a nice journey with you. Thank you', '2022-05-26', '06:59:49am');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('nayemmd.cse21@gmail.com', '628e25a6ef36f', 5, 5, 5, 0, '2022-05-26 04:53:55'),
('nayemmd.cse21@gmail.com', '628e27c923779', 3, 3, 3, 0, '2022-05-26 06:32:46'),
('nayemmd.cse21@gmail.com', '628f368feb87b', 1, 1, 1, 0, '2022-05-26 11:14:22'),
('nayemmd.cse21@gmail.com', '628e287a9e3eb', 1, 1, 1, 0, '2022-05-26 11:15:46'),
('arman.hub@gmail.com', '628e25a6ef36f', 1, 5, 1, 4, '2022-05-26 12:23:35'),
('nayemmd.cse21@gmail.com', '628f506ad5080', 1, 1, 1, 0, '2022-05-31 05:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('628e275616334', 'Newton', '628e2756303d9'),
('628e275616334', 'John Venn', '628e2756303de'),
('628e275616334', 'Pythagoras', '628e2756303df'),
('628e275616334', 'None', '628e2756303e0'),
('628e2756635ec', '2', '628e27566bea0'),
('628e2756635ec', '5', '628e27566bea8'),
('628e2756635ec', '4', '628e27566beaa'),
('628e2756635ec', '3', '628e27566beac'),
('628e2756b799e', '6', '628e2756edc15'),
('628e2756b799e', '9', '628e2756edc1d'),
('628e2756b799e', '33', '628e2756edc1f'),
('628e2756b799e', '7', '628e2756edc20'),
('628e275738415', '5', '628e2757505e2'),
('628e275738415', '4', '628e2757505f0'),
('628e275738415', '6', '628e2757505f2'),
('628e275738415', '7', '628e2757505f4'),
('628e275778d8b', 'Turkey', '628e2757812af'),
('628e275778d8b', 'Mishor', '628e2757812c7'),
('628e275778d8b', 'India', '628e2757812ca'),
('628e275778d8b', 'Saudi Arabia', '628e2757812ce'),
('628e28585f36d', '26', '628e2858bbd76'),
('628e28585f36d', '16', '628e2858bbd7b'),
('628e28585f36d', '29', '628e2858bbd7c'),
('628e28585f36d', '31', '628e2858bbd7d'),
('628e28592bd79', '2', '628e28593412c'),
('628e28592bd79', '3', '628e285934137'),
('628e28592bd79', '4', '628e28593413a'),
('628e28592bd79', '5', '628e28593413b'),
('628e285982908', 'V', '628e28598acf3'),
('628e285982908', 'E', '628e28598acf9'),
('628e285982908', 'Y', '628e28598acfb'),
('628e285982908', 'H', '628e28598acfc'),
('628e28a11521a', 'PHP', '628e28a17b960'),
('628e28a11521a', 'C++', '628e28a17b966'),
('628e28a11521a', 'Java', '628e28a17b967'),
('628e28a11521a', 'C', '628e28a17b968'),
('628f3719479a1', 'Bangladesh', '628f371954731'),
('628f3719479a1', 'India', '628f371954736'),
('628f3719479a1', 'China', '628f371954737'),
('628f3719479a1', 'USA', '628f371954738'),
('628f50b350704', 'Exam', '628f50b3658f5'),
('628f50b350704', 'Test', '628f50b3658fa'),
('628f50b350704', 'Time Pass', '628f50b3658fb'),
('628f50b350704', 'None', '628f50b3658fc');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('628e25a6ef36f', '628e275616334', 'Who invents Venn Diagram first?', 4, 1),
('628e25a6ef36f', '628e2756635ec', 'How many types of Sets are there?', 4, 2),
('628e25a6ef36f', '628e2756b799e', 'Which one of the following is a Prime Number?', 4, 3),
('628e25a6ef36f', '628e275738415', 'How many Ratios are there in Trigonometry?', 4, 4),
('628e25a6ef36f', '628e275778d8b', 'Pythagoras Born in _____', 4, 5),
('628e27c923779', '628e28585f36d', 'How many Alphabet are there?', 4, 1),
('628e27c923779', '628e28592bd79', 'How many Vowels are in English Alphabet?', 4, 2),
('628e27c923779', '628e285982908', 'Which one is a Vowel?', 4, 3),
('628e287a9e3eb', '628e28a11521a', 'Which one is called the mother of Programming Language?', 4, 1),
('628f368feb87b', '628f3719479a1', 'Which Country has the longest Sea Beach in the world?', 4, 1),
('628f506ad5080', '628f50b350704', 'What is test?', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('628e25a6ef36f', 'Basic Mathematics Questions', 1, 0, 5, 5, 'Basic Mathematics Questions 1', '#bmath', '2022-05-25 12:48:38'),
('628e27c923779', 'Basic English Question', 1, 0, 3, 3, 'Basic English Question', '#benglish', '2022-05-25 12:57:45'),
('628e287a9e3eb', 'Basic Programming Question', 1, 0, 1, 1, 'Basic Programming Question 1', '#bprogramming', '2022-05-25 13:00:42'),
('628f368feb87b', 'Analytical Basic Exam', 1, 0, 1, 1, 'Analytical Basic Exam 1', '#banalytical', '2022-05-26 08:13:03'),
('628f506ad5080', 'Test A Exam', 1, 0, 1, 1, 'Test an Exam alert', '#test', '2022-05-26 10:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('nayemmd.cse21@gmail.com', 11, '2022-05-31 05:42:53'),
('arman.hub@gmail.com', 1, '2022-05-26 12:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Arman Sharif', 'M', 'Humdard University, bangladesh', 'arman.hub@gmail.com', 1957254326, 'c33367701511b4f6020ec61ded352059'),
('Md. Nayem', 'M', 'North Western University, Bangladesh', 'nayemmd.cse21@gmail.com', 1999791578, 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
