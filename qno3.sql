-- Step 1: Create a new database for storing transaction data (if it doesn't already exist)
CREATE DATABASE IF NOT EXISTS university_of_rasul_transactions;

-- Step 2: Select the newly created database for use
USE university_of_rasul_transactions;

-- Step 3: Create a 'transactions' table to store transaction records
CREATE TABLE IF NOT EXISTS transactions (
    id INT PRIMARY KEY,             -- Unique ID for each transaction
    customer VARCHAR(50),          -- Name of the customer
    mode VARCHAR(50),              -- Payment method used (e.g., Credit Card, PayPal)
    city VARCHAR(20)               -- City where the transaction occurred
);

-- Step 4: Insert 10 sample transaction records with various modes and cities
INSERT INTO transactions (id, customer, mode, city)
VALUES
(1, "Mustafa", "Credit Card", "New York"),
(2, "Amir", "PayPal", "London"),
(3, "Ayesha", "Debit Card", "Tokyo"),
(4, "Bilal", "Apple Pay", "Sydney"),
(5, "Zara", "Google Pay", "Toronto"),
(6, "Hassan", "Cash", "Paris"),
(7, "Fatima", "Bank Transfer", "Dubai"),
(8, "Usman", "Credit Card", "Berlin"),
(9, "Maryam", "PayPal", "Singapore"),
(10, "Omar", "Crypto", "Amsterdam");

-- Step 5: Query to count how many times each payment mode was used
-- GROUP BY groups the transactions by mode
-- COUNT(mode) counts how many transactions exist for each payment mode
-- ORDER BY sorts results first by mode name, then by frequency
SELECT mode, COUNT(mode) 
FROM transactions 
GROUP BY mode 
ORDER BY mode, COUNT(mode);
