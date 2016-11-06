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
ROLLBACK ;