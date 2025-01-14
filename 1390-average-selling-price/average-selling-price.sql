# Write your MySQL query statement below

with cte as (
select p.product_id, u.purchase_date, sum(coalesce(units,0)) as units, sum(coalesce(units,0)*coalesce(price,0)) as total_price_sold
from prices p
 left join UnitsSold u
on p.product_id = u.product_id
and u.purchase_date >= start_date and u.purchase_date <= end_date
group by p.product_id, u.purchase_date
) select product_id, round(coalesce(sum(total_price_sold ) / sum(units),0),2) as average_price from cte
group by product_id