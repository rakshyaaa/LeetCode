# Write your MySQL query statement below

SELECT DEPARTMENT, EMPLOYEE, SALARY FROM (
select
d.name as department,
e.name as employee,
e.salary as salary,
RANK() over (partition by d.id order by e.salary DESC) as salar_dept_rnk
from employee e
join department d
on e.departmentId = d.id
) T WHERE salar_dept_rnk = 1