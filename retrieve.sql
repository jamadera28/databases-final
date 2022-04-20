--Benjamin Lucas, Joseph Madera, Hannah Packard, Abbigail Thompson
--Retrieve Data


-- select the smoothista that made a smoothie for a customer with a free smoothie available
select sname from smoothista natural join orders
where customer_id in (select customer_id from customer natural join rewards
    where no_smoothies_to_free = 0);
    
select round(avg(price),2) as "Avg Smoothie Price", slocation as "Store" from smoothie, smoothie_store natural join orders
where smoothie_store_id in (select smoothie_store_id from smoothie_store
    where slocation = 'Bryn Mawr')
group by slocation;    