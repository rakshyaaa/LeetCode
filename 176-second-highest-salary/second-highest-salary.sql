/* Write your T-SQL query statement below */

with cte as (
select salary,
dense_rank() over (order by salary desc) as rnk
from employee
)
select max(salary) as SecondHighestSalary from cte where rnk = 2;