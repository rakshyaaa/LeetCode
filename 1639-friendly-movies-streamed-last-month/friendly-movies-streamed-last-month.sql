# Write your MySQL query statement below

select distinct c.title
from TVProgram t
join content c
on t.content_id = c.content_id where c.Kids_content = 'Y' and c.content_type = 'Movies'
and year(program_date) = 2020 and month(program_date) = 6
