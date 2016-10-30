# SHOW DATABASES;

DROP DATABASE IF EXISTS test;
CREATE DATABASE test;

show CREATE DATABASE test;

# SHOW TABLES FROM test;

DROP TABLE IF EXISTS test.student;
CREATE TABLE test.student (
  sno   CHAR(10), -- 001
  sname VARCHAR(255), -- zhangsan
  age   INT(3),
  height DOUBLE(3, 2),
  dob DATE
);

-- SQL select *****

-- retrieve
SELECT *
FROM test.student;

-- create
INSERT INTO test.student VALUES ('001', 'zhangsan', 18, 1.72, '1990-1-2');
# INSERT INTO test.student VALUES ('002', 'lisi', 20);
# INSERT INTO test.student VALUES ('003', '中文', 20);

# SHOW VARIABLES LIKE 'char%';
# SHOW VARIABLES LIKE 'coll%';

TRUNCATE TABLE test.student;
DELETE FROM test.student;

-- update
UPDATE test.student
SET age = 19
WHERE sname = 'lisi';

-- delete
DELETE FROM test.student
WHERE sno = '002';

-- 授权 GRANT ;
-- 撤消权限 REVOKE ;

-- DBA

# SHOW CREATE DATABASE test;


# SHOW CREATE TABLE test.student;

SELECT 1 /* test... */+1;