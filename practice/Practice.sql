create database College;
use College;
create table students(
	id int auto_increment primary key,
    name varchar(199) not null default "No Name",
    age int,
    email varchar(323) unique,
    DOB date
);
show tables;
select * from students;
describe students;
use college;
describe students;
select * from students;
alter table students rename column DOB to Admission_Date;
use College;
alter table students add column grade varchar(10);
alter table students drop column Admission_Date;
insert into students (id, name, age, email, grade) values (1, 'Hussain', 21, 'baihelahusain@gmail.com', 'A');
select * from students;
alter table students drop column email;
select * from students;
insert into students (id, name, age) values (2, 'arbaz', 32);
select * from students;
alter table students modify column grade varchar(4) default 'G';
select * from students;
insert into students (id, name, age) values (3, 'Karim', 32);
select * from students;
alter table students modify column age int after grade;
select * from students;
use college;
delete from students;
INSERT INTO students (id, name, age, grade) VALUES
(15, 'Ayesha Khan', 16, '10th'),
(25, 'Ravi Sharma', 17, '11th'),
(35, 'Meena Joshi', 15, '9th'),
(45, 'Arjun Verma', 18, '12th'),
(55, 'Sara Ali', 16, '10th'),
(65, 'Karan Mehta', 17, '11th'),
(75, 'Tanya Roy', 15, '9th'),
(85, 'Vikram Singh', 18, '12th'),
(95, 'Anjali Desai', 16, '10th'),
(105, 'Farhan Zaidi', 17, '11th');
select * from students;
select id, name, grade from students where(grade = 10 or grade = 11) and age> 15;
alter table students add column result varchar(10) not null default "pending";
select * from students;
insert into students (result) values 
("pass"),
("fail"),
("fail"),
("fail"),
("fail"),
("fail"),
("pass");
select * from students;
delete from students where grade='G';
select * from students;
update students 
set result = 'pass' where grade>9;
select * from students;
update students
set result = 'fail'
where grade<=9;
select * from students;
insert into students (id, result) values
(15, "Fail"),
(75, "Pass")
as new
on duplicate key update result = new.result;
select * from students;
with top_students as(
select id, name, grade
from students
where grade>9)
select * from top_students;
