# Write your MySQL query statement below


select 
a.sale_Date, sum(a.sold_num) - sum(o.sold_num) as diff
from sales a
join sales o
on a.sale_date = o.sale_date
where a.fruit = 'apples'
and o.fruit = 'oranges'
group by a.sale_date