CREATE TABLE public.customer (
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