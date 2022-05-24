set serveroutput on
create or replace trigger display_salary_changes
before delete or insert or update on customer
declare
	total_rows number(2);
begin
	update customer
	set salary=salary+5000;
	if sql%notfound then
		dbms_output.put_line('no customers updates');
	elsif sql%found then
		total_rows:=sql%rowcount;
		dbms_output.put_line(total_rows||'customer updated');
	end if;
end;
/