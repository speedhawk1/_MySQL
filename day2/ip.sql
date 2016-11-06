DROP DATABASE IF EXISTS db_ip;
CREATE DATABASE db_ip;

DROP TABLE IF EXISTS db_ip.ip;
CREATE TABLE db_ip.ip (
  id       INT AUTO_INCREMENT PRIMARY KEY,
  start    VARCHAR(15) COMMENT 'start ip',
  end      VARCHAR(15),
  location VARCHAR(255)
);

SELECT *
FROM db_ip.ip;

-- 166.111.5.207

SELECT *
FROM db_ip.ip
WHERE inet_aton('166.111.5.207') BETWEEN inet_aton(start) AND inet_aton(end);