-- ============================================================
--  FINANCIAL MANAGEMENT SYSTEM
--  Module 7: TCL Commands (Transaction Control Language)
--  Note: MySQL uses SAVEPOINT, ROLLBACK TO, and COMMIT
--        AUTO-COMMIT must be OFF for transactions to work.
--  Author: Chanduri Jaswanth
-- ============================================================

USE financial_management;

-- Disable auto-commit to enable manual transaction control
SET autocommit = 0;

-- 1. Create SAVEPOINT before transfer
SAVEPOINT before_transfer;

-- 2. Deduct amount from Account 1001
UPDATE accounts SET balance = balance - 5000 WHERE account_ID = 1001;

-- 3. Add amount to Account 1002
UPDATE accounts SET balance = balance + 5000 WHERE account_ID = 1002;

-- 4. Create SAVEPOINT after transfer
SAVEPOINT transfer_done;

-- 5. Rollback to state before transfer (undo if something goes wrong)
ROLLBACK TO before_transfer;

-- 6. Commit successful transaction
COMMIT;

-- Re-enable auto-commit (optional)
SET autocommit = 1;
