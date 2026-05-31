-- ============================================================
--  FINANCIAL MANAGEMENT SYSTEM
--  Module 5: Data Manipulation
--  Author: Chanduri Jaswanth
-- ============================================================

USE financial_management;

-- 1. Update account balances after transactions
UPDATE accounts SET balance = balance + 5000 WHERE account_ID = 1001;
UPDATE accounts SET balance = balance - 2000 WHERE account_ID = 1002;

-- 2. Add a new customer into the system
INSERT INTO customers VALUES (113, 'Kavya', 'kavya@gmail.com', 9876501234, 'Hyderabad');

-- 3. Delete inactive customer accounts (zero balance)
DELETE FROM accounts WHERE balance = 0;

-- 4. Modify customer contact details
UPDATE customers SET phn_number = 9999988888  WHERE customer_ID = 101;
UPDATE customers SET email      = 'ram_new@gmail.com' WHERE customer_ID = 101;

-- 5. Increase loan amount for selected customers
UPDATE loans SET loan_amount = loan_amount + 10000 WHERE customer_ID = 101;
