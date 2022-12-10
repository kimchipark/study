drop table memo;
create table memo
(
	no int auto_increment primary key comment '번호',
	title varchar(200) default '제목없음' comment '제목',
	note text comment '내용',
	wdate datetime default now() comment '날짜'
);

insert into memo(note)
values('내용');

insert into memo(title, note)
values('제목','내용');

insert into memo(title, note, wdate)
values('제목','내용', now());

insert into memo(title, note)
select title,note from memo;