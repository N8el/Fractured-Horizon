-- Creating the Users table
CREATE TABLE `Users` (
  `u_id` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  PRIMARY KEY (`u_id`)
) 

-- Creating the Points table
CREATE TABLE `points` (
  `u_id` int(3) DEFAULT NULL,
  `p_id` int(3) NOT NULL,
  `points` int(3) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `points_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `Users` (`u_id`)
)

-- Creating the Session table
CREATE TABLE `Session` (
  `u_id` int(3) DEFAULT NULL,
  `session_id` int(3) NOT NULL,
  `HTML_pthnm` varchar(200) DEFAULT NULL,
  `p_time` time DEFAULT NULL,
  `items` text DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `Session_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `Users` (`u_id`)
)

-- Creating the Tasks table
CREATE TABLE `Tasks` (
  `T_id` int(3) NOT NULL,
  `T_name` varchar(70) NOT NULL,
  `correct_answer` varchar(200) NOT NULL,
  PRIMARY KEY (`T_id`)
) 