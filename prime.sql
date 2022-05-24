set serveroutput on
declare
	i number;
	j number;
	n number;
	result boolean;
	rem number;
function prime(x in number)
return boolean
is 	
	flag boolean;
begin
	for i in 2..x/2 loop
		rem:=mod(x,i);
		if rem=0
		then
			flag:=false;
			return flag;
		end if;
	end loop;
	flag:=true;
	return flag;
end;
begin
	n:=&n;
	result:=prime(n);
	if result
	then
		dbms_output.put_line('prime number');
	else
		dbms_output.put_line('Not prime');
	end if;
end;
/

output
------

Enter value for n: 5
old  24:        n:=&n;
new  24:        n:=5;
prime number

PL/SQL procedure successfully completed.
