# Write your MySQL query statement below

/*

'2021 - 1 - 1'


*/

with cte as (
select
user_id,
visit_date,
lead(visit_date, 1) over (partition by user_id order by visit_date asc) as next_visit
from uservisits
order by
user_id, visit_date 
),
cte2 as (
select user_id, 
case when next_visit is null then datediff("2021-1-1", visit_date)
     else datediff(next_visit, visit_date) end as diff
from cte
)
select 
user_id,
max(diff) as biggest_window
from cte2
group by user_id