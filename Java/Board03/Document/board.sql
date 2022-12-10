drop database boarddb;
create database boarddb;
use boarddb;

create table user
(
	uno int auto_increment primary key comment 'ȸ����ȣ',
	uid varchar(100) comment '���̵�',
	upw varchar(100) comment '��й�ȣ',
	uname varchar(50) comment '�̸�',
	ugender varchar(2) comment '����',
	uhobby varchar(4) comment '���',
	uretire varchar(2) default 'N' comment 'Ż�𿩺�',
	ujoindate datetime default now() comment '��������'
);

create table fav
(
	uno int  comment 'ȸ����ȣ',
	fkind varchar(4) comment '�о��ڵ�',
	fname varchar(50) comment '�о߸�',
	foreign key(uno) references user(uno)
);



create table board
(
	bno int auto_increment primary key comment '�Խù���ȣ',
	uno int  comment 'ȸ����ȣ',
	btitle varchar(250) comment '����',
	bkind varchar(2) comment '����',
	bnote text comment '����',
	bwdate datetime default now() comment '�ۼ���',
	bhit int default 0 comment '��ȸ��',
	foreign key (uno) references user(uno)
);

create table attach
(
	ano int auto_increment primary key comment '÷�ι�ȣ',
	bno int comment '�Խù���ȣ',
	pname varchar(255) comment '�������ϸ�',
	fname varchar(255) comment '�������ϸ�',
	foreign key(bno) references board(bno)
);

create table reply
(
	reno int auto_increment primary key comment '��۹�ȣ',
	bno int  comment '�Խù���ȣ',
	uno int  comment 'ȸ����ȣ',
	rnote text comment '��۳���',
	rwdate datetime default now() comment '�ۼ���',
	foreign key(bno) references board(bno),
	foreign key(uno) references user(uno)
);
