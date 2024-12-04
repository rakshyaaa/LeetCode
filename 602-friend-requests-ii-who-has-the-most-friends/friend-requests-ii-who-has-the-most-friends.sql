# Write your MySQL query statement below

with cte as (
select distinct requester_id as id, count(distinct accepter_id) as num from requestaccepted group by requester_id
union all
select distinct accepter_id as id, count(distinct requester_id) as num from requestaccepted group by accepter_id
)
select distinct id as id, sum(num) as num from cte group by id order by num desc limit 1;