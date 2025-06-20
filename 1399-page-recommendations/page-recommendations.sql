# Write your MySQL query statement below

select page_id as recommended_page  from 
(
select page_id from friendship
join likes l
on user2_id = user_id
where user1_id = 1

union 

select page_id from friendship
join likes l
on user1_id = user_id
where user2_id = 1
) cte

where page_id not in 
(select page_id from likes where user_id = 1)
order by page_id asc