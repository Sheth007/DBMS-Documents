CREATE TABLE Programmer 
(
	Pid int Primary key,
	Pname varchar(20),
	DOB date default '01-JUN-1998',
	Email varchar2(20) unique check(Email like ('%@%.%')),
	Mobile int unique check(Mobile like ('__________')),
	DOJ date,
	Sex varchar2(20) check (Sex in ('M','F')),
	Proficiency varchar2(20) check (Proficiency in ('Android','Java','Oracle')), 
	Sal int default 5000 check (Sal>3000)
);

CREATE TABLE Software
(
	Sid int Primary key, 
	Pid int References Programmer(Pid), 
	title varchar2(20), 
	dev_in varchar2(20), 
	scost int check (scost>0), 
	dcost int check (dcost>0),
	sold int
);

CREATE TABLE Studies
(
	CourseID int Primary key, 
	CourseName varchar2(20), 
	SPlace varchar2(20), 
	ccost int check (ccost>0), 
	Pid int
);

DESC TABLE Programmer;
DESC TABLE Software;
DESC TABLE Studies;