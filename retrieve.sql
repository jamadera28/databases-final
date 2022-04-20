--Benjamin Lucas, Joseph Madera, Hannah Packard, Abbigail Thompson
--Retrieve Data


-- select the smoothista that made a smoothie for a customer with a free smoothie available
select sname from smoothista natural join orders
where customer_id in (select customer_id from customer natural join rewards
    where no_smoothies_to_free = 0);