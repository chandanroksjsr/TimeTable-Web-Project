--ȸ�� ����(ȸ��id,pw,�̸�,�б�,�ҼӴ���,����,�й�,�г�)--
drop table user_info;
create table user_info(
	id varchar2(20) primary key,
	password varchar2(20) not null,
	name varchar2(20) not null,
	university varchar2(50) not null,
	college varchar2(50) not null,
	major varchar2(50) not null,
	num varchar2(20) not null,
	grade number(10) not null
);

--ȸ�� �ð�ǥ(ȸ��id,�б�,��õ�ð�ǥ���� �� Ȯ��(0),���̺�����,�м���ȣ)--
drop table user_tt;
create table user_tt(
	id varchar2(20) not null,
	semester varchar2(30) not null,
	seq number(10) not null,
	sep varchar2(20) not null,
	num varchar2(50) not null,
	subject varchar2(100) not null,
	credit number(4,2) not null
);

--ȸ�� ����(ȸ��id,�б�,�������,����,����)--
drop table user_g;
create table user_g(
	id varchar2(20) not null,
	semester varchar2(30),
	subject varchar2(100),
	credit number(4,2),
	grade varchar2(10)
);

--����(����id,�г�,�̼�����,�м���ȣ,�������,�а���,����,�ð�,�й�,��米��,���ǽð�,���ǽ�,���)--
drop table gyopil01;
drop sequence seq_gpid;
create table gyopil01(
	gpid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	idnum varchar2(10),
	subject varchar2(100),
	major varchar2(50),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	note varchar2(100)
);
CREATE SEQUENCE seq_gpid START WITH 1 INCREMENT BY 1 ;

drop table gyopil02;
drop sequence seq_gpid;
create table gyopil02(
	gpid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	idnum varchar2(10),
	subject varchar2(100),
	major varchar2(50),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	note varchar2(100)
);
CREATE SEQUENCE seq_gpid START WITH 1 INCREMENT BY 1 ;


--����(����id,�г�,�̼�����,�м���ȣ,�������,����,�ð�,�й�,��米��,���ǽð�,���ǽ�,��������,���)--
drop table gyosun01;
drop sequence seq_gsid;
create table gyosun01(
	gsid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	idnum varchar2(10),
	subject varchar2(100),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	divisionG varchar2(50),
	note varchar2(100)
);
CREATE SEQUENCE seq_gsid START WITH 1 INCREMENT BY 1 ;

drop table gyosun02;
drop sequence seq_gsid;
create table gyosun02(
	gsid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	idnum varchar2(10),
	subject varchar2(100),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	divisionG varchar2(50),
	note varchar2(100)
);
CREATE SEQUENCE seq_gsid START WITH 1 INCREMENT BY 1 ;

--�ϼ�(����id,�г�,�̼�����,�м���ȣ,�������,����,�ð�,�й�,��米��,���ǽð�,���ǽ�,���)--
drop table ilsun01;
drop sequence seq_ilid;
create table ilsun01(
	ilid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	idnum varchar2(10),
	subject varchar2(100),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	note varchar2(100)
);
CREATE SEQUENCE seq_ilid START WITH 1 INCREMENT BY 1 ;

drop table ilsun02;
drop sequence seq_ilid;
create table ilsun02(
	ilid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	idnum varchar2(10),
	subject varchar2(100),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	note varchar2(100)
);
CREATE SEQUENCE seq_ilid START WITH 1 INCREMENT BY 1 ;

--�ι���ȸ���д���(����id,�г�,�̼�����,�ҼӴ���,�м���ȣ,�а���,�������,����,�ð�,�й�,��米��,���ǽð�,���ǽ�,���)--
drop table hss01;
drop sequence seq_hid;
create table hss01(
	hid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	college varchar2(50),
	idnum varchar2(10),
	major varchar2(50),
	subject varchar2(100),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	note varchar2(100)
);

CREATE SEQUENCE seq_hid START WITH 1 INCREMENT BY 1 ;

drop table hss02;
drop sequence seq_hid;
create table hss02(
	hid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	college varchar2(50),
	idnum varchar2(10),
	major varchar2(50),
	subject varchar2(100),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	note varchar2(100)
);
CREATE SEQUENCE seq_hid START WITH 1 INCREMENT BY 1 ;

--�������(����id,�г�,�̼�����,�ҼӴ���,�м���ȣ,�а���,�������,����,�ð�,�й�,��米��,���ǽð�,���ǽ�,���)--
drop table tc01;
drop sequence seq_tid;
create table tc01(
	tid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	college varchar2(50),
	idnum varchar2(10),
	major varchar2(50),
	subject varchar2(100),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	note varchar2(100)
);
CREATE SEQUENCE seq_tid START WITH 1 INCREMENT BY 1 ;

drop table tc02;
drop sequence seq_tid;
create table tc02(
	tid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	college varchar2(50),
	idnum varchar2(10),
	major varchar2(50),
	subject varchar2(100),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	note varchar2(100)
);
CREATE SEQUENCE seq_tid START WITH 1 INCREMENT BY 1 ;

--�濵����(����id,�г�,�̼�����,�ҼӴ���,�м���ȣ,�а���,�������,����,�ð�,�й�,��米��,���ǽð�,���ǽ�,���)--
drop table ac01;
drop sequence seq_aid;
create table ac01(
	aid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	college varchar2(50),
	idnum varchar2(10),
	major varchar2(50),
	subject varchar2(100),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	note varchar2(100)
);
CREATE SEQUENCE seq_aid START WITH 1 INCREMENT BY 1 ;

drop table ac02;
drop sequence seq_aid;
create table ac02(
	aid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	college varchar2(50),
	idnum varchar2(10),
	major varchar2(50),
	subject varchar2(100),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	note varchar2(100)
);
CREATE SEQUENCE seq_aid START WITH 1 INCREMENT BY 1 ;

--������ȭ�������(����id,�г�,�̼�����,�ҼӴ���,�м���ȣ,�а���,�������,����,�ð�,�й�,��米��,���ǽð�,���ǽ�,���)--
drop table artc01;
drop sequence seq_arid;
create table artc01(
	arid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	college varchar2(50),
	idnum varchar2(10),
	major varchar2(50),
	subject varchar2(100),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	note varchar2(100)
);
CREATE SEQUENCE seq_arid START WITH 1 INCREMENT BY 1 ;

drop table artc02;
drop sequence seq_arid;
create table artc02(
	arid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	college varchar2(50),
	idnum varchar2(10),
	major varchar2(50),
	subject varchar2(100),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	note varchar2(100)
);
CREATE SEQUENCE seq_arid START WITH 1 INCREMENT BY 1 ;

--�ڿ����д���(����id,�г�,�̼�����,�ҼӴ���,�м���ȣ,�а���,�������,����,�ð�,�й�,��米��,���ǽð�,���ǽ�,���)--
drop table ns01;
drop sequence seq_nid;
create table ns01(
	nid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	college varchar2(50),
	idnum varchar2(10),
	subject varchar2(100),
	major varchar2(50),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	note varchar2(100)
);
CREATE SEQUENCE seq_nid START WITH 1 INCREMENT BY 1 ;

drop table ns02;
drop sequence seq_nid;
create table ns02(
	nid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	college varchar2(50),
	idnum varchar2(10),
	subject varchar2(100),
	major varchar2(50),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	note varchar2(100)
);
CREATE SEQUENCE seq_nid START WITH 1 INCREMENT BY 1 ;


--�̷����հ��д���(����id,�г�,�̼�����,�ҼӴ���,�м���ȣ,�а���,�������,����,�ð�,�й�,��米��,���ǽð�,���ǽ�,���)--
drop table ict01;
drop sequence seq_ictid;
create table ict01(
	ictid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	college varchar2(50),
	idnum varchar2(10),
	major varchar2(50),
	subject varchar2(100),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	note varchar2(100)
);
CREATE SEQUENCE seq_ictid START WITH 1 INCREMENT BY 1 ;

drop table ict02;
drop sequence seq_ictid;
create table ict02(
	ictid number(10) primary key,
	grade varchar2(10),
	division varchar2(10),
	college varchar2(50),
	idnum varchar2(10),
	major varchar2(50),
	subject varchar2(100),
	credit number(4,2),
	hours number(4,2),
	class number(10),
	professor varchar2(60),
	lectime varchar2(30),
	classroom varchar2(20),
	note varchar2(100)
);
CREATE SEQUENCE seq_ictid START WITH 1 INCREMENT BY 1 ;

--�ð�ǥ()--
drop table t_table;
create table t_table(
	id varchar2(20),
	sid varchar2(10),
	identity varchar2(10),
	semester varchar2(10)
	
);
