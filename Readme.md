# SQL (Structured Query Language)

## 📘 **What is a Database?**

A **database** is an organized collection of structured information or data, stored electronically. It allows users and applications to **store**, **manage**, and **retrieve** data efficiently.

**Example:** A school database might store data about students, teachers, and classes.

---

## 🗂️ **Types of Databases**

1. **Relational Database (RDBMS)**

   - Data is stored in tables.
   - Examples: MySQL, PostgreSQL, Oracle, SQL Server.

2. **NoSQL Database**

   - Stores unstructured or semi-structured data.
   - Examples: MongoDB, Firebase, Cassandra.

3. **Hierarchical Database**

   - Organizes data in a tree-like structure.
   - Example: IBM IMS.

4. **Network Database**

   - More flexible than hierarchical; supports complex relationships.

5. **Object-Oriented Database**

   - Stores data as objects (like in OOP).

6. **Cloud Database**

   - Hosted on cloud platforms.
   - Examples: AWS RDS, Google Cloud Firestore.

---

## 🧱 **Database Structure**

A database consists of:

- **Database** → Collection of tables
- **Table** → Collection of rows and columns
- **Row (Record)** → Single data entry
- **Column (Field)** → A specific data type or attribute
- **Schema** → Blueprint of the database structure

---

## 📊 **What is a Table?**

A **table** is a structured format for storing data in rows and columns.

**Example:**

| ID  | Name | Age |
| --- | ---- | --- |
| 1   | Ali  | 20  |
| 2   | Sara | 21  |

---

## 🧮 **SQL Data Types**

Common data types in SQL:

- **INT**: Integer numbers
- **FLOAT/DOUBLE**: Decimal numbers
- **VARCHAR(n)**: Variable-length text
- **CHAR(n)**: Fixed-length text
- **TEXT**: Long text
- **DATE**: Stores a date
- **DATETIME**: Stores date and time
- **BOOLEAN**: True/false

---

## 📑 **Types of SQL Commands**

SQL commands are categorized into:

1. **DDL (Data Definition Language):**

   - `CREATE`, `DROP`, `ALTER`, `TRUNCATE`

2. **DML (Data Manipulation Language):**

   - `SELECT`, `INSERT`, `UPDATE`, `DELETE`

3. **DCL (Data Control Language):**

   - `GRANT`, `REVOKE`

4. **TCL (Transaction Control Language):**

   - `COMMIT`, `ROLLBACK`, `SAVEPOINT`

---

## 🧾 **Database Related Queries**

```sql
-- Create a new database
CREATE DATABASE school;

-- Show all databases
SHOW DATABASES;

-- Use a specific database
USE school;

-- Delete a database
DROP DATABASE school;
```

---

## 📋 **Table Related Queries**

```sql
-- Create a table
CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  age INT
);

-- View all tables
SHOW TABLES;

-- Show table structure
DESCRIBE students;

-- Delete a table
DROP TABLE students;
```

---

## 🔍 **SELECT Command**

Used to **retrieve data** from a table.

```sql
-- Get all data
SELECT * FROM students;

-- Get specific columns
SELECT name, age FROM students;

-- With condition
SELECT * FROM students WHERE age > 18;
```

---

## ➕ **INSERT Command**

Used to **add new data** into a table.

```sql
-- Insert a single record
INSERT INTO students (id, name, age) VALUES (1, 'Ali', 20);

-- Insert multiple records
INSERT INTO students (id, name, age) VALUES
(2, 'Sara', 21),
(3, 'Ahmed', 19);
```

## **Practice Qno-1**

### Qs: Create the database for your university

- Step-1 : Create a table inside this DB to store students info (roll_no, name, city)
- Step-2 : Add the Data
- Step-3 : View the DataBase

```sql
-- Step 1: Create a new database for the university
CREATE DATABASE IF NOT EXISTS university_of_rasul;

-- Step 2: Select the newly created database to work in
USE university_of_rasul;

-- Step 3: Create a 'students' table with roll_no, name, and city columns
CREATE TABLE IF NOT EXISTS students(
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

```

### Output

```sql
+---------+---------+---------+
| roll_no | name    | city    |
+---------+---------+---------+
|       1 | Mustafa | Mandi   |
|       2 | Amir    | Kashmir |
+---------+---------+---------+
```

## 🔑 **Keys in SQL**

Keys are used to uniquely identify rows in a table.

1. **Primary Key**

   - Uniquely identifies each row.
   - Must be unique and not null.

   ```sql
   CREATE TABLE students (
     id INT PRIMARY KEY,
     name VARCHAR(100)
   );
   ```

2. **Foreign Key**

   - Links to the primary key of another table.

   ```sql
   CREATE TABLE orders (
     order_id INT,
     student_id INT,
     FOREIGN KEY (student_id) REFERENCES students(id)
   );
   ```

3. **Unique Key**

   - Ensures all values in a column are unique.

   ```sql
   CREATE TABLE employees (
     email VARCHAR(100) UNIQUE
   );
   ```

4. **Composite Key**

   - A combination of two or more columns to uniquely identify a row.

   ```sql
   PRIMARY KEY (student_id, course_id)
   ```

---

## 🛑 **Constraints in SQL**

Constraints enforce rules on the data in tables.

- `NOT NULL` – Ensures a column cannot have NULL values
- `UNIQUE` – Ensures unique values
- `PRIMARY KEY` – Combines `NOT NULL` and `UNIQUE`
- `FOREIGN KEY` – Ensures referential integrity
- `CHECK` – Ensures values meet a condition
- `DEFAULT` – Sets a default value

```sql
CREATE TABLE users (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INT CHECK (age >= 18),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
```

---

## 🔍 **SELECT Command in Detail**

The `SELECT` statement is used to retrieve data.

```sql
SELECT column1, column2 FROM table_name;
SELECT * FROM students;
```

---

## ❓ **WHERE Clause**

Used to filter rows based on a condition.

```sql
SELECT * FROM students WHERE age > 18;
```

---

## ⚙️ **Operators in SQL**

- **Comparison Operators:** `=`, `!=`, `>`, `<`, `>=`, `<=`
- **Logical Operators:** `AND`, `OR`, `NOT`
- **BETWEEN:** Select values within a range
- **IN:** Match values from a list
- **LIKE:** Pattern matching using `%` and `_`

**Examples:**

```sql
SELECT * FROM students WHERE age BETWEEN 18 AND 25;
SELECT * FROM students WHERE name LIKE 'A%';
SELECT * FROM students WHERE age IN (18, 20, 22);
```

---

## 📉 **LIMIT Clause**

Used to limit the number of rows returned.

```sql
SELECT * FROM students LIMIT 5;
```

---

## 🔡 **ORDER BY Clause**

Used to sort results.

```sql
-- Ascending (default)
SELECT * FROM students ORDER BY age;

-- Descending
SELECT * FROM students ORDER BY age DESC;
```

---

## 📊 **Aggregate Functions**

Used to perform calculations on a set of values:

- `COUNT()` – Total number of rows
- `SUM()` – Total of numeric column
- `AVG()` – Average value
- `MAX()` – Maximum value
- `MIN()` – Minimum value

**Example:**

```sql
SELECT COUNT(*) FROM students;
SELECT AVG(age) FROM students;
SELECT MAX(age) FROM students;
```

---

## 🧮 **GROUP BY Clause**

Groups rows sharing a property and applies an aggregate function.

```sql
SELECT age, COUNT(*)
FROM students
GROUP BY age;
```

### Qs: Write the Query to find Avg marks in each city in ASC order.

```sql
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

```

### Output

```sql
+-------------+---------------+
| city        | average_marks |
+-------------+---------------+
| Faisalabad  |          60.0 |
| Quetta      |          66.0 |
| Multan      |          70.0 |
| Karachi     |          75.0 |
| Hyderabad   |          78.0 |
| Peshawar    |          81.0 |
| Sialkot     |          84.0 |
| Lahore      |          88.0 |
| Islamabad   |          92.0 |
| Rawalpindi  |          95.0 |
+-------------+---------------+
```
