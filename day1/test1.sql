# SHOW DATABASES;

DROP DATABASE IF EXISTS test;
CREATE DATABASE test;

# SHOW TABLES FROM test;

DROP TABLE IF EXISTS test.student;
CREATE TABLE test.student (
  sno   VARCHAR(10),
  sname VARCHAR(20),
  age   INT(3)
);

-- SQL select *****

-- retrieve
SELECT *
FROM test.student;

-- create
INSERT INTO test.student VALUES ('001', 'zhangsan', 18);
INSERT INTO test.student VALUES ('002', 'lisi', 20);
INSERT INTO test.student VALUES ('003', '中文', 20);

# SHOW VARIABLES LIKE 'char%';
# SHOW VARIABLES LIKE 'coll%';

-- update
UPDATE test.student
SET age = 19
WHERE sname = 'lisi';

-- delete
DELETE FROM test.student
WHERE sno = '002';


# SHOW CREATE DATABASE test;


# SHOW CREATE TABLE test.student;

SELECT 1 /* test... */+1;