-- ============================================================
--  FINANCIAL MANAGEMENT SYSTEM
--  Module 8: DCL Commands (Data Control Language)
--  Note: MySQL uses CREATE USER ... IDENTIFIED BY
--        and standard GRANT / REVOKE syntax.
--  Run these as root/admin user.
--  Author: Chanduri Jaswanth
-- ============================================================

-- 1. Create a new database user for finance team
CREATE USER 'finance_user'@'localhost' IDENTIFIED BY 'finance123';

-- 2. Grant SELECT and INSERT permissions on key tables
GRANT SELECT, INSERT ON financial_management.customers   TO 'finance_user'@'localhost';
GRANT SELECT, INSERT ON financial_management.accounts    TO 'finance_user'@'localhost';

-- 3. Revoke DELETE permission from finance_user
REVOKE DELETE ON financial_management.customers FROM 'finance_user'@'localhost';

-- 4. Create a limited-access user for employees
CREATE USER 'employee_user'@'localhost' IDENTIFIED BY 'emp123';

GRANT SELECT ON financial_management.accounts     TO 'employee_user'@'localhost';
GRANT SELECT ON financial_management.transactions TO 'employee_user'@'localhost';

-- Apply all permission changes immediately
FLUSH PRIVILEGES;
