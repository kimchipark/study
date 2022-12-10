drop table memo;
create table memo
(
	no int auto_increment primary key comment '��ȣ',
	title varchar(200) default '�������' comment '����',
	note text comment '����',
	wdate datetime default now() comment '��¥'
);

insert into memo(note)
values('����');

insert into memo(title, note)
values('����','����');

insert into memo(title, note, wdate)
values('����','����', now());

insert into memo(title, note)
select title,note from memo;