/*
* Alexander Turner (18416709), Aidan Rayner (18415915), Nathan Thomas-Williams (18410399)
* CSY1026 Databases 1 - Assignment 2
*/

-- @C:\Users\natht\Documents\GitHub\Databases-2\scripts\insert_1.sql

-- ///Inserting into Tables///
PROMPT Inserting data into the 'employees' table
INSERT INTO employees
VALUES(seq_employees.NEXTVAL, 'MR', 'ALEXANDER', 'TURNER', 'M', '18416709@MY.NORTHAMPTON.AC.UK', '01234567899', '99876543210', '101', 'RANDOM STREET', 'TOWCESTER', 'NORTHAMPTONSHIRE', 'NN128DD', 'GB');

INSERT INTO employees
VALUES(seq_employees.NEXTVAL, 'MR', 'AIDAN', 'RAYNER', 'M', '18415915@MY.NORTHAMPTON.AC.UK', '01234567899', '99876543210', '73', 'LADYSHOT', 'HARLOW', 'ESSEX', 'CM203EN', 'GB');

INSERT INTO employees
VALUES(seq_employees.NEXTVAL, 'MR', 'NATHAN', 'THOMAS-WILLIAMS', 'M', '18410399@MY.NORTHAMPTON.AC.UK', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NEATH', 'NEATH PORT TALBOT', 'SA111UR', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'JOHN', 'DOE', 'M', 'JOHN@DOE.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'JANE', 'DOE', 'F', 'JANE@DOE.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'TONY', 'STARK', 'M', 'TONY@STARKINDUSTRIES.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'SOFIA', 'SOFIA', '100', 'GB');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'BRUCE', 'BANNER', 'M', 'BRUCE@THEHULK.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'DAYTON', 'OHIO', '45402', 'US');

INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MR', 'STEVE', 'ROGERS', 'M', 'STEVE@CAPTAINAMERICA.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NEW YORK CITY', 'NEW YORK', '10002', 'US');

INSERT INTO employees
VALUES(seq_employees.NEXTVAL, 'MR', 'PETER', 'PARKER', 'M', 'PETER@SPIDERMAN.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NEW YORK CITY', 'NEW YORK', '11101', 'US');

INSERT INTO employees
VALUES(seq_employees.NEXTVAL, 'MR', 'MILES', 'MORALES', 'M', 'MILES@SPIDERMAN.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NEW YORK CITY', 'NEW YORK', '11201', 'US');


-- ///Testing NOT NULL constraints///
PROMPT Testing with ALL NULLs.
INSERT INTO employees 
VALUES(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

PROMPT Testing with NULL in second field.
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, NULL, 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

PROMPT Testing with NULL in third field.
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', NULL, 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

PROMPT Testing with NULL in fourth field.
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', NULL, 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

PROMPT Testing with NULL in fifth field.
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', NULL, 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

PROMPT Testing with NULL in sixth field.
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', NULL, '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

PROMPT Testing with NULL in seventh field.
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', NULL, '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

PROMPT Testing with NULL in eighth field.
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', NULL, '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

PROMPT Testing with NULL in ninth field.
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', NULL, 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

PROMPT Testing with NULL in tenth field.
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', NULL, 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

PROMPT Testing with NULL in eleventh field.
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', NULL, 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

PROMPT Testing with NULL in twelth field.
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', NULL, 'NN15PH', 'GB');

PROMPT Testing with NULL in thirteenth field.
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', NULL, 'GB');

PROMPT Testing with NULL in fourteenth field.
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', NULL);


-- ///Testing Check constraints///
PROMPT Testing non-capitalised email.
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'carol@captainmarvel.com', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

PROMPT Testing non-capitalised first name.
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'carol', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'NORTHAMPTONSHIRE', 'NN15PH', 'GB');

PROMPT Testing non-capitalised county.
INSERT INTO employees 
VALUES(seq_employees.NEXTVAL, 'MRS', 'CAROL', 'DANVERS', 'F', 'CAROL@CAPTAINMARVEL.COM', '01234567899', '99876543210', '101', 'RANDOM STREET', 'NORTHAMPTON', 'northamptonshire', 'NN15PH', 'GB');


-- ///Testing Default values///
PROMPT Testing default values by missing variables past the street name.
INSERT INTO employees (employee_id, firstname, surname, email, home_number, mobile_number, house_no, streetname)
VALUES (seq_employees.NEXTVAL, 'JOHN', 'APPLES', 'JOHN@DOE.COM', '01234567891', '0123456789', '300', 'STREET NAME');


-- ///Inserting Data///
PROMPT Inserting data into the 'specialisms' table
PROMPT Inserting "Project Manager" details.
INSERT INTO specialisms 
VALUES(seq_specialisms.NEXTVAL, 'Project Manager', 'A person that is experienced in managing various aspects of a project.');

PROMPT Inserting "Accountant" details.
INSERT INTO specialisms 
VALUES(seq_specialisms.NEXTVAL, 'Accountant', 'A person that is experienced in managing the finances of a comapny');

PROMPT Inserting "IT Technician" details.
INSERT INTO specialisms 
VALUES(seq_specialisms.NEXTVAL, 'IT Technician', 'A person that is experienced in troubleshooting and fixing issues with computers.');

PROMPT Inserting "Computer Programmer" details.
INSERT INTO specialisms 
VALUES(seq_specialisms.NEXTVAL, 'Computer Programmer', 'A person that is experienced in creating programs/applications using a variety of programming languages.');

PROMPT Inserting "Marketing Assistant" details.
INSERT INTO specialisms 
VALUES(seq_specialisms.NEXTVAL, 'Marketing Assistant', 'A person that is experienced in producing marketing materials (E.g. advertisements, social media posts) for a company.');


PROMPT Inserting data into the 'employee_specialisms' table
PROMPT Inserting values "1,1".
INSERT INTO employee_specialisms
VALUES(1, 1);

PROMPT Inserting values "2,2".
INSERT INTO employee_specialisms
VALUES(2, 2);

PROMPT Inserting values "3,4".
INSERT INTO employee_specialisms
VALUES(3, 4);

PROMPT Inserting values "4,3".
INSERT INTO employee_specialisms
VALUES(4, 3);

PROMPT Inserting values "5,5".
INSERT INTO employee_specialisms
VALUES(5, 5);


PROMPT Inserting data into 'projects' table
PROMPT Inserting "Office Construction" details.
INSERT INTO projects
VALUES (seq_projects.NEXTVAL, 'Office Construction', 'Construction of the new office building','20-APR-2019','15-NOV-2019');

PROMPT Inserting "Old Office Demolish" details.
INSERT INTO projects
VALUES (seq_projects.NEXTVAL, 'Old Office Demolish','Demolition of the old office building that is no longer required.','15-JAN-2020','25-MAR-2020');

PROMPT Inserting "Rebuild Car Park" details.
INSERT INTO projects
VALUES (seq_projects.NEXTVAL, 'Rebuild Car Park','Rebuilding of the office car park, which was falling into disrepair.','16-NOV-2019','20-NOV-2019');

PROMPT Inserting "Printer Installation" details.
INSERT INTO projects
VALUES (seq_projects.NEXTVAL, 'Printer Installation','Installation of new fleet of printers.','25-NOV-2019','26-NOV-2019');

PROMPT Inserting "Office Supplies" details.
INSERT INTO projects
VALUES (seq_projects.NEXTVAL, 'Office Supplies','Ordering and storing more office supplies (paper, pens, etc.)','1-DEC-2019','5-DEC-2019');

PROMPT Inserting data into 'resources' table
PROMPT Inserting "Printer Paper" details.
INSERT INTO resources
VALUES(seq_resources.NEXTVAL,'Printer Paper','Paper for the printers. 500 ream pack, 1 each.','0002.50');

PROMPT Inserting "BiC Pens" details.
INSERT INTO resources
VALUES(seq_resources.NEXTVAL,'BiC Pens','BiC rollerball pens. Box of 100.','0005.00');

PROMPT Inserting "Staples" details.
INSERT INTO resources
VALUES(seq_resources.NEXTVAL,'Staples','Staples for staplers. Box of 5000.','0005.00');

PROMPT Inserting "Post-It Notes" details.
INSERT INTO resources
VALUES(seq_resources.NEXTVAL,'Post-It Notes','Pack of Post-It notes. 700 note pack.','0010.00');

PROMPT Inserting "Whiteboard Markers" details.
INSERT INTO resources
VALUES(seq_resources.NEXTVAL,'Whiteboard Markers','Pack of Staedtler colour markers, 8 per pack.','0010.58');


PROMPT Inserting data into 'project_resources' table
PROMPT Inserting values "1,1".
INSERT INTO project_resources
VALUES (1,1);

PROMPT Inserting values "2,2".
INSERT INTO project_resources
VALUES (2,2);

PROMPT Inserting values "3,3".
INSERT INTO project_resources
VALUES (3,3);

PROMPT Inserting values "4,4".
INSERT INTO project_resources
VALUES (4,4);

PROMPT Inserting values "5,5".
INSERT INTO project_resources
VALUES (5,5);


PROMPT Inserting data into the 'project_teams' table
PROMPT Inserting IDs and values "3,1".
INSERT INTO project_teams
VALUES(seq_teams.NEXTVAL, 3, 1);

PROMPT Inserting IDs and values "2,1".
INSERT INTO project_teams
VALUES (seq_teams.CURRVAL, 2, 1);

PROMPT Inserting IDs and values "1,1".
INSERT INTO project_teams
VALUES (seq_teams.CURRVAL, 1, 1);

PROMPT Inserting IDs and values "5,2".
INSERT INTO project_teams
VALUES (seq_teams.NEXTVAL, 5, 2);

PROMPT Inserting IDs and values "4,2".
INSERT INTO project_teams
VALUES (seq_teams.CURRVAL, 4, 2);


PROMPT Inserting data into the 'project_costs' table
PROMPT Inserting IDs and values "7500.00,1".
INSERT INTO project_costs
VALUES(seq_costs.NEXTVAL ,7500.00, 1);

PROMPT Inserting IDs and values "8545.00,2".
INSERT INTO project_costs
VALUES(seq_costs.NEXTVAL, 8545.00, 2);

PROMPT Inserting IDs and values "6535.64,3".
INSERT INTO project_costs
VALUES(seq_costs.NEXTVAL, 6535.64, 3);

PROMPT Inserting IDs and values "1407.07,4".
INSERT INTO project_costs
VALUES(seq_costs.NEXTVAL, 1407.07, 4);

PROMPT Inserting IDs and values "7025.00,5".
INSERT INTO project_costs
VALUES(seq_costs.NEXTVAL, 7025.00, 5);


PROMPT Inserting data into the 'stages' table
PROMPT Inserting "Initial Concept Design" details.
INSERT INTO stages
VALUES(seq_stages.NEXTVAL, 'Initial Concept Design', '24-APR-2019', '24-MAY-2019');

PROMPT Inserting "Final Concept Design" details.
INSERT INTO stages
VALUES(seq_stages.NEXTVAL, 'Final Concept Design', '24-MAY-2019', '24-JUN-2019');

PROMPT Inserting "Initial Prototype" details.
INSERT INTO stages
VALUES(seq_stages.NEXTVAL, 'Initial Prototype', '24-JUN-2019', '24-JUL-2019');

PROMPT Inserting "Final Prototype" details.
INSERT INTO stages
VALUES(seq_stages.NEXTVAL, 'Final Prototype', '24-JUL-2019', '24-AUG-2019');

PROMPT Inserting "Final Build" details.
INSERT INTO stages
VALUES(seq_stages.NEXTVAL, 'Final Build', '24-AUG-2019', '24-SEP-2019');


PROMPT Inserting data into the 'project_stages' table
PROMPT Inserting values "1,1".
INSERT INTO project_stages
VALUES(1, 1);

PROMPT Inserting values "1,2".
INSERT INTO project_stages
VALUES(1, 2);

PROMPT Inserting values "2,3".
INSERT INTO project_stages
VALUES(2, 3);

PROMPT Inserting values "2,4".
INSERT INTO project_stages
VALUES(2, 4);

PROMPT Inserting values "2,5".
INSERT INTO project_stages
VALUES(2, 5);


PROMPT Inserting data into the 'meetings' table
PROMPT Inserting IDs and values "1,1", with date "24-APR-2019'".
INSERT INTO meetings
VALUES(seq_meetings.NEXTVAL, 1, 1, '24-APR-2019');

PROMPT Inserting IDs and values "2,1", with date "23-JAN-2019".
INSERT INTO meetings
VALUES(seq_meetings.NEXTVAL, 2, 1, '23-JAN-2019');

PROMPT Inserting IDs and values "3,1", with date "15-FEB-2019".
INSERT INTO meetings
VALUES(seq_meetings.NEXTVAL, 3, 1, '15-FEB-2019');

PROMPT Inserting IDs and values "4,2", with date "29-MAR-2019".
INSERT INTO meetings
VALUES(seq_meetings.NEXTVAL, 4, 2, '29-MAR-2019');

PROMPT Inserting IDs and values "5,2", with date "19-JAN-2019".
INSERT INTO meetings
VALUES(seq_meetings.NEXTVAL, 5, 2, '19-JAN-2019');


PROMPT Inserting data into the 'actions' table
PROMPT Inserting "Increase Project Budget" details.
INSERT INTO actions
VALUES(seq_actions.NEXTVAL, 1, 'Decided to increase project budget', '04-MAY-2019');

PROMPT Inserting "Decrease Project Budget" details.
INSERT INTO actions
VALUES(seq_actions.NEXTVAL, 2, 'Decided to decrease project budget', '25-JAN-2019');

PROMPT Inserting "Road Line Repaint" details.
INSERT INTO actions
VALUES(seq_actions.NEXTVAL, 3, 'Decided to repaint road lines', '15-MAR-2019');

PROMPT Inserting "Rearrange Office" details.
INSERT INTO actions
VALUES(seq_actions.NEXTVAL, 4, 'Decided to rearrange office', '05-MAY-2019');

PROMPT Inserting "Storage Capacity Increase" details.
INSERT INTO actions
VALUES(seq_actions.NEXTVAL, 1, 'Decided to increase storage capacity of building', '07-JUL-2019');

-- ///Commit all changes///
PROMPT Commit changes
COMMIT;