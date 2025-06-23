# Write your MySQL query statement below

/*

most frequently ordered products by customer

*/


with cte as 
(
    select *, count(product_id) over (partition by customer_id, product_id) as cnt from orders
),
cte2 as (
select *, 
rank() over (partition by customer_id order by cnt desc) rnk from cte
)
select
customer_id, cte.product_id, product_name
from cte2 cte
join products p
on cte.product_id = p.product_id
where rnk = 1
group by customer_id, cte.product_id, product_name