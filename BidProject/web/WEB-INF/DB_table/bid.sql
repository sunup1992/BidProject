drop table user1 purge;
drop table sales purge;

create table user1(
id varchar2(20),
password varchar2(20),
username varchar2(20),
roadFullAddr varchar2(200),
phone varchar2(20)
pwquestion varchar2(100),
pwanswer varchar2(20));

select * from user1 where id='abcd' and password='1111'
insert into user1 values('admin', '1234', '�슦�썝�옱', '�꽌�슱�떆 媛뺣궓援� �끉�쁽�룞', '010-1577-1577');
SELECT * FROM USER1 WHERE ID = 'test' AND PASSWORD = '1'
select * from sales;
select * from user1;
delete user1;

insert into sales (cat1) values('test');

INSERT INTO PLAYER (PLAYER_ID, PLAYER_NAME, TEAM_ID, POSITION, HEIGHT, WEIGHT, BACK_NO)
VALUES ('2002007', ' 박지성', 'K07', 'MF' ,178, 73, 7);

출처: http://hyeonstorage.tistory.com/294 [개발이 하고 싶어요]

select * from tab;
SELECT PASSWORD, PWQUESTION, PWANSWER FROM USER1 WHERE ID = 'abc'
//-------------------------------------------

create table sales(
category varchar2(20),
name_p varchar2(20),
price number,
ref varchar2(1000),
code varchar2(20),
id varchar2(20),
term varchar2(20),
descrip varchar2(4000));