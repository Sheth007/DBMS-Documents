CREATE TABLE Account
(
	ac_no int primary key,
	ac_name varchar2(20),
	act_type varchar2(20) check (act_type in ('S','C'))
);

CREATE TABLE Transaction
(
	ac_no int references Account(ac_no),
	trans_date date,
	trans_type varchar2(20) check (trans_type in ('D','W')),
	trans_amount int check (trans_amount>0),
	balance int
);

DESC TABLE Account;
DESC TABLE Transaction;