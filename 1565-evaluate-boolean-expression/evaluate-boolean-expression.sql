# Write your MySQL query statement below


select 
e.left_operand, e.operator, e.right_operand, 
case when operator = '>' then ( case when v1.value > v2.value then 'true' else 'false' end) 
     when operator = '<' then ( case when v1.value < v2.value then 'true' else 'false' end) 
     when operator = '=' then ( case when v1.value = v2.value then 'true' else 'false' end) 
end as value
from expressions e join 
variables v1
on e.left_operand = v1.name 
join variables v2
on e.right_operand = v2.name