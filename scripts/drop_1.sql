/*
* Alexander Turner (18416709), Aidan Rayner (18415915), Nathan Thomas-Williams (18410399)
* CSY1026 Databases 1 - Assignment 2
*/

-- @C:\Users\natht\Documents\GitHub\Databases-2\scripts\drop_1.sql

-- ///Drop Sequences///

PROMPT Dropping sequence 'seq_teams'
DROP SEQUENCE seq_teams;
PROMPT Dropping sequence 'seq_costs'
DROP SEQUENCE seq_costs;
PROMPT Dropping sequence 'seq_resources'
DROP SEQUENCE seq_resources;
PROMPT Dropping sequence 'seq_projects'
DROP SEQUENCE seq_projects;
PROMPT Dropping sequence 'seq_stages'
DROP SEQUENCE seq_stages;
PROMPT Dropping sequence 'seq_actions'
DROP SEQUENCE seq_actions;
PROMPT Dropping sequence 'seq_meetings'
DROP SEQUENCE seq_meetings;
PROMPT Dropping sequence 'seq_specialisms'
DROP SEQUENCE seq_specialisms;
PROMPT Dropping sequence 'seq_employees'
DROP SEQUENCE seq_employees;

-- ///Drop Foreign Keys///

-- Drop 'actions' Foreign Keys
PROMPT Dropping 'actions' Foreign Keys
ALTER TABLE actions
DROP CONSTRAINT fk_a_meetings;

-- Drop 'meetings' Foreign Keys
PROMPT Dropping 'meetings' Foreign Keys
ALTER TABLE meetings
DROP CONSTRAINT fk_m_teams;

ALTER TABLE meetings
DROP CONSTRAINT fk_m_project_stages;

-- Drop 'project_stages' Foreign Keys
PROMPT Dropping 'project_stages' Foreign Keys
ALTER TABLE project_stages
DROP CONSTRAINT fk_ps_projects;

ALTER TABLE project_stages
DROP CONSTRAINT fk_ps_stages;

-- Drop 'project_costs' Foreign Keys
PROMPT Dropping 'project_costs' Foreign Keys

ALTER TABLE project_costs
DROP CONSTRAINT fk_pc_projects;

-- Drop 'project_resources' Foreign Keys
PROMPT Dropping 'project_resources' Foreign Keys 
ALTER TABLE project_resources
DROP CONSTRAINT fk_pr_projects;

ALTER TABLE project_resources
DROP CONSTRAINT fk_pr_resources;

-- Drop 'project_teams' Foreign Keys
PROMPT Dropping'project_teams' Foreign Keys
ALTER TABLE project_teams
DROP CONSTRAINT fk_pt_employees;

ALTER TABLE project_teams
DROP CONSTRAINT fk_pt_projects;

-- Drop 'employee_specialisms' Foreign Keys
PROMPT Dropping 'employee_specialisms' Foreign Keys
ALTER TABLE employee_specialisms
DROP CONSTRAINT fk_es_employees;

ALTER TABLE employee_specialisms
DROP CONSTRAINT fk_es_specialisms;

-- ///Drop Primary Keys///

-- Drop 'project_costs' Primary Key
PROMPT Dropping 'Project_costs' Primary Key
ALTER TABLE project_costs
DROP CONSTRAINT pk_project_costs;

-- Drop 'actions' Primary Key
PROMPT Dropping 'actions' Primary Key
ALTER TABLE actions
DROP CONSTRAINT pk_actions;

-- Drop 'meetings' Primary Key
PROMPT Dropping 'meetings' Primary Key
ALTER TABLE meetings
DROP CONSTRAINT pk_meetings;

-- Drop 'project_stages' Primary Key
PROMPT Dropping 'Project_stages' Primary Key
ALTER TABLE project_stages
DROP CONSTRAINT pk_project_stages;

-- Drop 'stages' Primary Key
PROMPT Dropping 'Stages' Primary Key
ALTER TABLE stages
DROP CONSTRAINT pk_stages;

-- Drop 'resources' Primary Key
PROMPT Dropping 'Resources' Primary Key
ALTER TABLE resources
DROP CONSTRAINT pk_resources;

-- Drop 'project_resources' Primary Key
PROMPT Dropping 'Project_resources' Primary Key
ALTER TABLE project_resources
DROP CONSTRAINT pk_project_resources;

-- Drop 'project_teams' Primary Key
PROMPT Dropping 'project_teams' Primary Key
ALTER TABLE project_teams
DROP CONSTRAINT pk_project_teams;

-- Drop 'projects' Primary Key
PROMPT Dropping 'Projects' Primary Key
ALTER TABLE projects
DROP CONSTRAINT pk_projects;

-- Drop 'employee_specialisms' Primary Key
PROMPT Dropping 'Employee_specialisms' Primary Key
ALTER TABLE employee_specialisms
DROP CONSTRAINT pk_employee_specialisms;

-- Drop 'specialisms' Primary Key
PROMPT Dropping 'Specialisms' Primary Key
ALTER TABLE specialisms
DROP CONSTRAINT pk_specialisms;

-- Drop 'employees' Primary Key
PROMPT Dropping 'Employees' Primary Key
ALTER TABLE employees
DROP CONSTRAINT pk_employees;

-- ///Drop Tables///

-- Drop 'actions' table
PROMPT Dropping 'actions' table
DROP TABLE actions;

-- Drop 'meetings' table
PROMPT Dropping 'meetings' table
DROP TABLE meetings;

-- Drop 'project_stages' table
PROMPT Dropping 'project_stages' table
DROP TABLE project_stages;

-- Drop 'stages' table
PROMPT Dropping 'stages' table
DROP TABLE stages;

-- Drop 'project_teams' table
PROMPT Dropping 'project_teams' table
DROP TABLE project_teams;

-- Drop 'project_resources
PROMPT Dropping 'project_resources' table
DROP TABLE project_resources;

-- Drop 'resources' table
PROMPT Dropping 'resources' table
DROP TABLE resources;

-- Drop 'project_costs' table
PROMPT Dropping 'project_costs' table
DROP TABLE project_costs;

-- Drop 'projects' table
PROMPT Dropping 'projects' table
DROP TABLE projects;

-- Drop 'employee_specialisms' table
PROMPT Dropping 'employee_specialisms' table
DROP TABLE employee_specialisms;

-- Drop 'specialisms' table
PROMPT Dropping 'specialisms' table
DROP TABLE specialisms;

-- Drop 'employees' table
PROMPT Dropping 'employees' table
DROP TABLE employees;

-- ///Purge Recycle Bin///
PROMPT Purge recyclebin
PURGE RECYCLEBIN;

-- ///Commit all changes to Database///
PROMPT Commit changes
COMMIT;