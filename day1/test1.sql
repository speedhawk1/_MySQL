SHOW DATABASES;

USE test;

SHOW TABLES;

CREATE TABLE student (
  sno   VARCHAR(10),
  sname VARCHAR(20),
  age   INT(3)
);

-- SQL select *****

-- retrieve
SELECT *
FROM student;

-- create
INSERT INTO student VALUES ('001', 'zhangsan', 18);
INSERT INTO student VALUES ('002', 'lisi', 20);

SHOW VARIABLES LIKE 'char%';
SHOW VARIABLES LIKE 'coll%';

-- update
UPDATE student
SET age = 19
WHERE sname = 'lisi';

-- delete
DELETE FROM student WHERE sno = '002';