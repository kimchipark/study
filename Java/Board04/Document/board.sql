drop database boarddb;
create database boarddb;
use boarddb;

create table user
(
	uno int primary key auto_increment comment '회원번호',
	uid varchar(100) comment '아이디',
	upw varchar(100) comment '비밀번호',
	uname varchar(50) comment '이름',
	ugender varchar(2) comment '성별',
	uhobby varchar(4) comment '취미',
	uretire varchar(2) default 'N' comment '탈퇴여부',
	ujoindate datetime default now() comment '가입일자',
	ucode varchar(20) comment '인증코드'
);

create table fav
(
	uno int comment '회원번호',
	fkind varchar(4) comment '분야코드',
	fname varchar(50)  comment '분야명',
	foreign key (uno) references user(uno)
);

create table board
(
	bno int primary key auto_increment comment '게시물번호',
	uno int comment '회원번호',
	btitle varchar(250) comment '제목',
	bkind varchar(2) comment '구분',
	bnote text comment '내용',
	bwdate datetime default now() comment '작성일자',
	bhit int default 0 comment '조회수',
	foreign key (uno) references user(uno)
);

create table attach
(
	ano int primary key auto_increment comment '첨부번호',
	bno int comment '게시물번호',
	pname varchar(255) comment '물리파일명',
	fname varchar(255) comment '논리파일명',
	foreign key (bno) references board(bno)
);

create table reply
(
	reno int primary key auto_increment comment '댓글번호',
	bno int comment '게시물번호',
	uno int comment '댓글작성회원번호',	
	rnote text comment '댓글내용',
	rwdate datetime default now() comment '작성일자',
	foreign key (bno) references board(bno),
	foreign key (uno) references user(uno)	
);
