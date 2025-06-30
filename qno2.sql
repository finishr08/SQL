-- Qs: Write the Query to find Avg marks in each city in ASC order.


-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS university_of_rasul;

-- Step 2: Select the database to use
USE university_of_rasul;

-- Step 3: Create the students table with roll_no, name, marks, and city
CREATE TABLE students(
    roll_no INT PRIMARY KEY,      -- Unique student roll number
    name VARCHAR(50),             -- Student name
    marks INT,                    -- Marks obtained by the student
    city VARCHAR(20)              -- City of the student
);

-- Step 4: Insert student records with marks and city
INSERT INTO 
students (roll_no, name, marks, city) 
VALUES
(3, "Ayesha", 88, "Lahore"),
(4, "Hassan", 75, "Karachi"),
(5, "Zara", 92, "Islamabad"),
(6, "Bilal", 66, "Quetta"),
(7, "Fatima", 81, "Peshawar"),
(8, "Usman", 70, "Multan"),
(9, "Maryam", 95, "Rawalpindi"),
(10, "Ali", 60, "Faisalabad"),
(11, "Sana", 78, "Hyderabad"),
(12, "Omar", 84, "Sialkot");

-- Step 5: Query to find average marks by city
-- GROUP BY groups the records by city
-- AVG(marks) calculates the average marks for each city
-- ORDER BY sorts the results in ascending order of average marks
SELECT city, AVG(marks) 
FROM students
GROUP BY city
ORDER BY AVG(marks) ASC;


