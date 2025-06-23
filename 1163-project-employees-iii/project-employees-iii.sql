# Write your MySQL query statement below

/*
most experienced employees in each project
tie -- all employees with max num of experience years

*/
with cte as (
select
project_id,
p.employee_id,
experience_years,
rank() over (partition by project_id order by experience_years desc) as exp_rank
from project p
join employee e
on p.employee_id = e.employee_id
) select project_id, employee_id from cte where exp_rank = 1