drop table jumsu;
drop table student;
create table student
(
	hakbun varchar(10) not null primary key comment '�й�',
	name varchar(20) comment '�̸�',
	addr varchar(100) default '����' comment '������'
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

insert into student (hakbun,name) values ('001','��浿');
insert into student (hakbun,name) values ('002','������');
insert into student (hakbun,name) values ('003','����ġ');
insert into student (hakbun,name) values ('004','�̼���');

insert into jumsu(hakbun,subject,score) values ('001','����',90);
insert into jumsu(hakbun,subject,score) values ('001','����',80);
insert into jumsu(hakbun,subject,score) values ('001','����',70);

insert into jumsu(hakbun,subject,score) values ('002','����',80);
insert into jumsu(hakbun,subject,score) values ('002','����',60);
insert into jumsu(hakbun,subject,score) values ('002','����',100);

insert into jumsu(hakbun,subject,score) values ('003','����',70);
insert into jumsu(hakbun,subject,score) values ('003','����',50);
insert into jumsu(hakbun,subject,score) values ('003','����',80);
/* ���̺� ���̱� */
 /* inner join << ������,  �й��� �����͸� �˻��Ѵ�. */
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
where b.subject = '����';


select 
	a.hakbun, a.name, 
	b.subject, b.score
from 
	student a inner join jumsu b
	on a.hakbun = b.hakbun
where a.name in ('����ġ','������') and b.score >=80;


select 
	a.hakbun, 
	sum(b.score) as �հ�, 
	avg(b.score) as ���
from 
	student a inner join jumsu b
	on a.hakbun = b.hakbun
group by a.name
order by �հ�;


select * from
(
	select 
		a.hakbun, 
		sum(b.score) as �հ�, 
		avg(b.score) as ���
	from 
		student a inner join jumsu b
		on a.hakbun = b.hakbun
	group by a.name
	order by �հ�
) vtable;

