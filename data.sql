-- ============================================================
--  FINANCIAL MANAGEMENT SYSTEM
--  Module 3: Raw Data Insertion
--  Includes: duplicates, NULL values, invalid entries
--  Author: Chanduri Jaswanth
-- ============================================================

USE financial_management;

-- ──────────────────────────────────────────────────────────────
-- Insert Customers (includes NULLs and duplicates)
-- ──────────────────────────────────────────────────────────────
INSERT INTO customers VALUES (101, 'Ram',    'ram@gmail.com',    9876543210, 'Hyderabad');
INSERT INTO customers VALUES (102, 'Sita',   'sita@gmail.com',   9876512345, 'Chennai');
INSERT INTO customers VALUES (103, 'Arjun',  'arjun@gmail.com',  9123456789, 'Bangalore');
INSERT INTO customers VALUES (104, 'Priya',  'priya@gmail.com',  9988776655, 'Mumbai');
INSERT INTO customers VALUES (105, 'Ravi',   'ravi@gmail.com',   9001122334, 'Hyderabad');
INSERT INTO customers VALUES (106, 'Meena',  NULL,               NULL,       'Delhi');
INSERT INTO customers VALUES (107, 'Suresh', 'suresh@gmail.com', 9876500001, 'Pune');
INSERT INTO customers VALUES (108, 'Ram',    'ram2@gmail.com',   9000000001, 'Hyderabad');  -- duplicate name
INSERT INTO customers VALUES (109, 'Kavita', 'kavita@gmail.com', NULL,       'Kolkata');
INSERT INTO customers VALUES (110, 'Deepak', 'deepak@gmail.com', 9111222333, 'Hyderabad');
INSERT INTO customers VALUES (111, 'Anjali', 'anjali@gmail.com', 9444555666, 'Chennai');
INSERT INTO customers VALUES (112, 'Vijay',  'vijay@gmail.com',  9777888999, 'Mumbai');

-- ──────────────────────────────────────────────────────────────
-- Insert Accounts (includes negative balance for data cleaning)
-- ──────────────────────────────────────────────────────────────
INSERT INTO accounts VALUES (1001, 101, 'savings', 5000.00,  '2025-01-01');
INSERT INTO accounts VALUES (1002, 102, 'current', 15000.00, '2025-01-15');
INSERT INTO accounts VALUES (1003, 103, 'savings', 8000.00,  '2025-02-01');
INSERT INTO accounts VALUES (1004, 104, 'current', 20000.00, '2025-02-10');
INSERT INTO accounts VALUES (1005, 105, 'savings', 3000.00,  '2025-03-01');
INSERT INTO accounts VALUES (1006, 106, 'savings', -500.00,  '2025-03-05');  -- invalid: negative
INSERT INTO accounts VALUES (1007, 107, 'current', 0.00,     '2025-03-10');  -- zero balance
INSERT INTO accounts VALUES (1008, 108, 'savings', 12000.00, '2025-04-01');
INSERT INTO accounts VALUES (1009, 109, 'current', 9500.00,  '2025-04-15');
INSERT INTO accounts VALUES (1010, 110, 'savings', 55000.00, '2025-05-01');

-- ──────────────────────────────────────────────────────────────
-- Insert Transactions (includes negative amount for data cleaning)
-- ──────────────────────────────────────────────────────────────
INSERT INTO transactions VALUES (1,  1001, 'Credit', 2000.00,  '2025-03-01');
INSERT INTO transactions VALUES (2,  1001, 'Debit',  500.00,   '2025-03-05');
INSERT INTO transactions VALUES (3,  1002, 'Credit', 5000.00,  '2025-03-10');
INSERT INTO transactions VALUES (4,  1002, 'Debit',  1500.00,  '2025-03-12');
INSERT INTO transactions VALUES (5,  1003, 'Credit', 8000.00,  '2025-03-15');
INSERT INTO transactions VALUES (6,  1003, 'Debit',  3000.00,  '2025-03-18');
INSERT INTO transactions VALUES (7,  1004, 'Credit', 12000.00, '2025-03-20');
INSERT INTO transactions VALUES (8,  1004, 'Debit',  -200.00,  '2025-03-22');  -- invalid: negative
INSERT INTO transactions VALUES (9,  1005, 'Credit', 4000.00,  '2025-04-01');
INSERT INTO transactions VALUES (10, 1005, 'Debit',  1000.00,  '2025-04-03');
INSERT INTO transactions VALUES (11, 1006, 'Credit', 1500.00,  '2025-04-05');
INSERT INTO transactions VALUES (12, 1007, 'Debit',  500.00,   '2025-04-07');
INSERT INTO transactions VALUES (13, 1008, 'Credit', 15000.00, '2025-04-10');
INSERT INTO transactions VALUES (14, 1008, 'Debit',  7000.00,  '2025-04-12');
INSERT INTO transactions VALUES (15, 1009, 'Credit', 9000.00,  '2025-04-15');
INSERT INTO transactions VALUES (16, 1009, 'Debit',  2500.00,  '2025-04-18');
INSERT INTO transactions VALUES (17, 1010, 'Credit', 25000.00, '2025-05-01');
INSERT INTO transactions VALUES (18, 1010, 'Debit',  10000.00, '2025-05-05');
INSERT INTO transactions VALUES (19, 1001, 'Credit', 3000.00,  '2025-05-10');
INSERT INTO transactions VALUES (20, 1002, 'Debit',  800.00,   '2025-05-12');

-- ──────────────────────────────────────────────────────────────
-- Insert Employees
-- ──────────────────────────────────────────────────────────────
INSERT INTO employees VALUES (201, 'Rakesh',  'Manager',   75000.00);
INSERT INTO employees VALUES (202, 'Sneha',   'Analyst',   45000.00);
INSERT INTO employees VALUES (203, 'Kiran',   'Clerk',     30000.00);
INSERT INTO employees VALUES (204, 'Mahesh',  'Officer',   55000.00);
INSERT INTO employees VALUES (205, 'Lakshmi', 'Accountant',40000.00);

-- ──────────────────────────────────────────────────────────────
-- Insert Loans
-- ──────────────────────────────────────────────────────────────
INSERT INTO loans VALUES (301, 101, 'Home Loan',     500000.00, 'Approved');
INSERT INTO loans VALUES (302, 102, 'Car Loan',      200000.00, 'Pending');
INSERT INTO loans VALUES (303, 103, 'Personal Loan', 100000.00, 'Approved');
INSERT INTO loans VALUES (304, 104, 'Education Loan',300000.00, 'Rejected');
INSERT INTO loans VALUES (305, 105, 'Home Loan',     750000.00, 'Pending');
