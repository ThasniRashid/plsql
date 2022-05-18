set serveroutput on
declare
	n number;
	temp number;
	rev number:=0;
begin
	n:=&n;
	temp:=n;
	while n>0
	loop
	rev:=(rev*10)+mod(n,10);
	n:=trunc(n/10);
	end loop;
	dbms_output.put_line('Reverse of '||temp||' is'||rev);
end;
/
