--Benjamin Lucas, Joseph Madera, Hannah Packard, Abbigail Thompson
--Insert Data
cl scr;

insert into smoothie values(seqSID.nextVal,7.99,'small','orange','blueberry',null,'kale',null,null,'zinc',null);
insert into rewards values(seqRID.nextVal, null, 10); -- need to automatically decrement rewards.no_smoothies_to_free based on insert or update of order
insert into customer values(seqCID.nextVal, null, 'John Doe', TO_DATE('01-01-2000', 'MM-DD-YYYY'),'test@villanova.edu');
insert into smoothista values(seqSmID.nextVal, null, null, 'Jane Doe');
insert into smoothista values(seqSmID.nextVal, null, null, 'Kevin Lombardo');
insert into smoothista values(seqSmID.nextVal, null, null, 'Kristina Jenkins');
insert into smoothista values(seqSmID.nextVal, null, null, 'Squidward Fancypants');

insert into smoothie_store values(seqSsID.nextVal, 1, 'Bryn Mawr');
insert into smoothie_store values(seqSsID.nextVal, 2, 'Wayne');
insert into smoothie_store values(seqSsID.nextVal, 3, 'Ardmore');
insert into smoothie_store values(seqSsID.nextVal, 4, 'Devon');

insert into orders values(
    seqOID.nextVal, 1, 1, 1, 1, current_date, 'pickup');
    
update rewards set customer_id = 1;
update customer set rewards_id = 1;
update smoothista set smoothie_store_id = 1 where smoothista_id = 1;
update smoothista set smoothie_store_id = 2 where smoothista_id = 2;
update smoothista set smoothie_store_id = 3 where smoothista_id = 3;
update smoothista set smoothie_store_id = 4 where smoothista_id = 4;



update rewards set no_smoothies_to_free = 0;

insert into smoothie values(seqSID.nextVal,12.29,'medium','strawberry','blueberry','mango','kale','cucumber','whey',null,null);
insert into smoothie values(seqSID.nextVal,4.99,'small','blueberry',null,null,'kale',null,null,null,null);
insert into smoothie values(seqSID.nextVal,10.38,'large','banana','mango',null,'spinach','kale','soy','vitamin_c','raspberry_sherbet');

insert into smoothie values(seqSID.nextVal,15.29,'medium','strawberry','blueberry','mango','kale','cucumber','whey',null,null);
insert into smoothie values(seqSID.nextVal,7.99,'small','blueberry',null,null,'kale',null,null,null,null);
insert into smoothie values(seqSID.nextVal,3.38,'large','banana','mango',null,'spinach','kale','soy','vitamin_c','raspberry_sherbet');

insert into smoothie values(seqSID.nextVal,12.20,'medium','strawberry','blueberry','mango','kale','cucumber','whey',null,null);
insert into smoothie values(seqSID.nextVal,8.76,'small','blueberry',null,null,'kale',null,null,null,null);
insert into smoothie values(seqSID.nextVal,10.89,'large','banana','mango',null,'spinach','kale','soy','vitamin_c','raspberry_sherbet');

insert into smoothie values(seqSID.nextVal,8.29,'medium','strawberry','blueberry','mango','kale','cucumber','whey',null,null);
insert into smoothie values(seqSID.nextVal,5.55,'small','blueberry',null,null,'kale',null,null,null,null);
insert into smoothie values(seqSID.nextVal,10.00,'large','banana','mango',null,'spinach','kale','soy','vitamin_c','raspberry_sherbet');

insert into orders values(
    seqOID.nextVal, 1, 2, 1, 1, current_date, 'pickup');
insert into orders values(
    seqOID.nextVal, 1, 3, 1, 1, current_date, 'delivery');
insert into orders values(
    seqOID.nextVal, 1, 4, 1, 1, current_date, 'instore');
    
insert into orders values(
    seqOID.nextVal, 1, 5, 3, 1, current_date, 'pickup');
insert into orders values(
    seqOID.nextVal, 1, 6, 3, 1, current_date, 'delivery');
insert into orders values(
    seqOID.nextVal, 1, 7, 3, 1, current_date, 'instore');
    
insert into orders values(
    seqOID.nextVal, 1, 8, 4, 1, current_date, 'pickup');
insert into orders values(
    seqOID.nextVal, 1, 9, 4, 1, current_date, 'delivery');
insert into orders values(
    seqOID.nextVal, 1, 10, 4, 1, current_date, 'instore');
    
insert into orders values(
    seqOID.nextVal, 1, 11, 2, 1, current_date, 'pickup');
insert into orders values(
    seqOID.nextVal, 1, 12, 2, 1, current_date, 'delivery');
insert into orders values(
    seqOID.nextVal, 1, 13, 2, 1, current_date, 'instore');