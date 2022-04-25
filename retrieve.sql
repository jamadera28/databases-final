--Benjamin Lucas, Joseph Madera, Hannah Packard, Abbigail Thompson
--Retrieve Data

-- select the smoothista that made a smoothie for a customer with a free smoothie available
select sname as "Smoothista Made Free Smoothie" from smoothista natural join orders
where customer_id in (select customer_id from customer natural join rewards
    where no_smoothies_to_free = 0);
    
-- select the average price of smoothie orders for all stores
select '$'||round(avg(price),2) as "Avg Smoothie Price", slocation 
from ((smoothie natural join orders) natural join smoothie_store)
natural join orders group by slocation
order by "Avg Smoothie Price" DESC; 

-- select orders per store
select count(o.order_id) as "Orders per Store", s.slocation as "Location"
from orders o
INNER JOIN smoothie_store s ON s.smoothie_store_id = o.smoothie_store_id
group by s.smoothie_store_id, s.slocation;

-- select customer smoothie orders
select c.cname as "Customer", o.smoothie_id as "Smoothie"
from orders o, customer c
where o.customer_id = (
    select c.customer_id from customer c where c.cname = 'Saul Goodman'
) and o.customer_id = c.customer_id;

-- find smoothie recipe
select s.smoothie_id as "Smoothie ID", s.fruit_one, s.fruit_two, s.fruit_three, s.veg_one, s.veg_two, s.protein, s.boost, s.frozen_sweet
from smoothie s
where s.smoothie_id = 4;

-- find smoothies left until reward
select c.cname as "Customer", r.no_smoothies_to_free as "Smoothies Left"
from customer c, rewards r
where c.customer_id = (
    select c.customer_id from customer c where c.cname = 'Abe Lincoln'
) and c.customer_id = r.customer_id;

-- find smoothies sold per year
select extract (YEAR from o.odate) as "Year", count(o.order_id) as "Amount of Smoothies Sold"
from orders o
group by extract (YEAR from o.odate)
order by extract (YEAR from o.odate) ASC;
    
