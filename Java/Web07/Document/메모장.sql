create database memodb;
use memodb;
drop table memo;
create table memo
(
	no int primary key auto_increment comment '번호',
	title varchar(200) comment '제목',
	wdate datetime default now() comment '날짜',
	hit int default 0 comment '조회수',
	note text comment '내용'
);

insert into memo (title,note)
values ('첫번째 제목입니다','첫 번째 메모입니다.');