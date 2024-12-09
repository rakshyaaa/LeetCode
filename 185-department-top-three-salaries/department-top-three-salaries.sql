# Write your MySQL query statement below

with cte as (
select d.name as Department, e.name as Employee
,salary
,dense_rank() over (partition by departmentId  order by salary desc) as row_num
from employee e
join department d
on e.departmentId  = d.id
) select Department, Employee, Salary from cte where row_num <= 3