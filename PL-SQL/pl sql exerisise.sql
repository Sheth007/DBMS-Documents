SET SERVEROUTPUT ON;

//1.
BEGIN 
	dbms_output.put_line('HEllO');
END;
/

//2.
DECLARE
a integer := 10;
b integer := 20;
c integer;
BEGIN
c := a + b;
dbms_output.put_line('Value of c: ' || c);
END;
/

//3.
DECLARE
-- Taking value from user
a integer := &a;
b integer := &b;
c integer;
BEGIN
c := a + b;
dbms_output.put_line('Value of c: ' || c);
END;
/