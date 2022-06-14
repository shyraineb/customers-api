create or replace procedure deleteCustomer(
INOUT idno int
)
language plpgsql    
as $$
begin
    DELETE FROM customers
	WHERE id = idno RETURNING idno into idno;

    commit;
end;$$