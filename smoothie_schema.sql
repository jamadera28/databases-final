--Benjamin Lucas, Joseph Madera, Hannah Packard, Abbigail Thompson
--Smoothie Store Schema
cl scr;

DROP SEQUENCE seqSmID;
drop sequence seqRID;
drop sequence seqOID;
DROP SEQUENCE seqSsID;
drop sequence seqCID;
drop sequence seqSID;

DROP TABLE rewards CASCADE CONSTRAINTS;
CREATE TABLE rewards(
    rewards_id         Int not null,
    customer_id        Int null,
    no_smoothies_to_free Int not null,
    primary key (rewards_id)
    --foreign key (customer_id) references customer(customer_id)
);
create sequence seqRID increment by 1 start with 1;

DROP TABLE customer CASCADE CONSTRAINTS;
CREATE TABLE customer (
    customer_id         Int not null,
    rewards_id          Int,
    cname               varchar2(25),
    birth_date          date,
    email               varchar2(20),
    primary key (customer_id),
    foreign key (rewards_id) references rewards(rewards_id)
);
CREATE SEQUENCE seqCID INCREMENT BY 1 START WITH 1;


ALTER TABLE rewards ADD (
  foreign key (customer_id) references customer(customer_id)
);

DROP TABLE smoothie CASCADE CONSTRAINTS;
CREATE TABLE smoothie(
	smoothie_id			Int	NOT NULL,
	price			    number(10,2)   NOT NULL,
	ssize			    varchar(6),
    fruit_one			varchar(15) NOT NULL,
    fruit_two           varchar(15) NULL,
    fruit_three         varchar(15) NULL,
    veg_one             varchar(20) NULL,
    veg_two             varchar(20) NULL,
    protein             varchar(4) NULL,
    boost               varchar(10) NULL,
    frozen_sweet        varchar(20) NULL,
    constraint size_c check(ssize in ('small','medium','large') ),
    constraint fruit_c check (fruit_one in ('orange','banana','apple','peach', 'strawberry', 'blueberry','pineapple','mango') and fruit_two in ('orange','banana','apple','peach', 'strawberry', 'blueberry','pineapple','mango') and fruit_three in ('orange','banana','apple','peach', 'strawberry', 'blueberry','pineapple','mango')),
    constraint veg_c check (veg_one in ('kale','spinach','cucumber','beet') and veg_two in ('kale','spinach','cucumber','beet') ),
    constraint protein_c check (protein in ('whey','soy')),
    constraint boost_c check (boost in ('vitamin_c','zinc','matcha') ),
    constraint frozen_sweet_c check (frozen_sweet in ('vanilla_yogurt','greek_yogurt','orange_sherbet','raspberry_sherbet','lime_serbet') ),
	primary key (smoothie_id)
);
CREATE SEQUENCE seqSID INCREMENT BY 1 START WITH 1;

DROP TABLE smoothista CASCADE CONSTRAINTS;
CREATE TABLE smoothista (
    smoothista_id       Int not null,
    smanager            Int,
    smoothie_store_id   Int,
    sname               varchar2(25),
    primary key (smoothista_id),
    foreign key (smanager) references smoothista(smoothista_id)
   -- foreign key (smoothie_store_id) references smoothie_store(smoothie_store_id)
);
CREATE SEQUENCE seqSmID INCREMENT BY 1 START WITH 1;


DROP TABLE smoothie_store CASCADE CONSTRAINTS;
CREATE TABLE smoothie_store (
    smoothie_store_id    Int not null,
    smanager             Int,
    slocation            varchar2(25),
    primary key (smoothie_store_id),
    foreign key (smanager) references smoothista(smoothista_id)
);
CREATE SEQUENCE seqSsID INCREMENT BY 1 START WITH 1;

ALTER TABLE smoothista ADD (
  foreign key (smoothie_store_id) references smoothie_store(smoothie_store_id)
);

DROP TABLE orders CASCADE CONSTRAINTS;
CREATE TABLE orders (
    order_id    Int not null,
    smoothista_id       Int,
    smoothie_id         Int,
    smoothie_store_id   Int,
    customer_id         Int,
    odate                date not null,
    otype               varchar(10),
    total_price         number(10,2) not null,
    primary key (order_id),
    constraint type_c check(otype in ('delivery','pickup','instore') ),
    foreign key (customer_id) references customer(customer_id),
    foreign key (smoothista_id) references smoothista(smoothista_id),
    foreign key (smoothie_id) references smoothie(smoothie_id),
    foreign key (smoothie_store_id) references smoothie_store(smoothie_store_id)
);
CREATE SEQUENCE seqOID INCREMENT BY 1 START WITH 1;






