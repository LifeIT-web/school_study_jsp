create table board_1( id number(10)
					, name varchar2(20),
						passwd varchar2(20),
						title varchar2(100),
						email varchar2(30),
						regdate date,
						content varchar2(3000));
						
create sequence board_1_seq
	start with 1
	increment by 1
	minvalue 1
	maxvalue 10000
	cycle
	
select * from board_1;

ALTER TABLE BOARD_1
ADD ADDR VARCHAR2(100);



