show databases;
use practice;
show tables;
create table seven(a set('a','b','c'));
desc seven;
insert into seven values();
select * from seven;
insert into seven values('a');
create table data_string(a char,b varchar(20),c binary,d varbinary(20),e tinyblob,f tinytext,g mediumblob,h mediumtext,i blob,j text,k longblob,l
longtext,m enum('a','b','c'),n set('d','e','f'));
desc data_string;
insert into data_string values('a','arun kumar','a','arun kumar','arun kumar','arun kumar','arun kumar','arun kumar','arun kumar','arun kumar','arun kumar','arun kumar','a','d');
select * from data_string;
show tables;
create table eight(a bit);
desc eight;
insert into eight values(1);
insert into eight values(0);
select * from eight;
create table nine (a int);
desc nine;
insert into nine values(100),
(101),
(102),
(103),
(104),
(105);
select * from nine;
create table ten(a int,b tinyint,c smallint,d mediumint,e bigint);
insert into ten values(1,100,200,10000,1000000),
(77,88,44,55,33);
select * from ten;
create table eleven(a float(10,2),b double(10,4),c decimal(10,5));
desc eleven;
insert into eleven values(10.02,66.78,44.99);
select * from eleven;
insert into eleven values(10.02,66.78,94.99),
(10.02,86.798,44.99),
(100.02,86.798,44.99);
select * from eleven;
create table tweleve(a date);
desc tweleve;
insert into tweleve values('1999-05-10');
select * from tweleve;
create table thirteen(a datetime);
insert into thirteen values('1999-05-10 11:05:55');
select * from thirteen;
create table fourteen (a time);
insert into fourteen values('12:20:20');
select * from fourteen;
create table fifteen (a timestamp);
insert into fifteen values('19990510110544');
select * from fifteen;
insert into fifteen values('19990510110422');
select * from fifteen;
create table sixteen (a year);
insert into sixteen values('1999');
select * from sixteen;
create table date_time(a date,b datetime,c time,d timestamp,e year);
insert into date_time values('1999-05-10','1999-05-10 12:25:50','12:25:50','19990510121543',1999);
select * from date_time;
show tables;
create table data_typess(a bit,b int,c tinyint,d smallint,e mediumint,f bigint,g double(10,1),h float(10,2),i decimal(10,2),j char,k varchar(20),
l binary,m tinyblob,n tinytext,o mediumblob,p mediumtext,q text,r blob,s longblob,t longtext,u enum('a','b','c'),v set('d','e','f'),w date,
x datetime,y time,z timestamp,aa year);
show tables;
desc data_types1;
insert into data_typess values(1,10,100,200,300,32000,10.1,10.02,10.02,'a','arun kumar','a','arun kumar','arun kumar muduthanapelli',
'arun','kumar','aaaa','aaaa','ooooo','ooooooo','a','e','1999-05-10','1999-05-10 11:05:20','11:05:20','19990510110520',1999);
select * from data_typess;


create table ff(a float(10,1));
select * from f;
insert into ff values(1.1);
select * from ff;

create table num_datatypes(a bit,b tinyint,c mediumint,d int,e bigint,f float(10,2),g double(10,2),h decimal(10,2));
desc num_datatypes;
insert into num_datatypes values(1,100,200,10,10000,10.02,10.01,10.10);
select * from num_datatypes;
create table text_datatypes(a char,b varchar(20),c binary,d varbinary(20),e tinytext,f tinyblob,g mediumtext,h mediumblob,i text,j blob,
k longblob,l longtext,m enum('a','b','c'),n set('d','e','f'));
desc text_datatypes;
insert into text_datatypes values('a','arun kumar','a','arun','arun kumar','muduthanapeli','arun kumar muduthanapelli','muduthanapelli kumar',
'kumar','aaaaa','zzzzz','nnnn','a','d');
select * from text_datatypes;
create table date_datatypes(a date,b datetime,c time,d timestamp,e year);
insert into date_datatypes values('1999-05-10','1999-05-10 22:02:20','22:02:20','1999-05-10 22:02:00',1999);
select * from date_datatypes;





