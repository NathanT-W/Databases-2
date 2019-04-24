/*
* Alexander Turner (18416709), Aidan Rayner (18415915), Nathan Thomas-Williams (18410399)
* CSY1026 Databases 1 - Assignment 2
*/

-- @C:\Users\natht\Documents\GitHub\Databases-2\scripts\insert_1.sql

--INSERT INTO TABLES

PROMPT Inserting data into the 'employees' table

--Inserting properly formatted data
INSERT INTO employees
VALUES(seq_employees.NEXTVAL, 'MR', 'ALEXANDER', 'TURNER', 'M', '18416709@MY.NORTHAMPTON.AC.UK', '01234567899', '99876543210', '101', 'RANDOM STREET', 'TOWCESTER', 'NORTHAMPTONSHIRE', 'NN128DD', 'GB');

INSERT INTO employees
VALUES(seq_employees.NEXTVAL, 'MR', 'AIDAN', 'RAYNER', 'M', '18415915@MY.NORTHAMPTON.AC.UK', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees
VALUES(seq_employees.NEXTVAL, 'MR', 'NATHAN', 'THOMAS-WILLIAMS', 'M', '18410399@MY.NORTHAMPTON.AC.UK', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NEATH', 'NEATH PORT TALBOT', 'SA111UR', 'GB')

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'JOHN', 'DOE', 'M', 'JOHN@DOE.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'JANE', 'DOE', 'F', 'JANE@DOE.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'TONY', 'STARK', 'M', 'TONY@STARKINDUSTRIES.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'SOFIA', 'SOFIA', '100', 'BG');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'BRUCE', 'BANNER', 'M', 'BRUCE@THEHULK.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'DAYTON', 'OHIO', '45402', 'US');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'STEVE', 'ROGERS', 'M', 'STEVE@CAPTAINAMERICA.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NEW YORK CITY', 'NEW YORK', '10002', 'US');

INSERT INTO employees
VALUES(seq_employees.NEXTVAL, 'MR', 'PETER', 'PARKER', 'M', 'PETER@SPIDERMAN.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NEW YORK CITY', 'NEW YORK', '11101', 'US');

INSERT INTO employees
VALUES(seq_employees.NEXTVAL, 'MR', 'MILES', 'MORALES', 'M', 'MILES@SPIDERMAN.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NEW YORK CITY', 'NEW YORK', '11201', 'US');

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

PROMPT Inserting data into the 'project_costs' table

--Inserting properly formatted data

INSERT INTO project_costs
VALUES(seq_costs.NEXTVAL ,750000.00, 00000001);

INSERT INTO project_costs
VALUES(seq_costs.NEXTVAL, 850045.00, 00000002);

INSERT INTO project_costs
VALUES(seq_costs.NEXTVAL, 632535.64, 00000003);

INSERT INTO project_costs
VALUES(seq_costs.NEXTVAL, 148507.07, 00000004);

INSERT INTO project_costs
VALUES(seq_costs.NEXTVAL, 750025.00, 00000005);

PROMPT Inserting data into the 'stages' table

--Inserting properly formatted data

INSERT INTO stages
VALUES(seq_stages.NEXTVAL, 'Initial Concept Design');

INSERT INTO stages
VALUES(seq_stages.NEXTVAL, 'Final Concept Design');

INSERT INTO stages
VALUES(seq_stages.NEXTVAL, 'Initial Prototype');

INSERT INTO stages
VALUES(seq_stages.NEXTVAL, 'Final Prototype');

INSERT INTO stages
VALUES(seq_stages.NEXTVAL, 'Final Build');

PROMPT Inserting data into the 'project_stages' table

--Inserting properly formatted data

INSERT INTO project_stages
VALUES(00000001, 00001);

INSERT INTO project_stages
VALUES(00000001, 00002);

INSERT INTO project_stages
VALUES(00000002, 00004);

INSERT INTO project_stages
VALUES(00000004, 00003);

INSERT INTO project_stages
VALUES(00000005, 00005);

PROMPT Inserting data into the 'meetings' table

--Inserting properly formatted data

INSERT INTO meetings
VALUES(seq_meetings.NEXTVAL, 00000001, 0000100000001, '24-APR-2019');

INSERT INTO meetings
VALUES(seq_meetings.NEXTVAL, 00000002, 0000100000002, '23-JAN-2019');

INSERT INTO meetings
VALUES(seq_meetings.NEXTVAL, 00000003, 0000200000003, '15-FEB-2019');

INSERT INTO meetings
VALUES(seq_meetings.NEXTVAL, 00000002, 0000100000005, '29-MAR-2019');

INSERT INTO meetings
VALUES(seq_meetings.NEXTVAL, 00000004, 0000300000004, '19-JAN-2019');

PROMPT Inserting data into the 'actions' table

--Inserting properly formatted data

INSERT INTO actions
VALUES(seq_actions.NEXTVAL, 00000001, 'Decided to increase project budget', 00000003, '04-MAY-2019');

INSERT INTO actions
VALUES(seq_actions.NEXTVAL, 00000002, 'Decided to decrease project budget', 00000004, '25-JAN-2019');

INSERT INTO actions
VALUES(seq_actions.NEXTVAL, 00000003, 'Decided to repaint road lines', 00000005, '15-MAR-2019');

INSERT INTO actions
VALUES(seq_actions.NEXTVAL, 00000004, 'Decided to rearrange office', 00000001, '05-MAY-2019');

INSERT INTO actions
VALUES(seq_actions.NEXTVAL, 00000005, 'Decided to increase storage capacity', 00000002, '07-JUL-2019');

PROMPT Inserting data into 'projects' table

INSERT INTO projects
VALUES (seq_projects.NEXTVAL, 'Office Construction', 'Construction of the new office building','20-APR-2019','15-NOV-2019');

INSERT INTO projects
VALUES (seq_projects.NEXTVAL, 'Old Office Demolish','Demolition of the old office building that is no longer required.','15-JAN-2020','25-MAR-2020');

INSERT INTO projects
VALUES (seq_projects.NEXTVAL, 'Rebuild Car Park','Rebuilding of the office car park, which was falling into disrepair.','16-NOV-2019','20-NOV-2019');

INSERT INTO projects
VALUES (seq_projects.NEXTVAL, 'Printer installation','Installation of new fleet of printers.','25-NOV-2019','26-NOV-2019');

INSERT INTO projects
VALUES (seq_projects.NEXTVAL, 'Office Supplies','Ordering and storing more office supplies (paper, pens, etc.)','1-DEC-2019','5-DEC-2019');

--Commit changes

PROMPT Commit changes
COMMIT;