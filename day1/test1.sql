SHOW DATABASES;

USE test;

SHOW TABLES ;

CREATE TABLE student (
  sno VARCHAR(10),
  sname VARCHAR(20),
  age INT(3)
);

SELECT * FROM student;

INSERT INTO student VALUES ('001', 'zhangsan', 18);