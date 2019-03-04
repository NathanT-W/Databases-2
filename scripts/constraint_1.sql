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

PROMPT Primary key 'employee_specialisms' table
ALTER TABLE employee_specialisms
ADD CONSTRAINT pk_employee_specialisms
PRIMARY KEY (employee_id, specialism_id);

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