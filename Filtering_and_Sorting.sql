USE sql_practice;

SELECT * 
FROM employ;

-- Find all employees who belong to the IT department AND have a salary greater than ₹40,000.
SELECT 
    employee_id,
    employee_name,
    department,
    salary
FROM employ 
WHERE department='IT' 
AND salary>40000;

-- Find employees who belong to either the HR or Finance department.
SELECT 
    employee_id,
    employee_name,
    department,
    salary
FROM employ
WHERE department='HR' 
OR department='Finance';

-- Find employees whose department is NOT IT.
SELECT 
   employee_id,
   employee_name,
   department,
   salary
FROM employ
WHERE department NOT IN ('IT');

-- Find employees whose salary is between ₹30,000 and ₹50,000 (inclusive)
SELECT  
    employee_id,
    employee_name,
    department,
    salary 
FROM employ
WHERE salary BETWEEN 30000 AND 50000;

-- Find employees whose names contain the letter 'a' anywhere in their names.
SELECT 
    employee_id,
    employee_name,
    department,
    salary 
FROM employ
WHERE employee_name LIKE '%a%';

-- Find employees whose city is NOT Delhi or Mumbai
SELECT 
    employee_id,
    employee_name,
    city,
    department,
    salary
FROM employ
WHERE city NOT IN ('Delhi','Mumbai');

-- Display all employees sorted first by department in ascending
--  order and then by salary in descending order within each department.
SELECT 
    employee_id,
    employee_name,
    department,
    salary
FROM employ
ORDER BY department ASC,salary DESC;

-- Display the 3rd and 4th highest-paid employees from the employ table
SELECT 
    employee_id,
    employee_name,
    department,
    salary
FROM employ
ORDER BY salary DESC
LIMIT 2
OFFSET 2;

