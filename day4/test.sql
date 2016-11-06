START TRANSACTION;

SAVEPOINT a;

DELETE
FROM scott.emp
WHERE EMPNO = 7566; -- DML

SAVEPOINT b;

DELETE FROM scott.emp;

ROLLBACK; -- 回滚

COMMIT; -- 提交

ROLLBACK TO a; -- 不会结束事务
ROLLBACK TO b;

SELECT *
FROM scott.emp;

-- ----------------------
DELETE FROM scott.emp; -- commit;
ROLLBACK;

DROP TABLE scott.t;

CREATE TABLE scott.t (
  id INT AUTO_INCREMENT PRIMARY KEY
);

INSERT INTO scott.t VALUE (NULL);

SELECT *
FROM scott.t;

DELETE FROM scott.t;

ALTER TABLE scott.t
  AUTO_INCREMENT = 1;

SELECT
  min(ENAME),
  max(HIREDATE),
  round(avg(ENAME), 2),
  sum(ENAME),
  count(SAL)
FROM scott.emp;

SELECT DEPTNO, avg(SAL)
FROM scott.emp
GROUP BY DEPTNO;


SELECT JOB, DEPTNO, avg(SAL + ifnull(COMM, 0))
FROM scott.emp
GROUP BY JOB, DEPTNO
HAVING avg(SAL + ifnull(COMM, 0)) > 2000; -- 组检索 ：having  where ： 行检索

SELECT *
FROM scott.emp;

-- date
SELECT now();
SELECT curdate();
SELECT current_time;
SELECT current_user;
SELECT date_add(now(), INTERVAL 20 MINUTE);

-- text
SELECT lcase(ucase('hello'));
SELECT mid('hello', 1, 3);
SELECT substr('hello', 1, 3);
SELECT substring('hello', 1, 3);
SELECT length('hello');

-- number
SELECT round(1.4);
SELECT ceil(1.4);
SELECT floor(1.9);



