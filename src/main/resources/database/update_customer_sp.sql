create or replace procedure updateCustomer(
idno int, 
INOUT fname varchar(50), 
lname varchar(50), 
ageno int, 
street varchar(50), 
city varchar(50), 
state varchar(50), 
codeno int
)
language plpgsql    
as $$
begin
    UPDATE customers SET 
	first_name = fname,
	last_name = lname,
	age = ageno,
	street_address = street,
	city_address = city,
	state_address = state,
	postal_code = codeno
	WHERE id = idno RETURNING fname into fname;

    commit;
end;$$

