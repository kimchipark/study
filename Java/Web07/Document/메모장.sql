create database memodb;
use memodb;
drop table memo;
create table memo
(
	no int primary key auto_increment comment '��ȣ',
	title varchar(200) comment '����',
	wdate datetime default now() comment '��¥',
	hit int default 0 comment '��ȸ��',
	note text comment '����'
);

insert into memo (title,note)
values ('ù��° �����Դϴ�','ù ��° �޸��Դϴ�.');