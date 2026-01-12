-- Category Analysis...what drives the revenue

-- Q5. Which categories drive revenue?
select category, sum(total_price) as total_rev 
from eorders
group by category
order by total_rev desc;

-- Q6. Average order value by category
select category, avg(total_price) as avg_rev 
from eorders
group by category
order by avg_rev desc;
