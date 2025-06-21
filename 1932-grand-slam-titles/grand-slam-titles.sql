# Write your MySQL query statement below

with cte as (
select wimbledon as id from championships
union all
select Fr_open as id from championships
union all
select US_open as id from championships
union all
select Au_open as id from championships
) 
select player_id, player_name, count(id) as grand_slams_count  from players p
join cte c
on c.id = p.player_id
group by player_id, player_name