CREATE TABLE UNIVERSITY
(
	UN_CODE VARCHAR2(20) PRIMARY KEY,
	U_NAME VARCHAR2(20),
	ESTD_YEAR INT,
	CITY VARCHAR(20)
);

DESC UNIVERSITY;

INSERT INTO UNIVERSITY VALUES ('UN101','ATMIYA UNIVERSITY',2018,'RAJKOT');
INSERT INTO UNIVERSITY VALUES ('UN102','ATMIYA UNIVERSITY',1967,'RAJKOT');
INSERT INTO UNIVERSITY VALUES ('UN103','GUJARAT UNIVERSITY',1949,'AHEMDABAD');
INSERT INTO UNIVERSITY VALUES ('UN104','GTU',2007,'AHEMDABAD');
INSERT INTO UNIVERSITY VALUES ('001','AU',2022,'RJKT');

CREATE TABLE COLLEGe
(
	C_CODE VARCHAR2(20),
	C_NAME VARCHAR2(20),
	CITY VARCHAR(20),
	UN_CODE VARCHAR2(20) REFERENCES UNIVERSITY(UN_CODE)
);

DESC COLLEGE;

INSERT INTO COLLEGE VALUES('C1001','GYANGANGA COLLEGE','RAJKOT','UN101');
INSERT INTO COLLEGE VALUES('C1002','M.N.VIRANI SCIENCE','RAJKOT','UN101');
INSERT INTO COLLEGE VALUES('C1003','MATRUMANDIR COLLEGE','RAJKOT','UN102');
INSERT INTO COLLEGE VALUES('C1004','DA-IICT','GANDHINAGAR','UN103');
INSERT INTO COLLEGE VALUES('C1005','A.R.BHATTCOMSCIENCE','UNA','UN103');
INSERT INTO COLLEGE VALUES('C1006','MARWADI COLLAGE','RAJKOT',NULL);