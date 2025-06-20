# Write your MySQL query statement below

with cte as (
select e.employee_id
from employees e
left join salaries s on e.employee_id = s.employee_id
where s.salary is null
union
select s.employee_id
from salaries s
left join employees e on e.employee_id = s.employee_id
where e.name is null
) select * from cte order by employee_id asc;