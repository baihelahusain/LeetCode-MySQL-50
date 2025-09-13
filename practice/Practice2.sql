SELECT @@AUTOCOMMIT;
SET AUTOCOMMIT = 0;
START transaction; 
USE college;
UPDATE students
SET grade = grade + 1 WHERE age > 17;
select * from students;
rollback;
select * from students;
commit;

use college;
alter table students add column score int constraint check_score check (score > 0);
select * from students;
update students
set score = 25
where result = "Fail";
update students
set score = 73
where result = "pass";

select * from students;
update students
set score = 94
where grade>= 11;
select * from students;

select name from students where name like "a%";
select name from students order by name desc;

select name, grade from students limit 2,10; 
-- ofset of two
select name , grade from students limit 5;

select @@autocommit;

select current_date();
select current_time();
select current_timestamp();
select now();
select localtime();
select localtimestamp();

update students 
set score = -1 
where id = 45;

