-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2019 at 01:46 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coursebuddy`
--
CREATE DATABASE IF NOT EXISTS `coursebuddy` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `coursebuddy`;

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `adminid` int(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`adminid`, `email`, `password`) VALUES
(1, 'admin@northsouth.edu', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `course_list`
--

CREATE TABLE `course_list` (
  `id` int(20) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `credit` float NOT NULL,
  `department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_list`
--

INSERT INTO `course_list` (`id`, `course_name`, `credit`, `department`) VALUES
(1, 'cse115', 3, 'cse'),
(2, 'cse115L', 1, 'cse'),
(3, 'cse215', 3, 'cse'),
(4, 'cse215L', 3, 'cse'),
(5, 'cse225', 3, 'cse'),
(6, 'cse225L', 1, 'cse'),
(7, 'cse173', 3, 'cse');

-- --------------------------------------------------------

--
-- Table structure for table `current_course_list`
--

CREATE TABLE `current_course_list` (
  `id` int(20) NOT NULL,
  `coursename` varchar(20) NOT NULL,
  `faculty_email` varchar(64) NOT NULL,
  `faculty_initial` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `current_course_list`
--

INSERT INTO `current_course_list` (`id`, `coursename`, `faculty_email`, `faculty_initial`) VALUES
(1, 'cse115', 'saif789@gmail.com', 'sfk'),
(2, 'cse115L', 'saif789@gmail.com', 'sfk'),
(3, 'cse115', 'saif789@gmail.com', 'sfk'),
(4, 'cse173', 's@gmail.com', 'sfk');

-- --------------------------------------------------------

--
-- Table structure for table `facreg`
--

CREATE TABLE `facreg` (
  `facid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `institute` varchar(64) NOT NULL,
  `department` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facreg`
--

INSERT INTO `facreg` (`facid`, `fname`, `lname`, `username`, `institute`, `department`, `email`, `password`, `gender`, `dob`) VALUES
(33, 'saif', 'khan', 'sfk', 'North South University', 'cse', 'saif789@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'male', '1992-07-18'),
(34, 'sazid', 'khan', 'szd', 'japan institute', 'architecture', 'sazid1234@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'male', '1995-08-18'),
(35, 'sifat', 'khan', 'sft', 'North South University', 'eee', 'sifat@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'male', '1992-08-17'),
(36, 'mohammed', 'ali', '3losh', '123', 'bit', 's@gmail.com', '31b69a7494a0eec4ac544fd648c9d604', 'male', '1998-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `stdgrd`
--

CREATE TABLE `stdgrd` (
  `id` int(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `grade` float NOT NULL,
  `credit` float NOT NULL,
  `email` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stdgrd`
--

INSERT INTO `stdgrd` (`id`, `course`, `grade`, `credit`, `email`) VALUES
(12, 'cse135', 3.3, 3, 'sazid@gmail.com'),
(13, 'cse115', 3.3, 3, 'sazid@gmail.com'),
(14, 'cse115L', 3.7, 1, 'sazid@gmail.com'),
(15, 'cse173', 4, 3, 'sazid@gmail.com'),
(33, 'cse115', 2.3, 3, 'sifatkhan@gmail.com'),
(34, 'cse115L', 1.7, 1, 'sifatkhan@gmail.com'),
(36, 'eng103', 2.7, 3, 'sifatkhan@gmail.com'),
(38, 'mat116', 3, 3, 'sifatkhan@gmail.com'),
(39, 'mat116', 3, 3, 'sifatkhan@gmail.com'),
(41, 'cse231', 4, 3, 'saif789@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `stdreg`
--

CREATE TABLE `stdreg` (
  `stdid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `institute` varchar(64) NOT NULL,
  `department` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stdreg`
--

INSERT INTO `stdreg` (`stdid`, `fname`, `lname`, `username`, `institute`, `department`, `email`, `password`, `gender`, `dob`) VALUES
(2, 'sifat', 'khan', 'sifatkhan', 'North South University', 'CSE', 'sifatkhan@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'male', '1994-08-13'),
(14, 'sazid', 'khan', 'sazidkhan', 'North South University', 'Auto-mobile eng.', 'sazid@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'male', '1991-02-10'),
(15, 'saif', 'khan', 'saif1234', 'North South University', 'CSE', 'saif1890@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'male', '1988-06-12'),
(16, 'mohammed', 'ali', '3losh98', '3', 'bit', 'salamali731@gmail.com', '31b69a7494a0eec4ac544fd648c9d604', 'male', '1998-02-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `course_list`
--
ALTER TABLE `course_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_course_list`
--
ALTER TABLE `current_course_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facreg`
--
ALTER TABLE `facreg`
  ADD PRIMARY KEY (`facid`);

--
-- Indexes for table `stdgrd`
--
ALTER TABLE `stdgrd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stdreg`
--
ALTER TABLE `stdreg`
  ADD PRIMARY KEY (`stdid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `adminid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_list`
--
ALTER TABLE `course_list`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `current_course_list`
--
ALTER TABLE `current_course_list`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facreg`
--
ALTER TABLE `facreg`
  MODIFY `facid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `stdgrd`
--
ALTER TABLE `stdgrd`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `stdreg`
--
ALTER TABLE `stdreg`
  MODIFY `stdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Database: `grade`
--
CREATE DATABASE IF NOT EXISTS `grade` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `grade`;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` varchar(3) NOT NULL,
  `coursename` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `coursename`) VALUES
('001', '语文'),
('002', '数学'),
('003', '英语');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `scoreid` int(11) NOT NULL,
  `courseid` varchar(45) NOT NULL,
  `stuid` varchar(45) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`scoreid`, `courseid`, `stuid`, `grade`) VALUES
(1, '001', '2014014001', 91),
(2, '002', '2014014001', 98),
(3, '003', '2014014001', 89),
(4, '001', '2014014002', 87),
(5, '002', '2014014002', 88),
(6, '003', '2014014002', 95),
(7, '001', '2014014003', 85),
(8, '002', '2014014003', 92),
(9, '003', '2014014003', 66),
(10, '003', '2014014408', 101);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stuid` varchar(20) NOT NULL,
  `stuname` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stuid`, `stuname`) VALUES
('2014014001', '小明'),
('2014014002', '小红'),
('2014014003', '阿黄'),
('2014014408', 'WeiWei');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uaccount` varchar(30) NOT NULL,
  `upwd` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uaccount`, `upwd`) VALUES
('admin', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`scoreid`),
  ADD KEY `sid` (`stuid`),
  ADD KEY `cid` (`courseid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stuid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uaccount`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- Dumping data for table `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('unvdb', 'id_sta', 'int', '11', '', 0, ',', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 's3b', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"admin\",\"degrees\",\"department\",\"lecture_lab\",\"staff\",\"student\",\"university\"],\"table_structure[]\":[\"admin\",\"degrees\",\"department\",\"lecture_lab\",\"staff\",\"student\",\"university\"],\"table_data[]\":[\"admin\",\"degrees\",\"department\",\"lecture_lab\",\"staff\",\"student\",\"university\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'new', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"coursebuddy\",\"grade\",\"phpmyadmin\",\"school\",\"test\",\"unvdb\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"unvdb\",\"table\":\"degrees\"},{\"db\":\"unvdb\",\"table\":\"student\"},{\"db\":\"unvdb\",\"table\":\"staff\"},{\"db\":\"unvdb\",\"table\":\"lecture_lab\"},{\"db\":\"unvdb\",\"table\":\"department\"},{\"db\":\"unvdb\",\"table\":\"lecture_staff\"},{\"db\":\"unvdb\",\"table\":\"admin\"},{\"db\":\"unvdb\",\"table\":\"university\"},{\"db\":\"coursebuddy\",\"table\":\"adminlogin\"},{\"db\":\"coursebuddy\",\"table\":\"current_course_list\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'unvdb', 'lecture_lab', '{\"sorted_col\":\"`ID_lec_lab` ASC\"}', '2019-02-06 17:54:05'),
('root', 'unvdb', 'staff', '{\"sorted_col\":\"`staff`.`ID_stf` ASC\"}', '2019-02-06 15:00:12'),
('root', 'unvdb', 'student', '{\"sorted_col\":\"`student`.`ID_stu` ASC\"}', '2019-02-04 23:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-02-10 10:44:07', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `school`
--
CREATE DATABASE IF NOT EXISTS `school` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school`;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_degree` int(11) NOT NULL,
  `study_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `max_degree`, `study_year`) VALUES
(1, 'math', 150, 1),
(2, 'physics', 100, 1),
(3, 'mechanics', 125, 1),
(4, 'computer', 100, 2),
(5, 'network', 125, 2),
(6, 'control', 125, 2);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `degree` int(11) NOT NULL,
  `examine_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `student_id`, `course_id`, `degree`, `examine_at`) VALUES
(7, 3, 1, 85, '2017-06-01'),
(8, 3, 2, 92, '2017-06-08'),
(9, 3, 3, 83, '2017-06-12'),
(10, 4, 1, 82, '2017-06-01'),
(11, 4, 2, 93, '2017-06-08'),
(12, 4, 3, 84, '2017-06-12'),
(13, 5, 1, 82, '2017-06-01'),
(14, 5, 2, 86, '2017-06-08'),
(15, 5, 3, 93, '2017-06-12'),
(22, 3, 4, 91, '2018-06-01'),
(23, 3, 5, 92, '2018-06-08'),
(24, 3, 6, 84, '2018-06-12'),
(25, 4, 4, 93, '2018-06-01'),
(26, 4, 5, 94, '2018-06-08'),
(27, 4, 6, 85, '2018-06-12'),
(28, 5, 4, 81, '2018-06-01'),
(29, 5, 5, 98, '2018-06-08'),
(30, 5, 6, 99, '2018-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`) VALUES
(3, 'Safaa Magdy'),
(4, 'Nagy Nady'),
(5, 'Noor Ahmed'),
(9, 'ali');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `unvdb`
--
CREATE DATABASE IF NOT EXISTS `unvdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `unvdb`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `pass`, `name`) VALUES
(1, 'admin@uoitc.org', '1234', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `ID_deg` int(11) NOT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `lec_lab_id` int(11) DEFAULT NULL,
  `deg_number` int(11) NOT NULL,
  `corse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`ID_deg`, `stu_id`, `lec_lab_id`, `deg_number`, `corse`) VALUES
(29, 4, 25, 5, 1),
(30, 5, 25, 54, 1),
(32, 5, 26, 76, 1),
(34, 4, 26, 55, 1),
(36, 6, 26, 90, 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `ID_dep` int(11) NOT NULL,
  `dep_name` varchar(50) NOT NULL,
  `dep_sub_name` varchar(5) NOT NULL,
  `unv_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`ID_dep`, `dep_name`, `dep_sub_name`, `unv_id`) VALUES
(1, 'Management Informatic System', 'MIS', NULL),
(4, 'bits', 'bit', 11);

-- --------------------------------------------------------

--
-- Table structure for table `lecture_lab`
--

CREATE TABLE `lecture_lab` (
  `ID_lec_lab` int(11) NOT NULL,
  `lec_lab_name` varchar(40) NOT NULL,
  `lec_lab_sub_name` varchar(5) NOT NULL,
  `id_stf` int(11) NOT NULL,
  `name_stf` varchar(50) NOT NULL,
  `lec_lab_corse` int(11) NOT NULL,
  `id_dep` int(11) NOT NULL,
  `stageLec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lecture_lab`
--

INSERT INTO `lecture_lab` (`ID_lec_lab`, `lec_lab_name`, `lec_lab_sub_name`, `id_stf`, `name_stf`, `lec_lab_corse`, `id_dep`, `stageLec`) VALUES
(21, 'compuoter sys', 'cs', 1, 'ayoob ahmed', 1, 4, 4),
(23, 'java programming', 'java', 3, 'mohammed ali', 2, 4, 3),
(24, 'system analysis', 'SA', 3, 'mohammed ali', 1, 1, 2),
(25, 'operation management', 'OM', 3, 'mohammed ali', 1, 1, 4),
(26, 'project management', 'PM', 3, 'mohammed ali', 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `ID_stf` int(11) NOT NULL,
  `stf_first_name` varchar(20) NOT NULL,
  `stf_last_name` varchar(20) NOT NULL,
  `stf_email` varchar(25) NOT NULL,
  `stf_user_name` varchar(15) NOT NULL,
  `stf_password` varchar(20) NOT NULL,
  `stf_scientific_title` varchar(20) NOT NULL,
  `stf_functional_class` varchar(10) NOT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `unv_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`ID_stf`, `stf_first_name`, `stf_last_name`, `stf_email`, `stf_user_name`, `stf_password`, `stf_scientific_title`, `stf_functional_class`, `dep_id`, `unv_id`) VALUES
(1, 'ayoob', 'ahmed', 'ayoob.ahmed@gmail.com', 'ayah', '123456', 'DR', '4', 1, NULL),
(3, 'mohammed', 'ali', 's@gmail.com', '3losh', '12345', 'bcs', '3', 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID_stu` int(11) NOT NULL,
  `stu_first_name` varchar(20) NOT NULL,
  `stu_last_name` varchar(20) NOT NULL,
  `stu_email` varchar(25) NOT NULL,
  `stu_user_name` varchar(20) NOT NULL,
  `stu_password` varchar(20) NOT NULL,
  `stu_age` date NOT NULL,
  `stu_address` varchar(20) NOT NULL,
  `stu_stage` int(11) NOT NULL,
  `stu_status` tinyint(4) NOT NULL,
  `corse` int(11) NOT NULL,
  `dep_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID_stu`, `stu_first_name`, `stu_last_name`, `stu_email`, `stu_user_name`, `stu_password`, `stu_age`, `stu_address`, `stu_stage`, `stu_status`, `corse`, `dep_id`) VALUES
(1, 'Ali', 'Esaa', 'ali@gmail.com', 'ali', '123456', '2000-11-17', 'Baghdad/mansor', 1, 2, 1, 1),
(3, 'Ù…Ø­Ù…Ø¯Ø¹Ù„ÙŠ', 'Ù…Ø§Ù„ÙƒÙŠ', 'sifatkhan@gmail.com', '3loshl', '123', '1998-02-05', 'Ø·Ø±ÙŠÙ‚ ÙƒØ±Ø¨Ù„Ø§Ø', 3, 1, 1, 1),
(4, 'abbas', 'ali', 'a@g.com', 'ab', '1234', '1998-02-06', 'baghdad', 4, 1, 1, 1),
(5, 'ammer', 'mohamd', 'sa@s.com', 'sa', '123', '1999-02-07', 'bgd', 4, 1, 1, 1),
(6, 'aya', 'ali', 'aya@gmail.com', 'ayo', '123', '1990-02-09', 'kradaa', 4, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `ID_unv` int(11) NOT NULL,
  `unv_name` varchar(50) NOT NULL,
  `unv_sub_name` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`ID_unv`, `unv_name`, `unv_sub_name`) VALUES
(8, 'bic', 'ism'),
(11, 'information technology', 'it'),
(13, 'qwer', 'it');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`ID_deg`),
  ADD KEY `deg_stu_id_fk` (`stu_id`),
  ADD KEY `deg_lec_lab_id_fk` (`lec_lab_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`ID_dep`),
  ADD KEY `dep_nuv_id_fk` (`unv_id`);

--
-- Indexes for table `lecture_lab`
--
ALTER TABLE `lecture_lab`
  ADD PRIMARY KEY (`ID_lec_lab`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`ID_stf`),
  ADD UNIQUE KEY `stf_email` (`stf_email`),
  ADD UNIQUE KEY `stf_user_name` (`stf_user_name`),
  ADD KEY `stf_dep_id_fk` (`dep_id`),
  ADD KEY `stf_unv_id_fk` (`unv_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID_stu`),
  ADD UNIQUE KEY `stu_email` (`stu_email`),
  ADD UNIQUE KEY `stu_user_name` (`stu_user_name`),
  ADD KEY `stu_dep_id_fk` (`dep_id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`ID_unv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `ID_deg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `ID_dep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lecture_lab`
--
ALTER TABLE `lecture_lab`
  MODIFY `ID_lec_lab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `ID_stf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID_stu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `ID_unv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `degrees`
--
ALTER TABLE `degrees`
  ADD CONSTRAINT `deg_lec_lab_id_fk` FOREIGN KEY (`lec_lab_id`) REFERENCES `lecture_lab` (`ID_lec_lab`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `deg_stu_id_fk` FOREIGN KEY (`stu_id`) REFERENCES `student` (`ID_stu`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `dep_nuv_id_fk` FOREIGN KEY (`unv_id`) REFERENCES `university` (`ID_unv`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `stf_dep_id_fk` FOREIGN KEY (`dep_id`) REFERENCES `department` (`ID_dep`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `stf_unv_id_fk` FOREIGN KEY (`unv_id`) REFERENCES `university` (`ID_unv`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `stu_dep_id_fk` FOREIGN KEY (`dep_id`) REFERENCES `department` (`ID_dep`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
