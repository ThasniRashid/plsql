set serveroutput on;
declare
eid customer.id%type;
ename customer.name%type;
esal customer.salary%type;
cursor c_customer is
	select id,name,salary from customer;
begin
	open c_customer;
	loop
	fetch c_customer into eid,ename,esal;
	exit when c_customer%notfound;
	dbms_output.put_line(eid||' '||ename||' '||esal);
	end loop;
	close c_customer;
end;
/