CREATE DATABASE IF NOT EXISTS db_school;

DROP TABLE IF EXISTS db_school.school;
CREATE TABLE db_school.school (
  title    VARCHAR(255),
  admin    VARCHAR(255),
  location VARCHAR(255),
  level    VARCHAR(255)
);

SELECT *
FROM db_school.school;
TRUNCATE TABLE db_school.school;

