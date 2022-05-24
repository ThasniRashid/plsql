set serveroutput on
declare
	a number;
	b number;
	temp number;
procedure swapping(x in out number,y in out number)is
begin
	
	temp:=x;
	x:=y;
	y:=temp;
end;
begin
	a:=&a;
	b:=&b;
	swapping(a,b);
	dbms_output.put_line('after swapping '||a||' and '||b);
end;
/

output
-------

Enter value for a: 12
old  13:        a:=&a;
new  13:        a:=12;
Enter value for b: 25
old  14:        b:=&b;
new  14:        b:=25;
after swapping 25 and 12

PL/SQL procedure successfully completed.