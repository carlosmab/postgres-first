CREATE TABLE customer (
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	email varchar(60) NOT NULL,
	company varchar(60) NOT NULL,
	street varchar(50) NOT NULL,
	city varchar(40) NOT NULL,
	state bpchar(2) NOT NULL,
	zip int2 NOT NULL,
	phone varchar(20) NOT NULL,
	birth_date date NULL,
	sex bpchar(1) NOT NULL,
	date_entered timestamp NOT NULL,
	id serial4 NOT NULL,
	CONSTRAINT customer_pkey PRIMARY KEY (id)
);

create table sales_person (	
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	email varchar(60) not null,
	street varchar(50) not null,
	city varchar(40) not null,
	state char(2) not null default 'PA',
	zip smallint not null,
	phone varchar(20) not null,
	birth_date date null,
	sex sex_type not null,
	date_hired timestamp not null,
	id serial primary key
);

create table product_type(
    name varchar(30) not null,
    id serial primary key
);



