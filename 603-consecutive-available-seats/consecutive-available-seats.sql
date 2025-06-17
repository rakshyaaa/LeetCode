# Write your MySQL query statement below

with cte as (
select 
seat_id,
free,
LAG(free) over (order by seat_id) as prev_free,
LEAD(free) over (order by seat_id) as next_free
from cinema
) select seat_id from cte where free = 1 and (prev_free = 1 or next_free = 1)
order by seat_id