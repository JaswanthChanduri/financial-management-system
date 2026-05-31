#  Financial Management System

A relational database project built using **MySQL**, originally designed in Oracle SQL.
This project simulates a basic banking system managing customers, accounts, transactions, loans, and employees.

---

## Project Objective

- Understand relational database concepts
- Implement SQL commands practically (DDL, DML, TCL, DCL)
- Manage banking-related information efficiently
- Perform data cleaning and manipulation
- Generate reports using SQL queries
- Understand transaction and permission management

---

##  Technologies Used

| Technology | Purpose |
|---|---|
| MySQL | Database Management System |
| DDL | Data Definition Language |
| DML | Data Manipulation Language |
| DCL | Data Control Language |
| TCL | Transaction Control Language |

---

##  Database Design

### Tables

| Table | Description |
|---|---|
| `customers` | Stores customer personal details |
| `accounts` | Bank accounts linked to customers |
| `transactions` | Credit/Debit transaction records |
| `loans` | Loan details for customers |
| `employees` | Bank employee information |

### Relationships

- One **customer** can have multiple **accounts** (One-to-Many)
- One **account** can have multiple **transactions** (One-to-Many)
- **Loans** are linked to customers via `customer_ID` (Many-to-One)

---

##  Project Structure

```
financial-management-system/
│
├── schema.sql           # Module 1: Table creation (DDL)
├── data.sql             # Module 3: Raw data insertion (with NULLs & duplicates)
├── data_cleaning.sql    # Module 4: Data cleaning queries
├── data_manipulation.sql# Module 5: UPDATE, INSERT, DELETE operations
├── queries.sql          # Module 6: SELECT, JOINs, Aggregate functions
├── tcl_commands.sql     # Module 7: COMMIT, ROLLBACK, SAVEPOINT
├── dcl_commands.sql     # Module 8: GRANT, REVOKE, CREATE USER
└── alter_drop.sql       # Module 9: ALTER TABLE, DROP TABLE
```

---

##  How to Run

1. Install [MySQL](https://dev.mysql.com/downloads/) or use [MySQL Workbench](https://www.mysql.com/products/workbench/)
2. Open your MySQL client and run files **in this order**:

```sql
source schema.sql           -- Creates database and tables
source data.sql             -- Inserts sample data
source data_cleaning.sql    -- Cleans invalid/null/duplicate data
source data_manipulation.sql-- Performs updates and inserts
source queries.sql          -- Runs reports and queries
source tcl_commands.sql     -- Transaction control examples
source dcl_commands.sql     -- User permissions (run as admin)
source alter_drop.sql       -- Alter/drop operations
```

---

##  Oracle SQL → MySQL Conversions

| Oracle SQL | MySQL Equivalent |
|---|---|
| `VARCHAR2(n)` | `VARCHAR(n)` |
| `NUMBER(n)` | `INT(n)` |
| `NUMBER(n,2)` | `DECIMAL(n,2)` |
| `TO_DATE('01-01-2025','DD-MM-YYYY')` | `'2025-01-01'` |
| `SYSDATE` | `NOW()` / `CURDATE()` |
| `CREATE USER ... IDENTIFIED BY` | Same in MySQL |
| `RENAME COLUMN` | `RENAME COLUMN` (MySQL 8.0+) or `CHANGE COLUMN` |

---

##  Author

**Chanduri Jaswanth**

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
