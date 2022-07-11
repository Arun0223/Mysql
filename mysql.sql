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
select * from certificate_log;
drop table certificate_log;
show tables;
desc certificates;
create table certificate_log(student_id int,certificate_id int,recieved_date date,foreign key(student_id) references student(id) on delete cascade,foreign key(certificate_id)
references certificates(id) on delete cascade);
desc certificate_log;
insert into certificate_log values(1,2,'2022-05-10');
select * from certificate_log;
insert into certificate_log values(10,20,'2022-05-10');
insert into certificate_log(recieved_date) values('2022-07-01');
insert into certificate_log values(3,2,'2022-05-10');
delete from student where id=1;
select * from certificate_log;
delete from student where id=3;
-- not null,unique,check
show tables;
drop table student;
drop table certificate_log;
drop table certificates;
create table student(id int auto_increment not null,name varchar(50),gmail varchar(100),age int,unique(gmail),check(age>15),primary key(id));
show tables;
desc student;
insert into student(name,gmail,age) values('student1','mail1@gmail.com',20),
('student2','mail2@gmail.com',22),
('student3','mail3@gmail.com',18);
select * from student;
insert into student(name,gmail,age) values('student4','mail1@gmail.com',20);
insert into student(name,gmail,age) values('student4','mail4@gmail.com',18);
alter table student drop column gmail;
alter table student add column(mark int,gender varchar(20));
alter table student change column mark marks int;
insert into student values(1,'student1',20,92,'male'),
(2,'student2',22,94,'male'),
(3,'student3',20,92,'female'),
(4,'student4',24,96,'male'),
(5,'student5',21,88,'male'),
(6,'student6',23,93,'female'),
(7,'student7',20,95,'female'),
(8,'student8',24,97,'female'),
(9,'student9',21,92,'male'),
(10,'student10',22,90,'female');
select * from student;
delete from student;
select name,age,gender from student;
select name n,age a,gender g from student;
select * from student where age>22;
select * from student where age=22;
select marks m from student where id=8;
select id roll_no,marks m from student where id<8;
select * from student where age<>22; -- not equal
select * from student where age between 21 and 22;
select * from student where age in(22,23,24);
select * from student where name like '%1%';
select * from student where name like '1%';
select * from student where name like '%1';
-- Aggregrate functions in SQL
select count(name) from student where marks>95;
select avg(marks) from student;
select count(*) from student where marks>90;
select max(marks) from student;
select min(marks) from student;
select count(marks) from student;
select count(distinct marks) from student;
show tables;
drop table student;
create table student(id int auto_increment,name varchar(50),age int,primary key(id),check(age>15));
show tables;
desc student;
create table marks(id int auto_increment,marks int,rankk int,primary key(id));
create table sports(id int auto_increment,sports varchar(30),foreign key(id) references student(id));
desc sports;
desc marks;
alter table marks change column id id int;
create table nsc(id int,nsc enum('nss','ncc'),foreign key(id) references student(id));
desc nsc;
insert into student values(1,'student1',18),
(2,'student2',17),
(3,'student3',18),
(4,'student4',17),
(5,'student5',19),
(6,'student6',18),
(7,'student7',17),
(8,'student8',18),
(9,'student9',18),
(10,'student10',17);
select * from student;
insert into marks values(1,89,6),
(2,95,3),
(3,76,9),
(4,80,8),
(5,69,10),
(6,92,4),
(7,90,5),
(8,82,7),
(9,97,2),
(10,98,1);
select * from marks;
show tables;
insert into sports values(1,'cricket'),
(2,'vollyball'),
(5,'basketball'),
(6,'cricket'),
(7,'vollyball'),
(10,'basketball');
select * from sports;
insert into nsc values(1,'ncc'),
(2,'nss'),
(3,'ncc'),
(6,'nss'),
(8,'nss'),
(10,'ncc');
select * from nsc;
-- inner join (common data between two tables)
show tables;
select t1.id,t1.name from student as t1 inner join marks as t2 on t1.id=t2.id;
select * from student as t1 inner join nsc as t2 on t1.id>t2.id;
select * from student as t1 inner join nsc as t2 on t1.id<t2.id;
-- left join (common data + left table data)
select * from student;
select * from nsc;
show tables;
select * from sports;
select t1.id,t1.name,t2.sports from student as t1 left join sports as t2 on t1.id>t2.id;
-- Right join (common data + right table data)
select * from student as t1 right join sports as t2 on t1.id<t2.id;
select * from marks;
-- self join
select * from student;
alter table student add column marks int not null;
desc student;
update student set marks=87 where id=10;
select * from student;
select * from student as t1 inner join student as t2 on t1.marks<t2.marks group by(t1.id);
select * from student as t1 inner join student as t2 on t1.age>t2.age;
select t1.id,count(t1.id) from student as t1 inner join student as t2 on t1.marks<t2.marks group by(t1.id);
select * from student;
select * from marks;
select * from sports;
select * from nsc;
show tables;
select t1.id,t1.name,t2.nsc from student as t1 right join nsc as t2 on t1.id=t2.id;
select * from student;
select * from student order by marks;
select * from student order by marks desc;
select * from student order by marks desc,age desc,name desc;
alter table student add column sports varchar(30);
desc student;
update student set sports='cricket' where id=10;
select * from student;
select sports,count(*) as no_of_students,avg(marks) from student group by sports order by no_of_students desc;
select sports,age,count(*) as no_of_students,avg(marks) from student group by sports,age order by no_of_students desc,age;
-- Having clause on above query
select sports,count(name) c,avg(marks) as avg from student group by sports having c>=3 and avg>=89 order by c desc;
-- Ranks (giving rank based on our particular coloumn)
select * from student;
select id,name,marks,rank() over(order by marks desc,age desc) as students_rank from student; -- rank function will skip the rank if both results are same
select id,name,marks,row_number() over(order by marks desc,age desc) as students_rank from student;
select id,name,marks,dense_rank() over(order by marks desc,age desc) as students_rank from student;
-- UNION AND INTERSECT
select * from student;
select * from student where sports='cricket';
select * from student where sports='football'
union
select * from student where sports='volleyball';
select avg(marks) from student where sports='cricket';
-- Normal subqueries
select id,name from student where sports='football' and marks>(select avg(marks) from student where sports='cricket');
-- Corelated subqueries
create table employee (id int not null auto_increment,name varchar(50),age int,salary int,gender enum('male','female'),primary key(id));
desc employee;
insert into employee values(1,'employee1',45,4500,'male'),
(2,'employee2',37,4590,'male'),
(3,'employee3',55,45000,'female'),
(4,'employee4',28,5000,'female'),
(5,'employee5',24,2500,'female');
select * from employee;
-- find the nth highest salary of employee
select salary as nth_highest_salary from employee as t1 where 0=(select count(*) from employee as t2 where t1.salary<t2.salary);
select salary from employee t1 where 0=(select count(*) from employee t2 where t1.salary<t2.salary);
alter table student rename students;
show tables;
select salary from employee as t1 where 0=(select count(*) from employee as t2 where t1.salary<t2.salary);
select substring(name,length(name)-4,4) from employee where id=1;
select * from students;
alter table students rename as student;
select * from student;
alter table student drop column sports;
truncate table student;
truncate student;
create table students(id int auto_increment not null,name varchar(50),marks int,primary key(id));
desc students;
insert into students values(1,'arun kumar',98),
(2,'sai teja',90),
(3,'harish',95),
(4,'kalyan',96),
(5,'yeshwanth',87);
select * from students;
select length(name) from students where id=2;
select * from students where marks>75 order by substring(name,length(name)-2,3) asc,id asc;
show tables;
select * from employee;
insert into employee values(6,'employee6',28,5000,'male');
select * from employee;
select gender,count(*),avg(salary) from employee group by gender;
select salary,count(*) from employee group by salary order by salary desc;
select * from student;
create table grades(grade int,min_mark int,max_mark int);
desc grades;
insert into grades values(1,0,9),
(2,10,19),
(3,20,29),
(4,30,39),
(5,40,49),
(6,50,59),
(7,60,69),
(8,70,79),
(9,80,89),
(10,90,99);
select t2.grade,if(t2.grade>8,name,null) from student as t1 inner join grades as t2 on t1.marks<=t2.max_mark and t1.marks>=t2.min_mark order by t2.grade desc,t1.name asc,t1.marks asc;
select * from student as t1 inner join grades as t2 on t1.marks<=t2.min_mark;
select * from grades;


































 












