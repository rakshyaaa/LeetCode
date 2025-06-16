# Write your MySQL query statement below

with cte as (
select c.customer_id, name,  year(order_date) year,  month(order_date) month, sum(quantity*price) price
from customers c
join orders o
on c.customer_id = o.customer_id
join product p
on p.product_id = o.product_id
where year(order_date) = 2020 and month(order_date) in (6,7)
group by c.customer_id, name, year(order_date), month(order_date)
having sum(quantity*price) >= 100
)
select customer_id, name
from cte
group by customer_id
having
sum(if(month = 6,price,0)) >= 100
and
sum(if(month = 7,price,0)) >= 100
