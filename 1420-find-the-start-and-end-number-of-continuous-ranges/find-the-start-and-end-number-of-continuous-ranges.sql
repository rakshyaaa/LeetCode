# Write your MySQL query statement below

/*
logs:
1,2,3

7,8

10, 10

*/

with cte as (
select 
log_id, 
rank() over (order by log_id) as rnk
from logs
) 
select 
min(log_id) as start_id, max(log_id) end_id from cte
group by log_id - rnk 
