-- ===========================================
-- SQL PRACTICAL TEST CHEAT SHEET
-- ===========================================

-- 1) Reset a database (Deletes if exists, recreates, selects it)
DROP DATABASE IF EXISTS test_db;
CREATE DATABASE test_db;
USE test_db;

-- 2) Create a table (Defines structure, types, and constraints)
CREATE TABLE table_name (
    col1 DATA_TYPE [CONSTRAINTS],   -- Column definition
    col2 DATA_TYPE [CONSTRAINTS],
    PRIMARY KEY (col1),             -- Primary Key declaration
    FOREIGN KEY (col2) REFERENCES parent_table(parent_col) -- FK link
);

-- Composite Primary Key (two or more columns uniquely identify a row)
PRIMARY KEY (col1, col2);

-- Foreign Key with named constraint (links child table to parent)
CONSTRAINT fk_name FOREIGN KEY (col) REFERENCES parent_table(parent_col);

-- 3) Common Data Types:
-- INT, DECIMAL(p,s), CHAR(n), VARCHAR(n), DATE, TIME, TIMESTAMP, BOOLEAN

-- 4) Common Constraints:
NOT NULL                         -- Value required
UNIQUE                           -- No duplicates allowed
DEFAULT <value>                  -- Default if no value given
CHECK (condition)                -- Enforce valid range/values
ENUM('value1','value2')          -- Fixed list of allowed values

-- Examples:
grade VARCHAR(20) CHECK (grade IN ('Beginner','Novice','Skilled','Expert'));
code CHAR(2) CHECK (code REGEXP '^[A-Z]{2}$'); -- Regex pattern constraint

-- 5) Insert Data (Adds new rows)
INSERT INTO table_name (col1, col2) VALUES ('val1', 'val2');
INSERT INTO table_name (col1, col2) VALUES 
('val1a','val2a'),('val1b','val2b');

-- 6) Basic SELECT (Retrieve data)
SELECT * FROM table;                         -- All columns
SELECT col1, col2 FROM table;                -- Specific columns

-- Filtering rows:
WHERE col = 10                               -- Equality
WHERE col BETWEEN 10 AND 20                  -- Range inclusive
WHERE col IN (val1, val2)                    -- Match list
WHERE col LIKE '%pattern%'                   -- Partial match
WHERE col REGEXP '^A'                         -- Regex match
WHERE col IS NULL                            -- Null check
WHERE col IS NOT NULL                        -- Not null check

-- 7) Ordering and limiting results
ORDER BY col ASC|DESC                        -- Sort
LIMIT 5                                      -- Return first N rows

-- 8) Joins (Combine rows from multiple tables)
-- Inner Join: only matching rows
SELECT a.col, b.col
FROM a
JOIN b ON a.id = b.a_id;

-- Left Join: all from left, matching from right
SELECT ...
FROM a
LEFT JOIN b ON a.id = b.a_id;

-- Right Join: all from right, matching from left
SELECT ...
FROM a
RIGHT JOIN b ON a.id = b.a_id;

-- Self Join: join table to itself
SELECT ...
FROM table t1
JOIN table t2 ON t1.col = t2.col;

-- 9) Aggregation (Summarize data)
SELECT COUNT(*), AVG(salary), SUM(price), MIN(col), MAX(col)
FROM table
WHERE ...
GROUP BY col                             -- Group rows
HAVING COUNT(*) > 1                      -- Filter groups

-- 10) Set Operations
SELECT col FROM table1
UNION
SELECT col FROM table2;                  -- Combine, remove duplicates
UNION ALL                                -- Combine, keep duplicates

-- 11) Subqueries (Nested queries)
-- Single-row subquery:
SELECT name FROM students
WHERE program_id = (SELECT program_id FROM students WHERE name='Bob');

-- Multi-row subquery:
SELECT name FROM students
WHERE program_id IN (SELECT program_id FROM students WHERE grade='Expert');

-- 12) Useful Testing Commands
SHOW TABLES;                             -- List all tables
DESCRIBE table_name;                     -- Table structure
SHOW CREATE TABLE table_name;            -- Table creation SQL
