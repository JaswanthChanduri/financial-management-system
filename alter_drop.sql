-- ============================================================
--  FINANCIAL MANAGEMENT SYSTEM
--  Module 9: ALTER & DROP Operations
--  Note: MySQL uses CHANGE COLUMN instead of RENAME COLUMN
--        (RENAME COLUMN is supported in MySQL 8.0+)
--  Author: Chanduri Jaswanth
-- ============================================================

USE financial_management;

-- 1. Add PAN Number column to Customers table
ALTER TABLE customers ADD pan_number VARCHAR(20);

-- 2. Add Loan Start Date column to Loans table
ALTER TABLE loans ADD loan_start_date DATE;

-- 3. Rename a column (MySQL 8.0+ syntax)
ALTER TABLE customers RENAME COLUMN phn_number TO phone_number;

-- For older MySQL versions, use CHANGE COLUMN instead:
-- ALTER TABLE customers CHANGE COLUMN phn_number phone_number BIGINT(10);

-- 4. Drop the employees table (when no longer needed)
DROP TABLE employees;
