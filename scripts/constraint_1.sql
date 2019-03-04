/*
* Alexander Turner (18416709), Aidan Rayner (), Nathan Thomas-Williams (18410399), Nathan Segnitz ()
* CSY1026 Databases 1 - Assignment 2
*/

--CREATE Primary Keys
PROMPT Primary Key 'employees' table
ALTER TABLE employees
ADD CONSTRAINT pk_employees
PRIMARY KEY (employee_id);

PROMPT Primary Key 'specialisms' table
ALTER TABLE specialisms
ADD CONSTRAINT pk_specialisms
PRIMARY KEY (specialism_id);

PROMPT Primary Key 'employee_specialisms' table
ALTER TABLE employee_specialisms
ADD CONSTRAINT pk_employee_specialisms
PRIMARY KEY (employee_id, specialism_id);

PROMPT Primary Key 'project_teams' table
ALTER TABLE project_teams
ADD CONSTRAINT pk_project_teams
PRIMARY KEY(employee_id, project_id);

PROMPT Primary Key 'meetings' table
ALTER TABLE meetings
ADD CONSTRAINT pk_meetings
PRIMARY KEY (meeting_id);

PROMPT Primary Key 'actions' table
ALTER TABLE actions
ADD CONSTRAINT pk_actions
PRIMARY KEY (action_id);

--CREATE Foreign Keys
PROMPT Foreign Keys 'employee_specialisms' table
ALTER TABLE employee_specialisms
ADD CONSTRAINT fk_e_employee_specialisms
FOREIGN KEY (employee_id)
REFERENCES employees(employee_id);

ALTER TABLE employee_specialisms
ADD CONSTRAINT fk_s_employee_specialisms
FOREIGN KEY (specialism_id)
REFERENCES specialisms(specialism_id);


--CREATE CHECK Constraints
PROMPT Creating check constraints for the 'employees' table
ALTER TABLE employees
ADD CONSTRAINT ck_title
CHECK (title = UPPER(title));

ALTER TABLE employees
ADD CONSTRAINT ck_surname
CHECK (surname = UPPER(surname));

ALTER TABLE employees
ADD CONSTRAINT ck_firstname
CHECK (firstname = UPPER(firstname));

ALTER TABLE employees
ADD CONSTRAINT ck_firstname
CHECK (firstname = UPPER(firstname));

ALTER TABLE employees
ADD CONSTRAINT ck_streetname
CHECK (streetname = UPPER(streetname));

ALTER TABLE employees
ADD CONSTRAINT ck_city
CHECK (city = UPPER(city));

ALTER TABLE employees
ADD CONSTRAINT ck_county
CHECK (county = UPPER(county));

ALTER TABLE employees
ADD CONSTRAINT ck_postcode
CHECK (postcode = UPPER(postcode));

ALTER TABLE employees
ADD CONSTRAINT ck_country
CHECK (country = UPPER(country));

PROMPT Commit changes
COMMIT;
