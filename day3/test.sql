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

SHOW DATABASES;
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

SELECT
  ENAME,
  SAL
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

SELECT *
FROM scott.emp
ORDER BY JOB DESC, HIREDATE DESC; -- ASC ascend 升序 DESC descend 降序

SELECT *
FROM scott.emp
LIMIT 3 OFFSET 6;


SELECT *
FROM scott.emp
LIMIT 6, 3;

SELECT *
FROM scott.emp
WHERE ENAME LIKE '_a%';

SHOW VARIABLES LIKE 'col%';

SELECT *
FROM scott.emp
WHERE ENAME REGEXP '[b-d]';

SELECT *
FROM scott.emp
WHERE JOB NOT IN ('manager', 'clerk');
# WHERE JOB = 'clerk' OR JOB = 'manager';

SELECT *
FROM scott.emp
WHERE SAL NOT BETWEEN 2000 AND 3000;
# sal >= 2000 and sal <= 3000;

SELECT
  ENAME AS '员工姓名',
  SAL * 12 '年薪'
FROM scott.emp;

SELECT
  e.ENAME,
  e.SAL
FROM scott.emp AS e;

SELECT *
FROM emp
WHERE COMM IS NULL;

UPDATE scott.emp
SET COMM = NULL
WHERE ename = 'scott';

SELECT
  ENAME,
  SAL + ifnull(COMM, 0)
FROM scott.emp;

SELECT *
FROM scott.emp;

SELECT *
FROM scott.dept;

SELECT
  ENAME,
  dname
FROM scott.emp
  INNER JOIN scott.dept
    ON emp.DEPTNO = dept.DEPTNO;

SELECT
  ENAME,
  DNAME
FROM scott.emp
  LEFT OUTER JOIN scott.dept
    ON emp.DEPTNO = dept.DEPTNO

UNION

SELECT
  ENAME,
  DNAME
FROM scott.emp
  RIGHT OUTER JOIN scott.dept
    ON emp.DEPTNO = dept.DEPTNO;


SELECT
  ENAME,
  dname
FROM scott.emp
  INNER JOIN scott.dept
  USING (deptno);

SELECT
  ENAME,
  DNAME
FROM scott.emp
  INNER JOIN scott.dept; -- 13 * 4 = 52

CREATE TABLE scott.emp_backup
  SELECT *
  FROM scott.emp;

DESC scott.emp_backup;

SELECT *
FROM scott.emp_backup;

TRUNCATE TABLE scott.emp_backup;

INSERT INTO scott.emp_backup
  SELECT *
  FROM scott.emp
  WHERE JOB = 'manager';

CREATE OR REPLACE VIEW v_emp
AS
  SELECT
    ENAME,
    JOB,
    MGR
  FROM scott.emp
  WHERE DEPTNO IN (20, 30);

SELECT *
FROM scott.emp_backup;

SELECT *
FROM scott.v_emp;

UPDATE scott.emp
SET job = '修改了的工作'
WHERE EMPNO = 7566;

SELECT *
FROM scott.emp;

SELECT *
FROM scott.emp_backup;

SELECT *
FROM scott.v_emp;

SHOW CREATE VIEW scott.v_emp;

DROP VIEW scott.v_emp;

UPDATE v_emp
SET ENAME = 'tester'
WHERE ENAME = 'scott';

SELECT *
FROM scott.emp;
