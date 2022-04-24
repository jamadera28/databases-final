--Benjamin Lucas, Joseph Madera, Hannah Packard, Abbigail Thompson
--Retrieve Data

-- select the smoothista that made a smoothie for a customer with a free smoothie available
select sname as "Smoothista Made Free Smoothie" from smoothista natural join orders
where customer_id in (select customer_id from customer natural join rewards
    where no_smoothies_to_free = 0);
    
-- select the average price of smoothie orders for all stores
select round(avg(price),2) as "Avg Smoothie Price", slocation as "Store" from smoothie, smoothie_store natural join orders
group by slocation;    

-- select orders per store
select count(o.order_id) as "Orders per Store", s.slocation as "Location"
from orders o
INNER JOIN smoothie_store s ON s.smoothie_store_id = o.smoothie_store_id
group by s.smoothie_store_id, s.slocation;

-- customer's favorite smoothies
select c.cname as "Customer", s.smoothie_id as "Smoothie"
from customer c, smoothie s, orders o
where o.customer_id = c.customer_id and c.customer_id = 4;
