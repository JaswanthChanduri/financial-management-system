-- ============================================================
--  FINANCIAL MANAGEMENT SYSTEM
--  Module 6: SQL Queries & Reports
--  Author: Chanduri Jaswanth
-- ============================================================

USE financial_management;

-- ──────────────────────────────────────────────────────────────
-- Basic Queries
-- ──────────────────────────────────────────────────────────────

-- 1. Display all customers
SELECT * FROM customers;

-- 2. Show all account details
SELECT * FROM accounts;

-- 3. Find customers from Hyderabad
SELECT * FROM customers WHERE city = 'HYDERABAD';

-- 4. Display accounts with balance greater than 50,000
SELECT * FROM accounts WHERE balance > 50000;

-- ──────────────────────────────────────────────────────────────
-- JOIN Queries
-- ──────────────────────────────────────────────────────────────

-- 5. Show customer name with account details
SELECT c.customer_name, a.account_ID, a.account_type, a.balance
FROM customers c
JOIN accounts a ON c.customer_ID = a.customer_ID;

-- 6. Display full transaction history for each customer
SELECT c.customer_name, t.transaction_ID, t.transaction_type, t.amount
FROM customers c
JOIN accounts a    ON c.customer_ID = a.customer_ID
JOIN transactions t ON a.account_ID  = t.account_ID;

-- 7. Find customers who made transactions above 10,000
SELECT DISTINCT c.customer_name
FROM customers c
JOIN accounts a    ON c.customer_ID = a.customer_ID
JOIN transactions t ON a.account_ID  = t.account_ID
WHERE t.amount > 10000;

-- 8. Show account type-wise total balance
SELECT account_type, SUM(balance) AS total_balance
FROM accounts
GROUP BY account_type;

-- ──────────────────────────────────────────────────────────────
-- Aggregate Functions
-- ──────────────────────────────────────────────────────────────

-- 9. Find total bank balance
SELECT SUM(balance) AS total_bank_balance FROM accounts;

-- 10. Find average account balance
SELECT AVG(balance) AS average_balance FROM accounts;

-- 11. Find maximum transaction amount
SELECT MAX(amount) AS maximum_transaction_amount FROM transactions;

-- 12. Count total customers
SELECT COUNT(*) AS total_customers FROM customers;
