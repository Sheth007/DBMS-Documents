CREATE TABLE Employee_Info(
    Emp_No NUMBER(3) NOT NULL UNIQUE,
    Emp_Name varchar2(12) NOT NULL,
    City VARCHAR2(15),
    Designation varchar2(15) NOT NULL,
    Department VARCHAR2(15),
    Salary NUMBER(10),
    Date_of_join Date
 );

INSERT INTO Employee_Info values(101,'IVAN','Boston','Professor','Account',45000,'25-jul-2012');
INSERT INTO Employee_Info values(102,'PETER','Germany','progarammer','Account',18000,'01-jan-2015');
INSERT INTO Employee_Info values(103,'JONES','Boston','Admin','Admin',34000,'05-mar-2017');
INSERT INTO Employee_Info values(104,'KELVIN','New York','Admin','Admin',32000,'18-feb-2010');
INSERT INTO Employee_Info values(105,'BLAKE','Boston','Professor','Computer',45000,'22-sep-2013');
INSERT INTO Employee_Info values(106,'MORIS','New Jersey','Professor','Account',25000,'26-jul-2012');
INSERT INTO Employee_Info values(107,'JEVIAR','Boston','progarammer','Computer',19500,'25-feb-2021');
INSERT INTO Employee_Info values(108,'NEVIL','New Jersey','Professor','Computer',41000,'18-sep-2018');
INSERT INTO Employee_Info values(109,'RONALD','Germany','Admin','Admin',24000,'22-apr-2013');
INSERT INTO Employee_Info values(110,'KOLKI','New Jersey','progarammer','Computer','14000',SYSDATE);

SET LINESIZE 100;

//1.
DESC Employee_Info;

//2.
SELECT * 
FROM Employee_Info;

//3.
SELECT Emp_Name,Salary 
FROM Employee_Info;

//4.
SELECT * 
FROM Employee_Info 
WHERE City='Boston';

//5.
SELECT * 
FROM Employee_Info 
WHERE Department='Computer';

//6.
SELECT * 
FROM Employee_Info 
WHERE Salary<25000;

//7.
SELECT * 
FROM Employee_Info 
WHERE Department NOT LIKE 'Computer';

//8.
SELECT * 
FROM Employee_Info 
WHERE City='New Jersey';

//9.
SELECT DISTINCT Department 
FROM Employee_Info;

//10.
SELECT DISTINCT Designation 
FROM Employee_Info;

//11.
SELECT * 
FROM Employee_Info 
WHERE Emp_No=105;

//12.
SELECT Emp_Name,Salary 
FROM Employee_Info 
WHERE Salary BETWEEN 15000 AND 30000;

//13.
SELECT * 
FROM Employee_Info 
WHERE Designation='Professor' AND Salary>40000; 

//14.
SELECT * 
FROM Employee_Info 
WHERE Department='Admin' OR City='Germany';

//15.
SELECT Emp_Name,Salary,((0.05*Salary)+Salary) 
FROM Employee_Info;

//16.
SELECT Emp_Name,Salary,(0.08*Salary) 
FROM Employee_Info;

//17.
SELECT Emp_Name,(Salary-(0.12*Salary)) 
FROM Employee_Info;

//18.
SELECT * 
FROM Employee_Info 
ORDER BY Emp_Name;

//19.
SELECT * 
FROM Employee_Info 
ORDER BY Department;

//20.
SELECT * 
FROM Employee_Info 
ORDER BY Salary;

//21.
SELECT * 
FROM Employee_Info 
WHERE Emp_Name LIKE 'K%';

//22.
SELECT * 
FROM Employee_Info 
WHERE Emp_Name LIKE '%A%';

//23.
SELECT * 
FROM Employee_Info 
WHERE City IN ('Boston','New York');

//24.
SELECT * 
FROM Employee_Info 
WHERE Designation IN ('Professor','progarammer');

//25.
SELECT * 
FROM Employee_Info 
WHERE Salary BETWEEN 30000 AND 50000;

//26.
SELECT * 
FROM Employee_Info 
WHERE Date_of_join BETWEEN '1-JAN-2010' AND '31-DEC-2018';

//27.
SELECT * 
FROM Employee_Info 
WHERE Department='COMMERRCE';