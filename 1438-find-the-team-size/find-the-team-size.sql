# Write your MySQL query statement below

/*
select employee_id, team_size from employee e
join
(select team_id, count(employee_id) as team_size from employee
group by team_id) t
on e.team_id = t.team_id
*/

select 
employee_id, 
count(employee_id) over (partition by team_id) as team_size
from employee