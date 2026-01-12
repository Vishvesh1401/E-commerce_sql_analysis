-- Data Exploration

-- Q1. What does the dataset look like?
select * from eorders limit 10;
describe eorders;

-- Q1. What does the dataset look like?
select count(distinct user_id) as total_cust from eorders;
