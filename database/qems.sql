-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2024 at 09:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qems`
--

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` varchar(10) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `opt1` varchar(500) DEFAULT NULL,
  `opt2` varchar(500) DEFAULT NULL,
  `opt3` varchar(500) DEFAULT NULL,
  `opt4` varchar(500) DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `name`, `opt1`, `opt2`, `opt3`, `opt4`, `answer`) VALUES
('1', 'All keywords inC are in', 'LowerCase', 'UpperCase', 'CamelCase', 'None', 'LowerCase'),
('2', 'Who invented java programming', 'Guido van Rossum', 'James Gosling', 'dennis ritchie', 'Bjarne Stroustrup', 'James Gosling'),
('3', ' Which statement is true about Java?', 'Java is a sequence-dependent programming language', 'Java is a code dependent programming language', 'Java is a platform-dependent programming language', 'Java is a platform-independent programming language', 'Java is a platform-independent programming language'),
('4', 'Which component is used to compile, debug and execute the java programs?', 'JRE', ' JIT', ' JDK', 'JVM', ' JDK'),
('5', 'Which one of the following is not a Java feature?', 'Object-oriented', 'Use of pointers', ' Portable', ' Dynamic and Extensible', 'Use of pointers'),
('6', 'Which of these cannot be used for a variable name in Java?', 'identifier & keyword', 'identifier', 'keyword', 'none of the mentioned', 'keyword'),
('7', ' What is the extension of java code files?', '.js', '.txt', ' .class', ' .java', ' .java'),
('8', 'Which environment variable is used to set the java path?', 'MAVEN_Path', ' JavaPATH', 'JAVA', 'JAVA_HOME', 'JAVA_HOME'),
('9', 'Which of the following is not an OOPS concept in Java?', ' Polymorphism', 'Inheritance', 'Compilation', 'Encapsulation', 'Compilation'),
('10', ' What is not the use of “this” keyword in Java?', ' Referring to the instance variable when a local variable has the same name', 'Passing itself to the method of the same class', 'Passing itself to another method', ' Calling another constructor in constructor chaining', 'Passing itself to the method of the same class');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `rollNo` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `fatherName` varchar(100) DEFAULT NULL,
  `motherName` varchar(100) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `contactNo` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `marks` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`rollNo`, `name`, `fatherName`, `motherName`, `gender`, `contactNo`, `email`, `marks`) VALUES
('032', 'MAUSAM YADAV', 'ARUN YADAV', 'BIBHA YADAV', 'Male', '7218519204', 'mausam@gmail.com', 7),
('B037', 'Mahesh Bhosale', 'Suresh Bhosale', 'Vandana Bhosale', 'Male', '9594725359', 'maheshbhosale1212004@gmail.com', 10),
('43', 'vikas maurya', 'Avadheshkumar', 'rekha', 'Male', '9594725359', 'vikasmaurya3223@gmail.com', 8),
('36', 'Nishant Sharma', 'rajendra', 'neelam', 'Male', '9874563210', 'nishant@gmail.com', 9),
('B023', 'Shreyas Chaudhari', 'Rajendra', 'Jayashree', 'Male', '9323871954', 'shreyasrchaudhari@gmail.com', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
