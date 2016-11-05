SELECT *
FROM demo.new_student;

DESC demo.new_student;

DELETE FROM demo.new_student;

TRUNCATE TABLE demo.new_student;

INSERT INTO demo.new_student VALUES (NULL, '001', '张三', '1090-1-1', 18, 1.81, 'M', 'test...');

SELECT *
FROM demo.student_course;

DELETE FROM demo.student_course;

DESC demo.student_course;

CREATE INDEX ind_name ON demo.new_student (name);

SELECT *
FROM demo.new_student;

DROP INDEX ind_name ON demo.new_student;

SHOW INDEX FROM demo.new_student;

INSERT INTO demo.new_student (name, height) VALUE ('somebody', 1.2);

DESC demo.new_student;

UPDATE demo.new_student
SET name = '李四', height = 1.71
WHERE id = 2;

DELETE FROM demo.new_student
WHERE id = 2;

SHOW DATABASES ;
SHOW TABLES FROM demo;
SHOW TABLE STATUS FROM demo;

SHOW COLUMNS FROM demo.new_student; -- DESC
SHOW FULL COLUMNS FROM demo.new_student;

SHOW VARIABLES LIKE 'ch%';
SHOW VARIABLES LIKE 'col%';

SHOW CREATE TABLE demo.new_student;

# scott tiger

DESC scott.emp;

SELECT * -- 所有行， 所有列
FROM scott.emp;

SELECT *
FROM scott.dept;

SELECT *
FROM scott.salgrade;

SELECT ENAME, SAL
FROM scott.emp
WHERE ENAME <> 'scott';

SELECT *
FROM scott.emp;

SELECT HIREDATE
FROM scott.emp
WHERE HIREDATE > '1985-1-1';

SELECT *
FROM emp
WHERE JOB = 'salesman' AND HIREDATE > '1981-5-1';

SELECT *
FROM emp
WHERE JOB = 'salesman' OR HIREDATE > '1981-5-1';