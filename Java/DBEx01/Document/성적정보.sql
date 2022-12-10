drop table jumsu;
drop table student;
create table student
(
	hakbun varchar(10) not null primary key comment '학번',
	name varchar(20) comment '이름',
	addr varchar(100) default '전주' comment '거주지'
);


alter table student drop addr;
alter table student add addr varchar(10);
alter table student modify addr varchar(100);

create table jumsu
(
	hakbun varchar(10),
	subject varchar(30),
	score int,
	foreign key(hakbun) references student(hakbun)
);

insert into student (hakbun,name) values ('001','김길동');
insert into student (hakbun,name) values ('002','성춘향');
insert into student (hakbun,name) values ('003','전우치');
insert into student (hakbun,name) values ('004','이순신');

insert into jumsu(hakbun,subject,score) values ('001','과학',90);
insert into jumsu(hakbun,subject,score) values ('001','수학',80);
insert into jumsu(hakbun,subject,score) values ('001','영어',70);

insert into jumsu(hakbun,subject,score) values ('002','과학',80);
insert into jumsu(hakbun,subject,score) values ('002','수학',60);
insert into jumsu(hakbun,subject,score) values ('002','영어',100);

insert into jumsu(hakbun,subject,score) values ('003','과학',70);
insert into jumsu(hakbun,subject,score) values ('003','수학',50);
insert into jumsu(hakbun,subject,score) values ('003','영어',80);
/* 테이블 붙이기 */
 /* inner join << 교집합,  학번이 같은것만 검색한다. */
select student.*, jumsu.*              
from student inner join jumsu
on student.hakbun = jumsu.hakbun;

select 
	student.hakbun, student.name,
	jumsu.subject, jumsu.score
from 
	student inner join jumsu
	on student.hakbun = jumsu.hakbun;

select 
	student.hakbun, student.name,
	jumsu.subject, jumsu.score
from 
	student left join jumsu
	on student.hakbun = jumsu.hakbun;

select a.*,b.*
from student a inner join jumsu b
on a.hakbun = b.hakbun;

select 
	a.hakbun, a.name, b.subject, b.score
from 
	student a inner join jumsu b
	on a.hakbun = b.hakbun
order by b.subject;



select 
	a.hakbun, a.name, 
	b.subject, b.score
from 
	student a inner join jumsu b
	on a.hakbun = b.hakbun
where b.subject = '과학';


select 
	a.hakbun, a.name, 
	b.subject, b.score
from 
	student a inner join jumsu b
	on a.hakbun = b.hakbun
where a.name in ('전우치','성춘향') and b.score >=80;


select 
	a.hakbun, 
	sum(b.score) as 합계, 
	avg(b.score) as 평균
from 
	student a inner join jumsu b
	on a.hakbun = b.hakbun
group by a.name
order by 합계;


select * from
(
	select 
		a.hakbun, 
		sum(b.score) as 합계, 
		avg(b.score) as 평균
	from 
		student a inner join jumsu b
		on a.hakbun = b.hakbun
	group by a.name
	order by 합계
) vtable;

