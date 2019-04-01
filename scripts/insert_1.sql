/*
* Alexander Turner (18416709), Aidan Rayner (18415915), Nathan Thomas-Williams (18410399), Nathan Segnitz (18412790)
* CSY1026 Databases 1 - Assignment 2
*/

-- @C:\Users\natht\Documents\GitHub\Databases-2\scripts\insert_1.sql

--INSERT INTO TABLES
PROMPT Inserting data into the 'employees' table
--Inserting properly formatted data
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'JOHN', 'DOE', 'M', 'JOHN@DOE.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'JANE', 'DOE', 'F', 'JANE@DOE.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'TONY', 'STARK', 'M', 'TONY@STARKINDUSTRIES.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'BRUCE', 'BANNER', 'M', 'BRUCE@THEHULK.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'STEVE', 'ROGERS', 'M', 'STEVE@CAPTAINAMERICA.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

--Testing NOT NULL constraints
INSERT INTO employees 
VALUES(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, NULL, 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', NULL, 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', NULL, 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', NULL, 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', NULL, '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', NULL, '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', NULL, '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', NULL, 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', NULL, 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', NULL, 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', NULL, 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', NULL, 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', NULL);

--Testing CHECK constraints
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'carol@captainmarvel.com', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'carol', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'northamptonshire', 'NN15PH', 'GB');

--Testing DEFAULT values
INSERT INTO employees (employee_id, firstname, surname, email, home_number, mobile_number, house_no, streetname)
VALUES (seq_employees.NEXTVAL, 'JOHN', 'DOE', 'JOHN@DOE.COM', '01234567891', '0123456789', '300', 'STREET NAME');


PROMPT Inserting data into the 'specialisms' table
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


PROMPT Inserting data into the 'employee_specialisms' table
INSERT INTO employee_specialisms
VALUES(1, 1);

INSERT INTO employee_specialisms
VALUES(2, 2);

INSERT INTO employee_specialisms
VALUES(3, 4);

INSERT INTO employee_specialisms
VALUES(4, 3);

INSERT INTO employee_specialisms
VALUES(5, 5);

--Commit changes

PROMPT Commit changes

PROMPT Inserting data into the 'project_costs' table
INSERT INTO project_costs
VALUES(project_costs, 'Project Cost', '£7,500',)

INSERT INTO project_costs
VALUES(employee_id.NEXTVAL,)

INSERT INTO project_costs
VALUES(project_id.NEXTVAL,)

INSERT INTO project_costs
VALUES('','')

INSERT INTO project_costs
VALUES('Project Cost', '')

INSERT INTO project_costs
VALUES('', '£7,500')

PROMPT Inserting data into the 'project_stages' table
INSERT INTO project_stages
VALUES(project_id.NEXTVAL)

INSERT INTO project_stages
VALUES(stage_id.NEXTVAL)

INSERT INTO project_stages
VALUES('Project Progress', '75')

INSERT INTO project_stages
VALUES(NULL, NULL)

INSERT INTO project_stages
VALUES('Project Progress', NULL)

INSERT INTO project_stages
VALUES(NULL, '75')

PROMPT Inserting data into the 'stages' table
INSERT INTO stages
VALUES(stage_id.NEXTVAL)

INSERT INTO stages
VALUES('Design', 'This is the part where the developers design the layout for the database including each of the primary and foriegn keys')

INSERT INTO stages
VALUES('Creating the database', 'This is the part where the developers create the database, setup all the constraints, the primary and foriegn key')

INSERT INTO stages
VALUES('Date Due', '22/04/19')

PROMPT Commit changes
COMMIT;