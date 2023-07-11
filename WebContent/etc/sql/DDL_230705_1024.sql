-- jsp 교재  p365참고
-- 데이터베이스 생성
-- 문법>create database 데이터베이스명 default character set utf-8

-- board라는 이름의 데이터베이스 생성
create database board default character set utf8;
-- 데이터베이스 조회
show databases;

drop database db명;

-- 유저생성 및 권한부여
/*create user 'jspexam'@'%' identified by 'jsppw';
grant 권한 1n,..,권한 n on db명.대상 to 'jspexam'@'%';

/*문법>
create table 테이블명(
컬럼명 데이터타입(크기) 제약조건 city
컬럼명 데이터타입(크기) not null auto_increment,
컬럼명 데이터타입(크기) not null default '',
컬럼명 데이터타입(크기) default 0,
Primary key (컬럼명),
constraint 제약조건명 foreign key(컬럼명) references 테이블명(컬럼명)

-- 참조되는 부모레코드가 삭제되면 참조하는 자식 record 삭제
CONSTRAINT 제약조건명 foreign key(자식테이블의 컬럼명)
				references 부모테이블명(컬럼명)
                on delete cascade
)engine=innoDb default charset=utf8;*/
-- 테이블변경(fk제약 조건추가)
-- 참조되는 부모레코드가 삭제되면 참조하는 자식record 삭제
alter table 테이블명
add CONSTRAINT 제약조건명 foreign key(자식테이블의 컬럼명)
				references 부모테이블명(컬럼명)
                on delete cascade;
create user 'jspexam'@'localhost' identified by 'jsppw';
grant all privileges on board.* TO 'jspexam'@'localhost'; 

-- 호스트가 %인 경우, 모든 호스트에서 jspexam으로 접근 
create user 'jspexam'@'%' identified by 'jsppw';
grant all privileges on board.* TO 'jspexam'@'%';

use board;

-- p591
-- 회원테이블삭제
drop table member;


-- p369member
-- 회원테이블 생성
create table if not exists member(
no int auto_increment not null primary key,
memberid varchar(50) not null unique,
password varchar(20) not null,
name varchar(50) not null,
regdate datetime not null)
engine=InnoDB default charset=utf8;

/*입력
insert into 테이블명
values(~~)
*/
/*수정
update 테이블명
set 컬럼명=변경값
where 컬럼명=변경전값
*/

/*삭제
delete 테이블명
where 컬럼명=해당값;
*/
-- 관리자
insert into member(memberid,password,name,regdate)
values('adminid','1234','관리자',now());

select now();
-- 일반 회원
insert into member(memberid,password,name,regdate)
values('cjswoghks','1234','천재환','2023-07-01 00:00:00'),
('woghkscjs','1234','재환천','2023-07-02 00:00:00'),
('ghkscjswo','1234','환천재','2023-07-03 00:00:00'),
('ghkswocjs','1234','환재천','2023-07-04 00:00:00');


select * from member;


update member
set memberid='천재환', name='천재' ,email='cjswo@네이버.컴'
where memberid='ghks';

select no,memberid,password,name,email
from member
order by no desc limit 0,3;

select no,memberid,password,name,email
from member
where memberid='adminid';