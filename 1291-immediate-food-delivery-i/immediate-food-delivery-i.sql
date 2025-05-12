# Write your MySQL query statement below

with cte as (
select 
delivery_id,
case when order_date = customer_pref_delivery_date  then 'immediate'
else 'scheduled' end as delivery_name
from delivery group by delivery_id
) 
select round(sum(case when delivery_name ='immediate' then 1 else 0 end)/ count(distinct delivery_id) * 100,2) as immediate_percentage
from cte;