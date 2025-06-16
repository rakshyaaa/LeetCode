# Write your MySQL query statement below

select
c.name as country
from person p
join country c
on left(phone_number, 3) = c.country_code
join calls ca
on p.id in (ca.caller_id, ca.callee_id)
group by
c.name
having 
avg(duration) > (select avg(duration) from calls)