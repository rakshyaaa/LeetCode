# Write your MySQL query statement below


select 
c.customer_id, 
customer_name 
from customers c
left join orders o
on c.customer_id = o.customer_id
group by c.customer_id, 
customer_name 
having sum(product_name = 'A') > 0
        and sum(product_name ='B') > 0
        and sum(product_name = 'C') = 0
order by c.customer_id;