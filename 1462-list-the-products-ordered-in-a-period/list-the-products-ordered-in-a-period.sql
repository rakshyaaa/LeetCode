# Write your MySQL query statement below

select 
product_name,
sum(unit) as unit
from products p join orders o
on p.product_id = o.product_id
and Year(o.order_date) = 2020 and Month(o.order_date) = 2
group by product_name
having sum(unit) >= 100