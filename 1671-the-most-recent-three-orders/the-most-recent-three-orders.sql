# Write your MySQL query statement below

with cte as (
select
*,
rank() over (partition by customer_id order by order_date desc ) as recent_order_rank
from orders
) 
select c.name as customer_name, c.customer_id, cte.order_id, cte.order_date
from customers c
join
cte 
on c.customer_id = cte.customer_id
where recent_order_rank in (1,2,3) 
order by c.name asc, c.customer_id asc, cte.order_date desc


