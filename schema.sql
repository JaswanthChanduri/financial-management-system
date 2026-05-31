-- ============================================================
--  FINANCIAL MANAGEMENT SYSTEM
--  Module 1: Database Creation (Schema)
--  Converted from Oracle SQL to MySQL
--  Author: Chanduri Jaswanth
-- ============================================================

CREATE DATABASE IF NOT EXISTS financial_management;
USE financial_management;

-- ──────────────────────────────────────────────────────────────
-- Customers Table
-- ──────────────────────────────────────────────────────────────
CREATE TABLE customers (
    customer_ID   INT(10)       PRIMARY KEY,
    customer_name VARCHAR(50)   NOT NULL,
    email         VARCHAR(100)  UNIQUE,
    phn_number    BIGINT(10),
    city          VARCHAR(50)
);

-- ──────────────────────────────────────────────────────────────
-- Accounts Table
-- ──────────────────────────────────────────────────────────────
CREATE TABLE accounts (
    account_ID   BIGINT(12)   PRIMARY KEY,
    customer_ID  INT(10),
    account_type VARCHAR(20)  CHECK (account_type IN ('savings', 'current')),
    balance      DECIMAL(10,2),
    open_date    DATE,
    FOREIGN KEY (customer_ID) REFERENCES customers(customer_ID)
);

-- ──────────────────────────────────────────────────────────────
-- Transactions Table
-- ──────────────────────────────────────────────────────────────
CREATE TABLE transactions (
    transaction_ID   INT(10)      PRIMARY KEY,
    account_ID       BIGINT(12),
    transaction_type VARCHAR(20)  CHECK (transaction_type IN ('Credit', 'Debit')),
    amount           DECIMAL(10,2),
    transaction_date DATE,
    FOREIGN KEY (account_ID) REFERENCES accounts(account_ID)
);

-- ──────────────────────────────────────────────────────────────
-- Loans Table
-- ──────────────────────────────────────────────────────────────
CREATE TABLE loans (
    loan_ID     INT(10)      PRIMARY KEY,
    customer_ID INT(10),
    loan_type   VARCHAR(50),
    loan_amount DECIMAL(10,2),
    loan_status VARCHAR(20)  CHECK (loan_status IN ('Approved', 'Rejected', 'Pending')),
    FOREIGN KEY (customer_ID) REFERENCES customers(customer_ID)
);

-- ──────────────────────────────────────────────────────────────
-- Employees Table
-- ──────────────────────────────────────────────────────────────
CREATE TABLE employees (
    employee_ID   INT(10)     PRIMARY KEY,
    employee_name VARCHAR(20) NOT NULL,
    designation   VARCHAR(20) NOT NULL,
    salary        DECIMAL(10,2)
);
