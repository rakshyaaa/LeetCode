# Write your MySQL query statement below


with cte as (
select 
'succeeded' as period_state,
success_date
from succeeded
where success_date >= '2019-01-01' and success_date <= '2019-12-31'

union all

select 
'failed' as period_state,
fail_date
from Failed 
where fail_date >= '2019-01-01' and fail_date <= '2019-12-31'
), cte2 as (
select 
period_state,
success_date,
rank() over (partition by period_state order by success_date) as rnk
 from cte order by success_date asc
)
select 
period_state , min(success_date) as start_date, max(success_date) as end_date
from cte2
group by date_sub(success_date, interval rnk day), period_state
order by min(success_date)


