drop table member;

create table member(
	id	varchar2(20) primary key,
	name varchar2(20),
	pwd varchar2(20),
	age number(5),
	juso varchar2(50)
);

insert into member(id,name,pwd) values('111','홍길동','111');
insert into member values('222','이기동','222',18,'대구');
select * from member;