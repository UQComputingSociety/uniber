SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
CREATE DATABASE IF NOT EXISTS `uniber` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `uniber`;

/* Remove the user if they already exist */
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI';
DROP PROCEDURE IF EXISTS uniber.drop_user_if_exists ;
DELIMITER $$
CREATE PROCEDURE uniber.drop_user_if_exists()
BEGIN
  DECLARE foo BIGINT DEFAULT 0 ;
  SELECT COUNT(*)
  INTO foo
    FROM mysql.user
      WHERE User = 'uniber' and  Host = 'localhost';
   IF foo > 0 THEN
         DROP USER 'uniber'@'localhost' ;
  END IF;
END ;$$
DELIMITER ;
CALL uniber.drop_user_if_exists() ;
DROP PROCEDURE IF EXISTS uniber.drop_users_if_exists ;
SET SQL_MODE=@OLD_SQL_MODE ;
FLUSH PRIVILEGES;

/* And make a new one */
CREATE USER 'uniber'@'localhost' IDENTIFIED BY 'uniber';
GRANT ALL PRIVILEGES ON uniber.* TO 'uniber'@'localhost' WITH GRANT OPTION;

/* Examples left here for new tables
DROP TABLE IF EXISTS `car_park_info`;
CREATE TABLE IF NOT EXISTS `car_park_info` (
  `id` int(11) NOT NULL,
  `car_park` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `car_parks`;
CREATE TABLE IF NOT EXISTS `car_parks` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `data_name` text NOT NULL,
  `casual` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `car_parks`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `car_park_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_park` (`car_park`);


ALTER TABLE `car_parks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `car_park_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `car_park_info`
  ADD CONSTRAINT `car_park_info_ibfk_1` FOREIGN KEY (`car_park`) REFERENCES `car_parks` (`id`);
*/