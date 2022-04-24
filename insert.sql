--Benjamin Lucas, Joseph Madera, Hannah Packard, Abbigail Thompson
--Insert Data
cl scr;

--customer / reward
insert into rewards values(seqRID.nextVal, null, 10); -- need to automatically decrement rewards.no_smoothies_to_free based on insert or update of order
insert into customer values(seqCID.nextVal, null, 'John Doe', TO_DATE('01-01-2000', 'MM-DD-YYYY'),'test@villanova.edu');
update rewards set customer_id = 1 where rewards_id = 1;
update customer set rewards_id = 1 where customer_id = 1;

insert into rewards values(seqRID.nextVal, null, 1);
insert into customer values(seqCID.nextVal, null, 'Abe Lincoln', TO_DATE('02-12-1809', 'MM-DD-YYYY'),'abe@gmail.com');
update rewards set customer_id = 2 where rewards_id = 2;
update customer set rewards_id = 2 where customer_id = 2;

insert into rewards values(seqRID.nextVal, null, 7);
insert into customer values(seqCID.nextVal, null, 'John F. Kennedy', TO_DATE('05-29-1917', 'MM-DD-YYYY'),'jfk@gmail.com');
update rewards set customer_id = 3 where rewards_id = 3;
update customer set rewards_id = 3 where customer_id = 3;

insert into rewards values(seqRID.nextVal, null, 8);
insert into customer values(seqCID.nextVal, null, 'Bryan Cranston', TO_DATE('03-7-1956', 'MM-DD-YYYY'),'ww@gmail.com');
update rewards set customer_id = 4 where rewards_id = 4;
update customer set rewards_id = 4 where customer_id = 4;

insert into rewards values(seqRID.nextVal, null, 2);
insert into customer values(seqCID.nextVal, null, 'Saul Goodman', TO_DATE('08-10-1966', 'MM-DD-YYYY'),'betcalsaul@gmail.com');
update rewards set customer_id = 5 where rewards_id = 5;
update customer set rewards_id = 5 where customer_id = 5;

insert into rewards values(seqRID.nextVal, null, 5);
insert into customer values(seqCID.nextVal, null, 'Bob Odendirk', TO_DATE('10-22-1962', 'MM-DD-YYYY'),'bodendirk@gmail.com');
update rewards set customer_id = 6 where rewards_id = 6;
update customer set rewards_id = 6 where customer_id = 6;

insert into rewards values(seqRID.nextVal, null, 0);
insert into customer values(seqCID.nextVal, null, 'Leonardo DiCaprio', TO_DATE('11-11-1974', 'MM-DD-YYYY'),'ldicap@gmail.com');
update rewards set customer_id = 7 where rewards_id = 7;
update customer set rewards_id = 7 where customer_id = 7;

--smoothista
insert into smoothista values(seqSmID.nextVal, 1, null, 'Jane Doe');
insert into smoothista values(seqSmID.nextVal, 2, null, 'Kevin Lombardo');
insert into smoothista values(seqSmID.nextVal, 3, null, 'Kristina Jenkins');
insert into smoothista values(seqSmID.nextVal, 4, null, 'Squidward Fancypants');

--smoothie store
insert into smoothie_store values(seqSsID.nextVal, 1, 'Bryn Mawr');
insert into smoothie_store values(seqSsID.nextVal, 2, 'Wayne');
insert into smoothie_store values(seqSsID.nextVal, 3, 'Ardmore');
insert into smoothie_store values(seqSsID.nextVal, 4, 'Devon');

--smoothista
update smoothista set smoothie_store_id = 1 where smoothista_id = 1;
update smoothista set smoothie_store_id = 2 where smoothista_id = 2;
update smoothista set smoothie_store_id = 3 where smoothista_id = 3;
update smoothista set smoothie_store_id = 4 where smoothista_id = 4;

--smoothie
insert into smoothie values(seqSID.nextVal,7.99,'small','orange','blueberry',null,'kale',null,null,'zinc',null);

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

--orders
insert into orders values(seqOID.nextVal, 1, 1, 1, 2, TO_DATE('02-12-2022', 'MM-DD-YYYY'), 'pickup');
insert into orders values(seqOID.nextVal, 1, 2, 1, 1, TO_DATE('9-19-2022', 'MM-DD-YYYY'), 'pickup');
insert into orders values(seqOID.nextVal, 1, 3, 1, 3, TO_DATE('10-01-2021', 'MM-DD-YYYY'), 'delivery');
insert into orders values(seqOID.nextVal, 1, 4, 1, 7, TO_DATE('03-02-2020', 'MM-DD-YYYY'), 'instore');
    
insert into orders values(seqOID.nextVal, 1, 5, 3, 5, TO_DATE('07-23-2020', 'MM-DD-YYYY'), 'pickup');
insert into orders values(seqOID.nextVal, 1, 6, 3, 4, TO_DATE('08-12-2020', 'MM-DD-YYYY'), 'delivery');
insert into orders values(seqOID.nextVal, 1, 7, 3, 5, TO_DATE('09-14-2021', 'MM-DD-YYYY'), 'instore');
    
insert into orders values(seqOID.nextVal, 1, 8, 4, 6, TO_DATE('12-19-2018', 'MM-DD-YYYY'), 'pickup');
insert into orders values(seqOID.nextVal, 1, 9, 4, 7, TO_DATE('04-29-2015', 'MM-DD-YYYY'), 'delivery');
insert into orders values(seqOID.nextVal, 1, 10, 4, 1, TO_DATE('07-30-2000', 'MM-DD-YYYY'), 'instore');
    
insert into orders values(seqOID.nextVal, 1, 11, 2, 2, TO_DATE('06-11-1809', 'MM-DD-YYYY'), 'pickup');
insert into orders values(seqOID.nextVal, 1, 12, 2, 4, current_date, 'delivery');
insert into orders values(seqOID.nextVal, 1, 13, 2, 5, current_date, 'instore');
