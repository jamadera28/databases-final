--Benjamin Lucas, Joseph Madera, Hannah Packard, Abbigail Thompson
--Create Database

DROP TABLE smoothie CASCADE CONSTRAINTS;
DROP SEQUENCE seqSmID;

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
CREATE SEQUENCE seqSmID INCREMENT BY 1 START WITH 1;

