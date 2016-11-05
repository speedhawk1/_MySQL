DROP DATABASE IF EXISTS db_ip;
CREATE DATABASE db_ip;

DROP TABLE IF EXISTS db_ip.ip;
CREATE TABLE db_ip.ip (
  id       INT AUTO_INCREMENT PRIMARY KEY,
  start    VARCHAR(15) COMMENT 'start ip',
  end      VARCHAR(15),
  location VARCHAR(255)
);

SELECT count(*)
FROM db_ip.ip;