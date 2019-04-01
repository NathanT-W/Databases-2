/*
* Alexander Turner (18416709), Aidan Rayner (18415915), Nathan Thomas-Williams (18410399)
* CSY1026 Databases 1 - Assignment 2
*/

-- @C:\Users\natht\Documents\GitHub\Databases-2\scripts\create_1.sql

--CREATE TABLES
--Create 'employees' table
PROMPT 'employees' table
CREATE TABLE employees(
employee_id NUMBER(8),
title VARCHAR2(4) NOT NULL,
firstname VARCHAR2(20) NOT NULL,
surname VARCHAR2(20) NOT NULL,
gender CHAR(1) NOT NULL,
email VARCHAR2(32) NOT NULL,
home_number CHAR(11) NOT NULL,
mobile_number CHAR(11) NOT NULL,
house_no CHAR(3) NOT NULL,
streetname VARCHAR2(20) NOT NULL,
city VARCHAR2(20) NOT NULL,
county VARCHAR2(20) NOT NULL,
postcode VARCHAR2(8) NOT NULL,
country CHAR(2) NOT NULL);

--Add default values to 'employees' table
PROMPT Default values for 'employees'
ALTER TABLE employees
MODIFY title DEFAULT 'MR';

ALTER TABLE employees
MODIFY gender DEFAULT 'M';

ALTER TABLE employees
MODIFY city DEFAULT 'NORTHAMPTON';

ALTER TABLE employees
MODIFY county DEFAULT 'NORTHAMPTONSHIRE';

ALTER TABLE employees
MODIFY postcode DEFAULT 'NN1 5PH';

ALTER TABLE employees
MODIFY country DEFAULT 'GB';

--Create 'specialisms' table
PROMPT 'specialisms' table
CREATE TABLE specialisms(
specialism_id NUMBER(8),
name VARCHAR2(20) NOT NULL,
description VARCHAR2(280) NOT NULL);

--Create 'employee_specialisms' table
PROMPT 'employee_specialisms' table
CREATE TABLE employee_specialisms(
employee_id NUMBER(8) NOT NULL,
specialism_id NUMBER(8) NOT NULL);

--Create 'projects' table
PROMPT 'projects' table
CREATE TABLE projects(
project_id NUMBER(8),
project_name VARCHAR2(20) NOT NULL,
project_aim VARCHAR2(100) NOT NULL,
project_start DATE NOT NULL,
project_end DATE NOT NULL,
project_budget NUMBER(10) NOT NULL);

--Create 'project_costs' table
PROMPT 'project_costs' table
CREATE TABLE project_costs(
project_cost NUMBER(8) NOT NULL,
employee_id NUMBER(8) NOT NULL,
project_id NUMBER(8) NOT NULL);

--Create 'resources' table
PROMPT 'resources' table
CREATE TABLE resources(
resource_id NUMBER(8),
resource_name VARCHAR2(20) NOT NULL,
resource_description VARCHAR2(50) NOT NULL,
resource_cost NUMBER(8) NOT NULL);

--Create 'project_resources' table
PROMPT 'project_resources' table
CREATE TABLE project_resources(
project_id NUMBER(8),
resource_id NUMBER(8) NOT NULL);

--Create 'project_teams' table
PROMPT 'project_teams' table
CREATE TABLE project_teams(
employee_id NUMBER(8) NOT NULL,
project_id NUMBER(8) NOT NULL);

--Create 'meetings' table
PROMPT 'meetings' table
CREATE TABLE meetings(
meeting_id NUMBER(8),
team_id NUMBER(13) NOT NULL,
meeting_date DATE NOT NULL);

--Create 'actions' table
PROMPT 'actions' table
CREATE TABLE actions(
action_id NUMBER(8),
meeting_id NUMBER(8) NOT NULL,
project_id NUMBER(8) NOT NULL,
description VARCHAR2(25),
owner_id NUMBER(8) NOT NULL,
deadline DATE NOT NULL);

--Create 'stages' table
PROMPT 'stages' table
CREATE TABLE stages(
stage_id NUMBER(5),
description VARCHAR2(30) NOT NULL,
date_due DATE NOT NULL);

--Create 'project_stages' table
PROMPT 'project_stages' table
CREATE TABLE project_stages(
project_id NUMBER(8) NOT NULL,
stage_id NUMBER(8) NOT NULL,
project_progress NUMBER(2) NOT NULL);

--CREATE SEQUENCES
--seq_employees
PROMPT Creating 'seq_employees' sequence
CREATE SEQUENCE seq_employees
INCREMENT BY 1
START WITH 00000001;

--seq_specialisms
PROMPT Creating 'seq_specialisms' sequence
CREATE SEQUENCE seq_specialisms
INCREMENT BY 1
START WITH 00000001;

--seq_meetings
PROMPT Creating 'seq_meetings' sequence
CREATE SEQUENCE seq_meetings
INCREMENT BY 1
START WITH 00000001;

--seq_actions
PROMPT Creating 'seq_actions' sequence
CREATE SEQUENCE seq_actions
INCREMENT BY 1
START WITH 00000001;

--seq_stages
PROMPT Creating 'seq_stages' sequence
CREATE SEQUENCE seq_stages
INCREMENT BY 1
START WITH 00001;

--seq_projects
PROMPT Creating 'seq_projects' sequence
CREATE SEQUENCE seq_projects
INCREMENT BY 1
START WITH 00000001;

--seq_resources
PROMPT Creating 'seq_resources' sequence
CREATE SEQUENCE seq_resources
INCREMENT BY 1
START WITH 00000001;

PROMPT Commit changes
COMMIT;