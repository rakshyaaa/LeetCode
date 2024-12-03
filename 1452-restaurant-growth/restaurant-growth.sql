with base_cte as (
SELECT VISITED_ON, SUM(AMOUNT) AS AMT FROM CUSTOMER GROUP BY VISITED_ON
)
,CTE AS (
select     
cus.visited_on,
DATE_ADD(cus.visited_on, INTERVAL -6 DAY) AS SIX_dAY_BEFORE,
amt,
sum(amt) over (order by CUS.visited_on asc
      ROWS BETWEEN  6 PRECEDING AND CURRENT ROW) as sum_AMT,
AVG(amt) over (order by CUS.visited_on asc
      ROWS BETWEEN  6 PRECEDING AND CURRENT ROW) as AVERAGE_AMOUNT
from base_cte cus
) SELECT CTE.visited_on,sum_amt as amount,round(AVERAGE_AMOUNT,2) as AVERAGE_AMOUNT  FROM CTE 
INNER JOIN base_cte b ON SIX_dAY_BEFORE  = b.VISITED_ON
;


