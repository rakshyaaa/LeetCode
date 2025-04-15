# Write your MySQL query statement below

with cte as (
select
student_id,
course_id,
grade,
dense_rank() over (partition by student_id order by grade desc, course_id asc) as rnk
from enrollments
order by rnk
) select student_id, course_id, grade from cte where rnk = 1 