alter table students rename column grade to std;
select * from students;

alter table students add column std_id int not null;
ALTER TABLE students 
MODIFY COLUMN std_id INT AFTER id;
select * from students;

update students
set std_id = case std
when 9 then 1
when 10 then 2
when 11 then 3 
when 12 then 4
end;

select * from students;

create table teachers(
teacher_id int primary key,
name varchar(29) default "xyz");

insert into teachers(teacher_id, name) values
(1, "sameer sir"),
(2, "javed sir"),
(3, "gufran sir"),
(4, "ziya_sir");

ALTER TABLE students
ADD CONSTRAINT fk_students_teacher
FOREIGN KEY (std_id)
REFERENCES teachers(teacher_id)
ON UPDATE CASCADE
ON DELETE SET NULL;

select * from students;
select * from teachers;

describe students;
describe teachers;

SELECT id, name AS student_name, std, std_id AS teacher_id
FROM students;

SELECT s.id AS student_id,
       s.name AS student_name,
       s.std AS standard,
       t.name AS teacher_name
FROM students s
JOIN teachers t ON s.std_id = t.teacher_id;

select * from students;