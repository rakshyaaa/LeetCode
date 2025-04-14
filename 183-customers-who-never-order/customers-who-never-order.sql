# Write your MySQL query statement below

select name as customers 
from 
customers c
left join orders r 
on c.id = r.customerID
where r.id is null
