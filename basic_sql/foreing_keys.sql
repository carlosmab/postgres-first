create table product (
	product_type_id integer references product_type(id), /* foreign key */
	name varchar(30) not null,
	supplier varchar(30) not null,
	description text not null,
	id serial primary key
)

create table item (
  product_id integer references product(id),
  size integer not null,
  color varchar(30) not null,
  picture varchar(255) not null,
  price numeric(6, 2) not null,
  id serial primary key
);

create table sales_order(
  customer_id integer references customer(id),
  sales_person_id integer references sales_person(id),
  time_order_taken timestamp not null,
  purchase_order_number integer not null,
  credit_card_number varchar(16) not null,
  credit_card_exper_month smallint not null,
  credit_card_exper_day smallint not null,
  credit_card_exper_secret_number smallint not null,
  name_on_card varchar(100) not null,
  id serial primary key,
);

create table sales_item(
  item_id integer references item(id),
  sales_order_id integer references sales_order(id),
  quantity integer not null,
  discount numeric(3, 2) null default 0,
  taxable boolean not null default false,
  sales_tax_rate numeric(5, 2) not null default 0,
  id serial primary key
);