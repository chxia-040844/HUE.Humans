DROP SCHEMA IF EXISTS Humans;
CREATE SCHEMA Humans;
USE Humans;

--
-- Table structure for table `login_users`
--

CREATE TABLE IF NOT EXISTS login_users (
  user_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  login_name VARCHAR(45) NOT NULL,
  password VARCHAR(45) NOT NULL,
  display_name VARCHAR(45) NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (user_id),
  KEY idx_login_users_login_name (login_name)
)ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Table structure for table `hue_humans`
--

CREATE TABLE IF NOT EXISTS hue_humans (
  hue_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  hue_no VARCHAR(50) NOT NULL,
  name VARCHAR(50) DEFAULT NULL,
  id_card VARCHAR(20) NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (hue_id),
  KEY idx_hue_humans_name (name)
)ENGINE=InnoDB DEFAULT CHARSET=gbk;