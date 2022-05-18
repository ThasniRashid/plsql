set serveroutput on
declare
	n number;
	s number:=0;
	r number;
	len number;
	temp number;
begin
	n:=&n;
	temp:=n;
	len:=length(to_char(n));
	while n>0
	loop
		r:=mod(n,10);
		s:=s+power(r,len);
		n:=trunc(n/10);
	end loop;
	if temp=s
	then
		dbms_output.put_line(temp||' is an armstrong');
	else
		dbms_output.put_line(temp||' is not an armstrong');
	end if;
end;
/