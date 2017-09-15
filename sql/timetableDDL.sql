--회원 정보(회원id,pw,이름,학교,소속대학,전공,학번,학년)--
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

--회원 시간표(회원id,학기,추천시간표구분 및 확정(0),테이블구분자,학수번호)--
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

--회원 성적(회원id,학기,교과목명,학점,성적)--
drop table user_g;
create table user_g(
	id varchar2(20) not null,
	semester varchar2(30),
	subject varchar2(100),
	credit number(4,2),
	grade varchar2(10)
);

--교필(과목id,학년,이수구분,학수번호,교과목명,학과명,학점,시간,분반,담당교수,강의시간,강의실,비고)--
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


--교선(과목id,학년,이수구분,학수번호,교과목명,학점,시간,분반,담당교수,강의시간,강의실,영역구분,비고)--
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

--일선(과목id,학년,이수구분,학수번호,교과목명,학점,시간,분반,담당교수,강의시간,강의실,비고)--
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

--인문사회과학대학(과목id,학년,이수구분,소속대학,학수번호,학과명,교과목명,학점,시간,분반,담당교수,강의시간,강의실,비고)--
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

--사범대학(과목id,학년,이수구분,소속대학,학수번호,학과명,교과목명,학점,시간,분반,담당교수,강의시간,강의실,비고)--
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

--경영대학(과목id,학년,이수구분,소속대학,학수번호,학과명,교과목명,학점,시간,분반,담당교수,강의시간,강의실,비고)--
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

--예술문화산업대학(과목id,학년,이수구분,소속대학,학수번호,학과명,교과목명,학점,시간,분반,담당교수,강의시간,강의실,비고)--
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

--자연과학대학(과목id,학년,이수구분,소속대학,학수번호,학과명,교과목명,학점,시간,분반,담당교수,강의시간,강의실,비고)--
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


--미래융합공학대학(과목id,학년,이수구분,소속대학,학수번호,학과명,교과목명,학점,시간,분반,담당교수,강의시간,강의실,비고)--
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

--시간표()--
drop table t_table;
create table t_table(
	id varchar2(20),
	sid varchar2(10),
	identity varchar2(10),
	semester varchar2(10)
	
);
