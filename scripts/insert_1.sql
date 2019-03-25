/*
* Alexander Turner (18416709), Aidan Rayner (18415915), Nathan Thomas-Williams (18410399), Nathan Segnitz ()
* CSY1026 Databases 1 - Assignment 2
*/

--INSERT INTO TABLES
PROMPT Inserting data into the 'employees' table
--Inserting data
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'JOHN', 'DOE', 'M', 'john@doe.com', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'JANE', 'DOE', 'F', 'jane@doe.com', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'TONY', 'STARK', 'M', 'tony@starkindustries.com', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'BRUCE', 'BANNER', 'M', 'bruce@thehulk.com', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'STEVE', 'ROGERS', 'M', 'steve@captainamerica.com', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

--Inserting nulls
INSERT INTO employees 
VALUES('', '', '', '', '', '', '', '', '', '', '', '', '', '');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, '', 'CAROL', 'DANVERS', 'F', 'carol@captainmarvel.com', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', '', 'DANVERS', 'F', 'carol@captainmarvel.com', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', '', 'F', 'carol@captainmarvel.com', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', '', 'carol@captainmarvel.com', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', '', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

--Testing default values

PROMPT Inserting data into the 'specialisms' table
INSERT INTO specialisms 
VALUES(seq_specialisms.NEXTVAL);

INSERT INTO specialisms 
VALUES(seq_specialisms.NEXTVAL, 'Project Manager', 'A person that is experienced in managing various aspects of a project.');

INSERT INTO specialisms 
VALUES(seq_specialisms.NEXTVAL, 'Accountant', 'A person that is experienced in managing the finances of a comapny');

INSERT INTO specialisms 
VALUES(seq_specialisms.NEXTVAL, 'IT Technician', 'A person that is experienced in troubleshooting and fixing issues with computers.');

INSERT INTO specialisms 
VALUES(seq_specialisms.NEXTVAL, 'Computer Programmer', 'A person that is experienced in creating programs/applications using a variety of programming languages.');

INSERT INTO specialisms 
VALUES(seq_specialisms.NEXTVAL, 'Marketing Assistant', 'A person that is experienced in producing marketing materials (E.g. advertisements, social media posts) for a company.');

PROMPT Commit changes
COMMIT;