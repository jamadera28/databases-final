--Benjamin Lucas, Joseph Madera, Hannah Packard, Abbigail Thompson
--Insert Data
cl scr;
insert into smoothie values(seqSmID.nextVal,7.99,'small','orange','blueberry',null,'kale',null,null,'zinc',null);
insert into rewards values(seqRID.nextVal, null, 10); -- need to automatically decrement rewards.no_smoothies_to_free based on insert or update of order
