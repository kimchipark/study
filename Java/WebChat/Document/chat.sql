create database chatdb;
use chatdb;
create table chat
(
	cno int primary key auto_increment comment 'ä�ù�ȣ',
	cdate datetime default now() comment '�ۼ�����',
	cname varchar(100) comment '�ۼ��ڸ�',	
	cnote text comment 'ä�ó���'
);

insert into chat (cname,cnote)
value ('ȫ�浿','�ȳ��ϼ���??1'),
('ȫ�浿','�ȳ��ϼ���??2'),
('ȫ�浿','�ȳ��ϼ���??3');
