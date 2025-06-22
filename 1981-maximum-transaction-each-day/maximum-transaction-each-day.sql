# Write your MySQL query statement below

select transaction_id from transactions t
join (
select 
day,
max(amount) as amt
from transactions
group by date(day)
) m 
on t.amount = m.amt and m.day = t.day
order by transaction_id