create database bookdb;
use bookdb;
create table book
(
	no int primary key auto_increment comment '������ȣ',
	btitle varchar(200) comment '������',
	bpub varchar(100) comment '���ǻ�',
	bauthor varchar(100) comment '����',
	bprice int comment '����',
	bdate datetime default now() comment '�����',
	bnote text comment '����'
	
);
