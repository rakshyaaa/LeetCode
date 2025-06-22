# Write your MySQL query statement below

select
p.product_name,
p.product_id,
o.order_id,
recent_date as order_date
from 
orders o
join products p
on o.product_id = p.product_id
join (

    select product_id, max(order_date) as recent_date from orders group by product_id
    

) r
on o.order_date = recent_date and p.product_id = r.product_id
order by product_name asc, order_id asc