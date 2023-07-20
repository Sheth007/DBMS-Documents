--ASSIGNMENT OF PL/SQL:::::::::::::::::::::
--print your name:::
BEGIN
	dbms_output.put_line('UDAY SHETH');
END;
/

--Arithmetic operation with user input:::
DECLARE
	--Take input from user
	a integer :=&a;
	b integer :=&b;
	c integer;
BEGIN
	c:=a+b;
	dbms_output.put_line('Addition is c:' || c);
	c:=a-b;
	dbms_output.put_line('Subtraction is c:' || c);
	c:=a*b;
	dbms_output.put_line('Multiplication is c:' || c);
	c:=a/b;
	dbms_output.put_line('Division is c:' || c);
END;
/

--swap values:::
DECLARE
	a integer :=&a;
	b integer :=&b;
	c integer;
BEGIN
	c := a;
	a := b;
	b := c;
	dbms_output.put_line('After swapping value :'||a);
	dbms_output.put_line('After swapping value :'||b);
END;
/

--even odd
DECLARE
	a integer(5):=&a;
BEGIN
	if mod(a,2)=0 then
		dbms_output.put_line('odd');
	else
		dbms_output.put_line('even');
	end if;
end;
/

--pyramid

DECLARE
	n number := 5;
	i number;
	j number;
BEGIN
	for i in 1..n
	loop
		for j in 1..i
		loop
			dbms_output.put('*');
		end loop;
		dbms_output.new_line;	
	end loop;
end;
/

--delete admin employees

BEGIN
	delete from Employee_Info where DEPARTMENT='Admin';
end;
/

--update salary who worked with BLACK

BEGIN
update EMPLOYEE_INFO set salary=salary+((salary*5)/100) where DEPARTMENT like (select DEPARTMENT from EMPLOYEE_INFO where EMP_NAME='BLACk');
END;
/

--cursor 

DECLARE
ename EMPLOYEE_INFO.EMP_NAME%type;
city EMPLOYEE_INFO.CITY%type;
eno EMPLOYEE_INFO.EMP_NO%type;
BEGIN
eno:=&eno;
select EMP_NAME into ename from EMPLOYEE_INFO where EMP_NO=eno;
select CITY into city from EMPLOYEE_INFO where EMP_NO=eno;
dbms_output.put_line(ename||'   '||city);
END;
/

--explict cursor

DECLARE
	cursor c1 is select * from DEPT;
BEGIN
	for i in c1
	loop
		dbms_output.put_line(i.DEPTNO||'   '||i.DNAME||'   '||i.LOCATION);
	end loop;
end;
/