# Write your MySQL query statement below

with cte_loc as 
(
    select distinct concat(lat,lon) as location, count(*) from insurance group by concat(lat,lon) having count(*) > 1 
)
,cte_tiv_2025 as 
(
    select distinct tiv_2015 , count(*) from insurance group by tiv_2015 having count(*) > 1 
)
select round(sum(tiv_2016),2) as tiv_2016 from insurance
where tiv_2015 in (select tiv_2015 from cte_tiv_2025)
and concat(lat,lon) not in (select location from cte_loc);