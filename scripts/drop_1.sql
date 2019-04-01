/*
* Alexander Turner (18416709), Aidan Rayner (18415915), Nathan Thomas-Williams (18410399)
* CSY1026 Databases 1 - Assignment 2
*/

-- @C:\Users\natht\Documents\GitHub\Databases-2\scripts\drop_1.sql

-- DROP Sequences

DROP SEQUENCE seq_actions;
DROP SEQUENCE seq_employees;
DROP SEQUENCE seq_meetings;
DROP SEQUENCE seq_projects;
DROP SEQUENCE seq_resources;
DROP SEQUENCE seq_specialisms;
DROP SEQUENCE seq_stages;

-- DROP Foreign Keys

-- Drop 'employee_specialisms' Foreign Keys
PROMPT Dropping 'employee_specialisms' Foreign Keys
ALTER TABLE employee_specialisms
DROP CONSTRAINT fk_es_employees;

ALTER TABLE employee_specialisms
DROP CONSTRAINT fk_es_specialisms;

-- Drop 'project_teams' Foreign Keys
PROMPT Dropping'project_teams' Foreign Keys
ALTER TABLE project_teams
DROP CONSTRAINT fk_pt_employees;

ALTER TABLE project_teams
DROP CONSTRAINT fk_pt_projects;

-- Drop 'project_resources' Foreign Keys
PROMPT Dropping 'project_resources' Foreign Keys 
ALTER TABLE project_resources
DROP CONSTRAINT fk_pr_projects;

ALTER TABLE project_resources
DROP CONSTRAINT fk_pr_resources;

-- Drop 'project_costs' Foreign Keys
PROMPT Dropping 'project_costs' Foreign Keys
ALTER TABLE project_costs
DROP CONSTRAINT fk_pc_employees;

ALTER TABLE project_costs
DROP CONSTRAINT fk_pc_projects;

-- Drop 'project_stages' Foreign Keys
PROMPT Dropping 'project_stages' Foreign Keys
ALTER TABLE project_stages
DROP CONSTRAINT fk_ps_projects;

ALTER TABLE project_stages
DROP CONSTRAINT fk_ps_stages;

-- DROP Primary Keys
--Drop 'project_teams' Primary Key
PROMPT Dropping 'project_teams' Primary Key
ALTER TABLE project_teams
DROP CONSTRAINT pk_project_teams;

--Drop 'actions' Primary Key'
PROMPT Dropping 'actions' Primary Key
ALTER TABLE actions
DROP CONSTRAINT pk_actions;

--Drop 'meetings' Primary Key
PROMPT Dropping 'meetings' Primary Key
ALTER TABLE meetings
DROP CONSTRAINT pk_meetings;

--Drop 'projects' Primary Key
PROMPT Dropping 'projects' Primary Key
ALTER TABLE projects
DROP CONSTRAINT pk_projects;

--Drop 'employees' Primary Key
PROMPT Dropping 'employees' Primary Key
ALTER TABLE employees
DROP CONSTRAINT pk_employees;

--Drop 'specialisms' Primary Key
PROMPT Dropping 'specialisms' Primary Key
ALTER TABLE specialisms
DROP CONSTRAINT pk_specialisms;

--Drop 'employee_specialisms' Primary Key
PROMPT Dropping 'employee_specialisms' Primary Key
ALTER TABLE employee_specialisms
DROP CONSTRAINT pk_employee_specialisms;

--Drop 'stages' Primary Key
PROMPT Dropping 'stages' Primary Key
ALTER TABLE stages
DROP CONSTRAINT pk_stages;

--Drop 'project_stages' Primary Key
PROMPT Dropping 'project_stages' Primary Key
ALTER TABLE project_stages
DROP CONSTRAINT pk_project_stages;

--Drop 'project_costs' Primary Key
PROMPT Dropping 'project_costs' Primary Key
ALTER TABLE project_costs
DROP CONSTRAINT pk_project_costs;

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

--Drop 'stages' table
PROMPT Dropping 'stages' table
DROP TABLE stages;

--Drop 'project_stages' table
PROMPT Dropping 'project_stages' table
DROP TABLE project_stages;

--Drop 'project_costs' table
PROMPT Dropping 'project_costs' table
DROP TABLE project_costs;

PROMPT Purge recyclebin
PURGE RECYCLEBIN;

PROMPT Commit changes
COMMIT;