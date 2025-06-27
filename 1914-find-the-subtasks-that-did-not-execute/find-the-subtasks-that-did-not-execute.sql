# Write your MySQL query statement below

with recursive tasks_cte as (
    select task_id, subtasks_count, 1 as subtask_number
    from tasks
    where subtasks_count >=1
    union all
    select t.task_id, t.subtasks_count, subtask_number + 1 
    from tasks_cte t
    where subtask_number <  t.subtasks_count
)
select t.task_id, t.subtask_number as subtask_id from tasks_cte t
left join executed e
on t.task_id = e.task_id and t.subtask_number = e.subtask_id
where e.subtask_id is null
order by t.task_id asc