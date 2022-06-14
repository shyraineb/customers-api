create or replace procedure insertCustomer(
id int, 
INOUT fname varchar(50), 
lname varchar(50), 
age int, 
street varchar(50), 
city varchar(50), 
state varchar(50), 
code int
)
language plpgsql    
as $$
begin
    INSERT INTO customers (id, first_name, last_name, age, street_address, city_address, state_address, postal_code)
	VALUES (id, fname, lname, age, street, city, state, code) RETURNING fname into fname;

    commit;
end;$$