-- Step 1: Create a new database for the university
CREATE DATABASE university_of_rasul;

-- Step 2: Select the newly created database to work in
USE university_of_rasul;

-- Step 3: Create a 'students' table with roll_no, name, and city columns
CREATE TABLE students(
    roll_no INT PRIMARY KEY,      -- Unique identifier for each student
    name VARCHAR(50),             -- Student's name (up to 50 characters)
    city VARCHAR(20)              -- Student's city (up to 20 characters)
);

-- Step 4: Insert data into the 'students' table
INSERT INTO students (roll_no, name, city)
VALUES
(1, "Mustafa", "Mandi"),          -- Student's data
(2, "Amir", "Kashmir");

-- Step 5: View all the data from the 'students' table
SELECT * FROM students;