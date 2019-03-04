/*
* Alexander Turner (18416709), Aidan Rayner (), Nathan Thomas-Williams (18410399), Nathan Segnitz ()
* CSY1026 Databases 1 - Assignment 2
*/

--INSERT INTO TABLES
--Insert into 'employees' table
PROMPT Inserting data into the 'employees' table
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'JOHN', 'DOE', 'M', 'john@doe.com', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

--Insert into 'specialisms' table
PROMPT Inserting data into the 'specialisms' table
INSERT INTO specialisms 
VALUES(seq_specialisms.NEXTVAL, 'TEST', 'This is a test.');

PROMPT Commit changes
COMMIT;