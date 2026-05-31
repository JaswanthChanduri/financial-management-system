-- ============================================================
--  FINANCIAL MANAGEMENT SYSTEM
--  Module 4: Data Cleaning
--  Author: Chanduri Jaswanth
-- ============================================================

USE financial_management;

-- 1. Find NULL email addresses
SELECT * FROM customers WHERE email IS NULL;

-- 2. Replace missing phone numbers with a default value
UPDATE customers
SET phn_number = 9999999999
WHERE phn_number IS NULL;

-- 3. Remove accounts with negative balances
DELETE FROM accounts WHERE balance < 0;

-- 4. Delete invalid transactions (negative amounts)
DELETE FROM transactions WHERE amount < 0;

-- 5. Identify duplicate customer names
SELECT customer_name, COUNT(*) AS count
FROM customers
GROUP BY customer_name
HAVING COUNT(*) > 1;

-- 6. Standardize city names to UPPERCASE
UPDATE customers
SET city = UPPER(city);
