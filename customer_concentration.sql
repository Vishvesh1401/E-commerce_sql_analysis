-- PHASE 4: CUSTOMER CONCENTRATION

-- Q7. Who are the top customers?
select user_id, sum(total_price) as revph
from eorders
group by user_id
order by revph desc 
limit 1000;

-- Q8. How much revenue comes from top customers?
select sum(revph) as total_rev
from(
select user_id, sum(total_price) as revph
from eorders
group by user_id
order by revph desc 
limit 10
)t;