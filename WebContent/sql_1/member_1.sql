CREATE TABLE member_1(

		id varchar2(15),
		password varchar2(10),
		name varchar2(15),
		addr varchar2(100),
		age number,
		gender varchar2(5),
		email varchar2(30),
		primary key(id)
);

-- desc (developer 나 cmd 가능) transaction (cmd만 가능) 은 안됨

select * from member_1;

drop table member_1 purge;

delete from member_1 where name = "";

--이름과 나이 사이 addr

ALTER TABLE member_1
ADD ADDR VARCHAR2(100);

INSERT INTO member_1
VALUES("K", "1234", "이니지", "경기", 22, "남자", "sssss");