DROP DATABASE IF EXISTS demo;
CREATE DATABASE demo;

DROP TABLE IF EXISTS demo.student;
CREATE TABLE demo.student (
  id     INT AUTO_INCREMENT PRIMARY KEY, -- Java int
  sno    CHAR(3),
  name   VARCHAR(10),
  dob    DATE,
  age    INT(3),
  height DOUBLE(3, 2)
);

DESC demo.student; -- desc describe 描述

INSERT INTO demo.student VALUES (4247483647, '001', '张三', '1090-1-1', 18, 1.81);
INSERT INTO demo.student VALUES (-1, '002', '张三', '1090-1-1', 18, 1.81);
INSERT INTO demo.student VALUES (NULL, '002', '张三', '1090-1-1', 18, 1.81);
INSERT INTO demo.student VALUES (NULL, '002', '张三', '1090-1-1', 18, NULL );



SELECT * -- 约束
FROM demo.student;

UPDATE demo.student
SET height = 1.82
WHERE sno = '001';