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

-- Procedures
-- A set of SQL statements saved and reused. Similar to a recipe: write once, use many times.

-- Key Points:
-- Reusable Code: Reduces repetition.
-- Encapsulation: Groups multiple SQL statements.
-- Parameters: Can take inputs and return outputs.
-- Efficiency: Improves performance and maintainability.

-- 1. Create Procedure:

    CREATE PROCEDURE ProcedureName (parameters)
    BEGIN
    -- SQL statements
    END;

-- 2. Call Procedure:

    CALL ProcedureName(arguments);

-- Example:
-- 1 .Create Procedure:

    CREATE PROCEDURE AddEmployee(
        IN emp_name VARCHAR(100),
        IN emp_age INT,
        IN emp_department VARCHAR(50)
    )
    BEGIN
        INSERT INTO employees (name, age, department)
        VALUES (emp_name, emp_age, emp_department);
    END;

-- Call Procedure:

    CALL AddEmployee('John Doe', 30, 'Sales');

-- DROPPING PROCEDURES
-- EXAMPLE:
-- Dropping select_all_products

DROP PROCEDURE select_all_products;


