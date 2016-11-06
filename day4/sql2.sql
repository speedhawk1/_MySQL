# 1. 返回拥有员工的部门名、部门号

SELECT DISTINCT
  d.dname,
  d.DEPTNO
FROM scott.dept d INNER JOIN scott.emp AS e
    ON d.DEPTNO = e.DEPTNO;

# 4. 返回雇员的雇佣日期早于其经理雇佣日期的员工及其经理姓名

# 6. 返回从事 clerk 工作的员工姓名和所在部门名称

# 10. 返回与 scott 从事相同工作的员工
SELECT *
FROM scott.emp
WHERE JOB = (
  SELECT JOB
  FROM scott.emp
  WHERE ENAME = 't_s'
);