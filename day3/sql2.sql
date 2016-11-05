# 1. 返回拥有员工的部门名、部门号

SELECT DISTINCT d.dname, d.DEPTNO
FROM scott.dept d INNER JOIN scott.emp AS e
ON d.DEPTNO = e.DEPTNO;