create database view_;
use view_;

CREATE TABLE student(
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50),
    marks INT
);

INSERT INTO student VALUES
(1,'Aamir','BCA',85),
(2,'Rahul','BBA',72),
(3,'Ali','MCA',91),
(4,'Rohan','MBA',65),
(5,'Sara','BCA',88);

# 1 Create a View named Passed_Students that displays students with marks greater than 40.

create view pass_std as 
select * from student where marks > 40;

# 2 Create a View named BCA_Students that displays only students from the BCA course.

create view BCA_Students as
select name , course from student where course = "BCA";

# 3 Create a View named High_Marks that displays students with marks greater than 90.

create view high_marks as
select * from student where marks > 80;

# 4 Create a View named Student_Details that displays only student_id, name, and course.

create view std_details as
select Student_id , name , course from student;

# 5 Create a View named Average_Students that displays students with marks between 60 and 80.

create view avg_std as
select name , marks from student where marks between 60 and 80;

# 6 Display all records from the Students View.

create view Top_student as
select * from student where marks > 85;

# 7 Create a View named A_Students that displays students whose names start with the letter A.

create view A_student as
select name , course from student where name like ("a%");

# 8 Create a View named MCA_Students that displays only MCA students with marks above 80.

create view MCA_student as
select * from student where course = "MCA" and marks > 80;

# 9 Delete the High_Marks View using the DROP VIEW command.

drop view high_marks;

# 10 Create a View named Rank_Students that displays students with marks greater than or equal to 85.

create view rank_student as
select * from student where marks >= 85;