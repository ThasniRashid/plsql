set serveroutput on
create or replace trigger display_salary_changes
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

output
------

Trigger created.

Old salary : 55000
New salary : 60000
salary difference: 5000
Old salary : 60000
New salary : 65000
salary difference: 5000
Old salary : 46000
New salary : 51000
salary difference: 5000
Old salary : 45000
New salary : 50000
salary difference: 5000
Old salary : 52000
New salary : 57000
salary difference: 5000
5customer updated

PL/SQL procedure successfully completed.

	