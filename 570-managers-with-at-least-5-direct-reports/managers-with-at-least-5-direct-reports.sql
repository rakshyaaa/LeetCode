# Write your MySQL query statement below


select e.name from employee e join employee e2 
where e.id = e2.managerID
group by e.id
having count( e2.managerID) >= 5; 