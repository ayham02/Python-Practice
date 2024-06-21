-- SQL Delimiters

-- 1. Semicolon (;)
-- Purpose: Ends a SQL statement.
-- Example:
    SELECT * FROM EMPLOYEES;

-- 2. Comma (,)
-- Purpose: Separates columns or values.
-- Example:
    SELECT id, name, age FROM employees;

-- 3. Quotes (Single ' and Double ")
-- Purpose: Encloses string literals or identifiers.
-- Example:
    SELECT * FROM employees WHERE name = 'John Doe';

-- 4. Parentheses (())
-- Purpose: Encloses subqueries, function parameters, or conditions.
-- Example:
    SELECT * FROM employees WHERE (age > 30 AND department = 'Sales');

-- 5. Custom Delimiters
-- Purpose: Separates statements in complex scripts (e.g., stored procedures).
-- Example:

    DELIMITER //
    CREATE PROCEDURE GetEmployeeCount()
    BEGIN
    SELECT COUNT(*) INTO @empCount FROM employees;
    END //
    DELIMITER ;

-- Deterministic 
--  function or expression that always returns the same result given the same inputs.
-- Examples:

-- Deterministic Functions:
-- ABS(-5) -> Always returns 5
-- LOWER('HELLO') -> Always returns hello

-- Non-Deterministic Functions:
-- NOW() -> Returns the current date and time, which changes with each call
-- RAND() -> Returns a random number, different each time it's called
