CREATE TABLE Employee_Info
(
    Emp_No NUMBER(3) NOT NULL UNIQUE,
    Emp_Name varchar(12) NOT NULL,
    City VARCHAR(15),
    Designation varchar(15) NOT NULL,
    Department VARCHAR(15),
    Salary NUMBER(10),
    Date_of_join Date
 );

INSERT INTO Employee_Info values(101,'IVAN','Boston','Professor','Account',45000,'25-jul-2012');
INSERT INTO Employee_Info values(102,'PETER','Germany','progarammer','Computer',18000,'01-jan-2015');
INSERT INTO Employee_Info values(103,'JONES','Boston','Admin','Admin',34000,'05-mar-2017');
INSERT INTO Employee_Info values(104,'KELVIN','New York','Admin','Admin',32000,'18-feb-2010');
INSERT INTO Employee_Info values(105,'BLAKE','Boston','Professor','Computer',45000,'22-sep-2013');
INSERT INTO Employee_Info values(106,'MORIS','New Jersey','Professor','Account',25000,'26-jul-2012');
INSERT INTO Employee_Info values(107,'JEVIAR','Boston','progarammer','Computer',19500,'25-feb-2021');
INSERT INTO Employee_Info values(108,'NEVIL','New Jersey','Professor','Computer',41000,'18-sep-2018');
INSERT INTO Employee_Info values(109,'RONALD','Germany','Admin','Admin',24000,'22-apr-2013');
INSERT INTO Employee_Info values(110,'KOLKI','New Jersey','progarammer','Computer','14000',SYSDATE);

DESC Employee_Info;
SELECT * FROM Employee_Info;
commit;

SET LINESIZE 150;

//1.
update Employee_Info
set Salary = (Salary * 15)/100
where Department = 'Computer';

//2.
delete from Employee_Info
where city='Germany';

//3.
Rollback;

//4.
update Employee_Info
set city = 'Chicago'
where city = 'New Jersey';

//5.
update Employee_Info
set Designation = 'Professor'
where Emp_No = 110;

//6.
Alter table Employee_Info
add emp_bd date;

update Employee_Info
set emp_bd = SYSDATE
where emp_bd is null;

//7.
update Employee_Info
SET Emp_Name = 'JESKI'
where Emp_No = '107';

//8.
SELECT (Salary - (Salary / 7))
from Employee_Info
where Emp_Name like '%R%';

//9.
ALTER table Employee_Info
drop column Date_of_join;

//10.
ALTER table Employee_Info
MODIFY Emp_Name varchar(20);

//11. 
delete from Employee_Info 
where Designation = 'progarammer';

//12.
ALTER table Employee_Info
drop column Designation;

//13.
ALTER table Employee_Info
rename to DUMMY;

//14.
delete from DUMMY;

//15.
DROP table DUMMY;