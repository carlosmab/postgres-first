/* change type */
alter table customer
alter column sex type sex_type using sex::sex_type;


/* change default value */
alter table customer
alter column state set default 'PA';


-- add column 
alter table sales_item 
add day_of_week varchar(8);


-- modify column
alter table sales_item 
alter column day_of_week set not null;


-- modify name of a column
alter table sales_item
rename column day_of_week to weekday;


-- drop a column
alter table sales_item
drop column weekday;

-- change type
alter table customer
alter column zip type integer;

alter table sales_person
alter column zip type integer;

alter table sales_order
alter column purchase_order_number type bigint;
