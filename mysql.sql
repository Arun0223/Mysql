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
show tables;
select * from data_typess;
create database university;
use university;
show tables;
create table students(id int not null auto_increment,name varchar(20) default 'XXXXX',dob date,pass enum('y','n'),primary key(id));
desc students;
insert into students values(1,'arun kumar','1999-05-10','y');
insert into students values(2,'sai teja','1997-05-10','y');
insert into students(id,name) values(3,'Harish s');
insert into students(id,dob) values(4,'1998-7-12');
select * from students;
alter table students add fathers_name varchar(50) after name;
alter table students add aa bit first;
desc students;
-- changing the characteristics of coloumn in table
alter table students change column fathers_name parent_name varchar(100); -- This one for changing the coloumn_name
desc students;
alter table students change column name name varchar(60);  -- This one for changing the data_type
-- Deleting the coloumn from table
alter table students drop column aa;
select * from students;
-- Deleting the table
-- For deleting the table we will use two keywords
-- 1)truncate
-- 2)Drop
truncate table students;
select * from students;
drop table students;
select * from students;
create table student1(id int,name varchar(50),age int);
desc student;
insert into student values(1,'Arun kumar',23),
(2,'sai teja',25),
(3,'Harish s',24);
select * from student;
select name student_name from student;
select age as a from student;
-- updating the particular data in a table in a database
select * from student;
-- if you got error in updating the values in a table use below command
SET SQL_SAFE_UPDATES = 0;
update student set age=24 where name='sai teja';
select * from student;
insert into student(id,name) values(4,'xxxx'),(5,'yyyy'),(6,'zzzz');
update student set age=22 where age is null;
select * from student;
-- deleting a particular data from table
delete from student where name ='zzzz';
delete from student where name in ('xxxx','yyyy');
select * from student;
desc student;
alter table student drop primary key;
desc student;
show tables;
desc student1;
drop table student1;
create table students(id int not null auto_increment,name varchar(50),dob date,primary key(id));
desc students;
alter table students drop primary key;
create table s(id int,name varchar(50),primary key(id));
desc s;
alter table s drop primary key;
desc s;
desc students;
alter table students change column id id int not null;
desc students;
alter table students drop primary key;
desc students;
alter table students add primary key(id);
desc students;
show tables;
create table student(id int not null,name varchar(50),email varchar(100),primary key(id));
desc student;
create table certificates(id int not null,academic_year enum('1','2','3','4'),sem set('1','2'));
desc certificates;
alter table certificates add primary key(id);
create table certificate_log(student_id int,certificate_id int,received_date date,foreign key(student_id) references student(id),foreign key(certificate_id) references certificates
(id));
show tables;
show databases;
use university;
show tables;
desc certificate_log;
insert into certificate_log values(1,1,'2022-05-10');
insert into student values(1,'arun kumar','arun@gmail.com'),
(2,'sai teja','sai@gmail.com'),
(3,'harish s','harish@gmail.com');
select * from student;
desc certificates;
insert into certificates values(1,1,1);
select * from certificates;
insert into certificates values(2,1,2),
(3,2,1),
(4,2,2),
(5,3,1),
(6,3,2),
(7,4,1),
(8,4,2);
select * from certificates;
insert into certificate_log values(2,4,'2022-05-10'),
(1,2,'2022-07-01');
select * from certificate_log;
insert into certificate_log values(5,5,'2021-12-10');
select * from certificate_log;
insert into certificate_log(received_date) values('2020-05-11');
select cvt.student_id from certificate_log cvt;










 












