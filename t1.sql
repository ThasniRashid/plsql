set serveroutput on
create or replace trigger disp_salary_changes
before delete or insert or update on customer
for each row
when(new.id>0)
declare
	sal_diff number;
begin
	sal_diff:= :new.salary - :old.salary;
	dbms_output.put_line('Old salary : '|| :old.salary);
	dbms_output.put_line('New salary : '|| :new.salary);
	dbms_output.put_line('salary difference: '||sal_diff);
end;
/