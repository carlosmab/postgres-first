/* change type */
alter table customer
alter column sex type sex_type using sex::sex_type;


/* change default value */
alter table customer
alter column state set default 'PA';