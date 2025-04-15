# Write your MySQL query statement below

select e1.student_id, min(course_id) as course_id, e1.grade as grade
from enrollments e1
join 
(
select student_id, max(grade) as grade
from enrollments 
group by student_id
) e2
on e1.student_id = e2.student_id and e1.grade = e2.grade
group by e1.student_id, e1.grade
order by e1.student_id