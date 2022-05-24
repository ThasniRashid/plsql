set serveroutput on
declare
	a number;
	b number;
	c number;
procedure findmin(x in number,y in number,z out number)is
begin
	a:=&a;
	b:=&b;
	if x<y
	then 
		z:=x;
	else
		z:=y;
	end if;
end;
begin
	findmin(a,b,c);
	dbms_output.put_line('minimum is: '||c);
end;
/

output
-------

Enter value for a: 25
old   7:        a:=&a;
new   7:        a:=25;
Enter value for b: 12
old   8:        b:=&b;
new   8:        b:=12;
minimum is: 12