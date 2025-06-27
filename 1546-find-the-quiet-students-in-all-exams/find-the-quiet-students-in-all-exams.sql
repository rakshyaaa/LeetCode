# Write your MySQL query statement below


with cte as (
    select exam_id,
    max(score) as high_score, 
    min(score) as low_score 
    from exam 
    group by exam_id
),
cte2 as (
select 
s.student_id, 
s.student_name,
e.exam_id,
e.score
from student s
left join exam e
on s.student_id = e.student_id
left join cte c
on c.exam_id = e.exam_id
where score in (high_score, low_score) or score is null
)
select student_id, student_name from student s
where not exists (select student_id from cte2 where cte2.student_id = s.student_id)


