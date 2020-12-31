SELECT * FROM EMP;

create table student (
	id  varchar2(20)  NOT NULL ,
	passwd varchar2(20) NOT NULL,
	name varchar2(20) not null,
	year number(4) null,
	snum varchar2(10) null,
	depart varchar2(30) null,
	mobile1 char(3) null,
	mobile2 varchar2(15) null,
	address	varchar2(65) null,
	email varchar2(30) null,
	primary key (id)
);

drop table student purge;



select * from student;

-- 원래는 세미콜론 붙여야됨
-- 단일로 실행할땐 세미콜론을 안붙여도 실행됨
-- 그래서 selectdb.jsp보면 sql에 데이터 넣을때 ;안붙여도 실행된 이유
-- 단, 다중으론 세미콜론 필수

-- 실행하고 싶은 줄만 드래그 해서 alt + x 하면 실행됨 

insert into student (id, passwd, name, year, snum, depart, mobile1, mobile2, address, email) 
values ('javajsp', 'java8394', '고유탁', 2010, '1077818', '컴퓨터공학과', '011', '7649-9875', '서울시', 'java2@gmail.com');

insert into student (id, passwd, name, year, snum, depart, mobile1, mobile2, address, email) 
values ('gonji', 'young', '김기우', 2009, '2065787', '컴퓨터공학과', '016', '2975-9854', '인천시', 'gong@hotmail.com');

insert into student (id, passwd, name, year, snum, depart, mobile1, mobile2, address, email) 
values ('water', 'javayoung', '김남혁', 2010, '1176432', '인터넷비즈니스과', '011', '5531-6677', '서울시', 'singer@gmail.com');

insert into student (id, passwd, name, year, snum, depart, mobile1, mobile2, address, email) 
values ('novel', 'elephant', '김민준', 2011, '2056485', '기술경영과', '016', '3487-9919', '부산시', 'novel@hanmail.com');

insert into student (id, passwd, name, year, snum, depart, mobile1, mobile2, address, email) 
values ('korea', '9943inner', '김봉규', 2010, '1987372', '컴퓨터공학과', '017', '2670-4593', '천안시', 'wing@gmail.com');

insert into student
values('vonmen', 'javalani', '이지윤', 2011, '19961111', '정보통신공학과', '010', '2000-3247', '경기도', 'vonmen12@naver.com');

insert into student
values('com', 'java', 'jo', 2013, '15101212', '경영학과', '000', '0000-0000', '조선', 'window@x.xx');

alter table student
add sex varchar2(20);

update STUDENT set sex='여자' where substr(snum, 1, 1) = 2;
update STUDENT set sex='남자' where substr(snum, 1, 1) = 1;

delete from student where sex='남자'

alter table student
drop column sex;


CREATE TABLE STUDENT_1( NUM NUMBER, NAME VARCHAR2(30));

SELECT * FROM STUDENT_1;

SELECT * FROM STUDENT_1 ORDER BY NUM DESC;

DELETE FROM STUDENT_1;
