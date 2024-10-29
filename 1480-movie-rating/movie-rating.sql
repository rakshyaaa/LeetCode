# Write your MySQL query statement below

(select name as results
from users u
inner join movierating m
on u.user_id = m.user_id
group by name
order by count(rating) desc, name asc
limit 1)
 union all
(select title as results
from movies u
inner join movierating m
on u.movie_id = m.movie_id
where month(created_at) = 2 and year(created_at) = 2020
group by  title
order by avg(rating) desc, title asc
limit 1);