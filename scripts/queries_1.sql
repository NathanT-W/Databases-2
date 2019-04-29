/*
* Alexander Turner (18416709), Aidan Rayner (18415915), Nathan Thomas-Williams (18410399)
* CSY1026 Databases 1 - Assignment 2
*/

-- @C:\Users\natht\Documents\GitHub\Databases-2\scripts\queries_1.sql

--Viewing all records in the 'employees' table
SELECT * FROM employees;

SELECT title, firstname, surname FROM employees ORDER BY surname DESC;

PROMPT Commit changes
COMMIT;