set serveroutput on
declare
	a number;
	
procedure square1(x in out number)is 
begin
	x:=x*x;
end;
begin
	a:=&a;
	square1(a);
	dbms_output.put_line('Square of a number is '||a);
end;
/

output
-------

Enter value for a: 5
old   9:        a:=&a;
new   9:        a:=5;
Square of a number is 25

PL/SQL procedure successfully completed.