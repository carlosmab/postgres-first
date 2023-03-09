-- create index (unique)
create index transaction_id on transaction(name);


-- create index (unique)
create index transaction_id_2 on transaction(name, payment_type);