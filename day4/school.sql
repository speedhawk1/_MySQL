CREATE DATABASE IF NOT EXISTS db_school;

DROP TABLE IF EXISTS db_school.school;
CREATE TABLE db_school.school (
  id INT AUTO_INCREMENT PRIMARY KEY ,
  title    VARCHAR(255),
  admin    VARCHAR(255),
  location VARCHAR(255),
  level    VARCHAR(255)
);

ALTER TABLE db_school.school
  ADD id INT AUTO_INCREMENT PRIMARY KEY
  FIRST;

SELECT *
FROM db_school.school;

TRUNCATE TABLE db_school.school;


LOAD DATA INFILE 'd:/0/idea_projects/_mysql/day4/school.csv'
INTO TABLE db_school.school
FIELDS TERMINATED BY ',' (title, admin, location, level)
SET id = NULL ;