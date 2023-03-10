select *
from sales_item
where discount > .15
order by discount desc limit 5;


select time_order_taken, customer_id
from sales_order
where time_order_taken > '2018-12-01' and time_order_taken < '2018-12-31';

-- Concat operation between columns
select concat(first_name, ' ', last_name) as full_name, phone, state
from customer
where state = 'TX';


/* Grouped calculation */

-- Calculations: It's necessary use group by
select product_id, sum(price) as total
from item
where product_id = 1
group by product_id;

-- Calculations: Grouping by multiple column
-- You can get different clasifications
select product_id, color, sum(price) as total
from item
where product_id = 1
group by product_id, color;


/* Get non duplicated rows */
-- distinct
select distinct city, state
from customer
where state in ('CA', 'NJ')
order by city, state;
