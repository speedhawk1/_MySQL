START TRANSACTION;

SELECT *
FROM scott.emp;

DELETE
FROM scott.emp
WHERE EMPNO = 7521; -- DML

# TRUNCATE TABLE scott.emp;

ROLLBACK; -- 回滚

COMMIT; -- 提交

CREATE TABLE scott.t( -- DDL
  id INT
);