-- Qs: Create the database for your university

--     Step-1 : Create a table inside this DB to store students info (roll_no, name, city)
--     Step-2 : Add the Data
--     Step-3 : View the DataBase


CREATE DATABASE university_of_rasul;

USE university_of_rasul;

CREATE TABLE students(
    roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(20)
);

INSERT INTO 
students (roll_no, name, city) 
VALUES
(1,"Mustafa", "Mandi"),
(2, "Amir", "Kashmir");


SELECT * FROM students;

