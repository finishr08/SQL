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


