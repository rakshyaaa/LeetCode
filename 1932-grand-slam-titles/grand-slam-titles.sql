# Write your MySQL query statement below

select
player_id, 
player_name,
sum(p.player_id = c.Wimbledon ) + sum(p.player_id = c.Fr_open) + sum(p.player_id = c.US_open) + sum(p.player_id = c.Au_open) as grand_slams_count
from players p
inner join championships c
on (p.player_id = c.Wimbledon ) or (p.player_id = c.Fr_open) or (p.player_id = c.US_open) or (p.player_id = c.Au_open)
group by player_id, player_name