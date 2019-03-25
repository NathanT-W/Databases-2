/*
* Alexander Turner (18416709), Aidan Rayner (), Nathan Thomas-Williams (18410399), Nathan Segnitz ()
* CSY1026 Databases 1 - Assignment 2
*/

-- DROP Foreign Keys
PROMPT Dropping 'fk_e_employee_specialisms' Foriegn Keys
DROP CONSTRAINT fk_e_employee_specialisms;

DROP CONSTRAINT fk_e_employee_specialisms;

-- DROP Primary Keys
PROMPT Dropping 'project_teams' Primary Key
DROP CONSTRAINT pk_project_teams;

PROMPT Dropping 'actions' Primary Key
DROP CONSTRAINT pk_actions;

PROMPT Dropping 'meetings' Primary Key
DROP CONSTRAINT pk_meetings;

PROMPT Dropping 'pk_employees' Primary Key
DROP CONSTRAINT pk_employees;

PROMPT Dropping 'pk_specialisms' Primary Key
DROP CONSTRAINT pk_specialisms;

PROMPT Dropping 'pk_employee_specialisms' Primary Key
DROP CONSTRAINT pk_employee_specialisms;

--DROP TABLES
--Drop 'employee_specialisms' table
PROMPT Dropping 'employee_specialisms' table
DROP TABLE employee_specialisms;

--Drop 'specialisms' table
PROMPT Dropping 'specialisms' table
DROP TABLE specialisms;

-- Drop 'actions' table
PROMPT Dropping 'actions' table
DROP TABLE actions;

-- Drop 'meetings' table
PROMPT Dropping 'meetings' table
DROP TABLE meetings;

-- Drop 'project_teams' table
PROMPT Dropping 'project_teams' table
DROP TABLE project_teams;

-- Drop 'project_resources
PROMPT Dropping 'project_resources' table
DROP TABLE project_resources;

-- Drop 'resources' table
PROMPT Dropping 'resources' table
DROP TABLE resources;

-- Drop 'projects' table
PROMPT Dropping 'projects' table
DROP TABLE projects;

--Drop 'employees' table
PROMPT Dropping 'employees' table
DROP TABLE employees;

PROMPT Purge recyclebin
PURGE RECYCLEBIN;

PROMPT Commit changes
COMMIT;