# Write your MySQL query statement below

select distinct c.title
from TVProgram t
join content c
on t.content_id = c.content_id where c.Kids_content = 'Y' and c.content_type = 'Movies'
and t.program_date between '2020-06-01 00:00' and '2020-06-30 23:59' 
