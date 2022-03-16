SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'cde9c9f17a3ecd3018d4a2fd7274d052', '2019-04-19 21:51:18', '20-04-2019 02:48:30 PM');



CREATE TABLE `course` (
  `id` int NOT NULL,
  `courseCode` varchar(255) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `courseUnit` varchar(255) NOT NULL,
  `noofSeats` int NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(1, 'CSM 31012', 'System Analysis, Design and Engineering', '2', 100, '2019-04-20 19:52:45', '2019-04-20 19:52:45'),
(2, 'CSM 31022', 'Database Management System', '2', 100, '2019-04-20 19:53:22', '2019-04-20 19:53:22'),
(3, 'CSM 31031', 'DBMS Laboratory', '1', 100, '2019-04-20 19:53:56', '2019-04-20 19:53:56');



CREATE TABLE `courseenrolls` (
  `id` int NOT NULL,
  `studentRegno` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `session` int NOT NULL,
  `department` int NOT NULL,
  `level` int NOT NULL,
  `semester` int NOT NULL,
  `course` int NOT NULL,
  `gender` int NOT NULL,
  `address` varchar(255) NOT NULL,
  `field` int NOT NULL,
  `enrollDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `gender`,`address`, `field`,`enrollDate`) VALUES
(1, 'SEU-IS-15-PS-051', '765210', 1, 1, 1, 5, 3, 1,'No 1528/A,Bendiwewa,Polonnaruwa',1,'2019-04-20 21:38:07');



CREATE TABLE `field` (
  `id` int NOT NULL,
  `field` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `field` (`id`, `field`, `creationDate`) VALUES
(1, 'Science', '2019-04-20 19:41:43'),
(2, 'Mathematics', '2019-04-20 19:42:43'),
(3, 'Commerce', '2019-04-20 19:43:43'),
(4, 'Arts', '2019-04-20 19:44:43'),
(5, 'Technology', '2019-04-20 19:45:56');



CREATE TABLE `gender` (
  `id` int NOT NULL,
  `gender` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `gender` (`id`, `gender`, `creationDate`) VALUES
(1, 'Male', '2019-04-20 19:41:43'),
(2, 'Female', '2019-04-20 19:41:56');



CREATE TABLE `department` (
  `id` int NOT NULL,
  `department` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(1, 'Mathematical Sciences', '2019-04-20 19:41:18'),
(2, 'Physical Sciences', '2019-04-20 19:41:43'),
(3, 'Biological Sciences', '2019-04-20 19:41:56');



CREATE TABLE `level` (
  `id` int NOT NULL,
  `level` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(1, 'Faculty of Applied Sciences', '2019-04-20 19:41:56'),
(2, 'Faculty of Engineering', '2019-04-20 19:42:56'),
(3, 'Faculty of Management & Commerce', '2019-04-20 19:43:56'),
(4, 'Faculty of Technology', '2019-04-20 19:45:56'),
(5, 'Faculty of Art & Culture', '2019-04-20 19:46:56'),
(6, 'Faculty of Arabic Language & Islamic Studies', '2019-04-20 19:47:56');



CREATE TABLE `semester` (
  `id` int NOT NULL,
  `semester` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(1, '1st Year - 1st Semester', '2019-04-20 19:31:10', ''),
(2, '1st Year - 2nd Semester', '2019-04-20 19:31:29', ''),
(3, '2nd Year - 1st Semester', '2019-04-20 19:34:28', ''),
(4, '2nd Year - 2nd Semester', '2019-04-20 19:34:39', ''),
(5, '3rd Year - 1st Semester', '2019-04-20 19:34:48', ''),
(6, '3rd Year - 2nd Semester', '2019-04-20 19:35:01', '');



CREATE TABLE `session` (
  `id` int NOT NULL,
  `session` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(1, '2015/2016', '2019-04-20 19:10:10'),
(2, '2016/2017', '2019-04-20 19:10:20'),
(3, '2017/2018', '2019-04-20 19:10:25');



CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `studentName` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `cgpa` decimal(10,2) NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
('SEU-IS-15-PS-051', '', 'b7a92d893fb5392fca2032ce8fd7e87d', 'G.P.V.Laksahan', '765210', '', '', '', '3.37', '2019-04-20 21:05:43', '');


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);


ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;




