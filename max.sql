set serveroutput on
declare 	
	a number;
	b number;
	c number;
function findmax(x in number,y in number)
return number 
is
	z number;
begin
	if x>y
	then
		z:=x;
	else
		z:=y;
	end if;
	return z;
end;
begin
	a:=&a;
	b:=&b;
	c:=findmax(a,b);
	dbms_output.put_line('maximum is '||c);
end;
/

output
-------

Enter value for a: 25
old  19:        a:=&a;
new  19:        a:=25;
Enter value for b: 34
old  20:        b:=&b;
new  20:        b:=34;
maximum is 34

PL/SQL procedure successfully completed.	
	