# 1. 返回拥有员工的部门名、部门号

SELECT DISTINCT dname
FROM scott.dept INNER JOIN scott.emp
ON dept.DEPTNO = emp.DEPTNO;