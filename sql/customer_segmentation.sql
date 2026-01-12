-- PHASE 5: CUSTOMER SEGMENTATION

-- Q9. Segment customers by value
select user_id, sum(total_price) as rev,
case
when sum(total_price)>=2000 then 'high value'
when sum(total_price)<=1999 and sum(total_price)>=1000 then 'med value'
else 'low value'
end as customer_seg
from eorders
group by user_id;

-- Q10. How much revenue comes from each segment?
select customer_seg,
count(*) as customers,
sum(rev) as total_rev
from(
 select user_id, sum(total_price) as rev,
 case
 when sum(total_price)>=2000 then 'high value'
 when sum(total_price)<=1999 and sum(total_price)>=1000 then 'med value'
 else 'low value'
 end as customer_seg
from eorders
group by user_id
)t
group by customer_seg
