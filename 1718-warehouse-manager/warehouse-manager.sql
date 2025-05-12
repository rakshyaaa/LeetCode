# Write your MySQL query statement below

select 
name as warehouse_name,
sum(length*width*height*units) as volume
from warehouse w
join products p on w.product_id = p.product_id
group by name