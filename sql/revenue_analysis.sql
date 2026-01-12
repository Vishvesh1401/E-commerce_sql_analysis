-- Revenue overview of the given company

-- Q3. What is the total revenue?
select sum(total_price) as total_rev from eorders;

-- Q4. How does revenue change over time?
select year(order_date) as year, month(order_date) as month, sum(total_price) as total_rev
from eorders
group by year(order_date), month(order_date)
order by year, month;
