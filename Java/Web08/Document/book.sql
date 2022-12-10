create database bookdb;
use bookdb;
create table book
(
	no int primary key auto_increment comment '도서번호',
	btitle varchar(200) comment '도서명',
	bpub varchar(100) comment '출판사',
	bauthor varchar(100) comment '저자',
	bprice int comment '가격',
	bdate datetime default now() comment '등록일',
	bnote text comment '서평'
	
);
