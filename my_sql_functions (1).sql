create database func;
use func;

# Question:1. Function to Calculate Square of a Number.
delimiter //
create function square_number(n int)
returns int
deterministic
begin
return n*n;
end //
delimiter ;
select square_number(5);

# Question:2 Function to Check Even or Odd.
delimiter //
create function check_even_odd_num(n int)
returns varchar(50)
deterministic
begin
if n%2=0 then return "Even";
else return "Odd";
end if;
end //
delimiter ;
select check_even_odd_num(5);

# Question:3 Function to Find Factorial.
delimiter //
create function factorial_num(n int)
returns int
deterministic
begin
declare i int default 1;
declare fact int default 1;
while i<=n do 
set fact=fact*i;
set i=i+1;
end while;
return fact;
end //
delimiter ;
select factorial_num(5);

# Question:4 Function to Get Full Name.
delimiter //
create function full_name(fname varchar(50),iname varchar(50))
returns varchar(50)
deterministic
begin 
return concat(fname,"  ",iname);
end //
delimiter ;
select full_name("Salman","Khan");

# Question:5 Function to Calculate Simple Interest.
delimiter //
create function simple_interest(p int,r int,t int)
returns float
deterministic
begin
return (p*r*t)/100;
end //
delimiter ;
select simple_interest(10000,5,2);

# Question:6 Function Using Table Data.
CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    salary INT
);

INSERT INTO employees VALUES (1,'Amit',50000),(2,'Riya',60000);
DELIMITER //

CREATE FUNCTION get_salary(emp_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE sal INT;

    SELECT salary INTO sal
    FROM employees
    WHERE id = emp_id;

    RETURN sal;
END //

DELIMITER ;
select get_salary(1);

# Question:7 Function to Count Vowels in a String
DELIMITER //
CREATE FUNCTION count_vowels(str VARCHAR(255))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE count_vowel INT DEFAULT 0;
    DECLARE ch CHAR(1);

    WHILE i <= LENGTH(str) DO
        SET ch = LOWER(SUBSTRING(str, i, 1));

        IF ch IN ('a','e','i','o','u') THEN
            SET count_vowel = count_vowel + 1;
        END IF;

        SET i = i + 1;
    END WHILE;

    RETURN count_vowel;
END //
DELIMITER ;
select count_vowels("Salman Khan");

