/*
* Alexander Turner (18416709), Aidan Rayner (), Nathan Thomas-Williams (18410399), Nathan Segnitz ()
* CSY1026 Databases 1 - Assignment 2
*/

--CREATE TABLES
--Create 'employees' table
PROMPT Creating 'employees' table
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

-- Create 'projects' table

-- Create 'project_teams' table
PROMPT Creating 'project_teams' table
CREATE TABLE project_teams(
employee_id NUMBER(8) NOT NULL,
project_id NUMBER(8) NOT NULL);

-- Create 'meetings' table
PROMPT Creating 'meetings' table
CREATE TABLE meetings(
meeting_id NUMBER(5),
team_id NUMBER(13) NOT NULL,
meeting_date DATE NOT NULL);

-- Create 'actions' table
PROMPT Creating 'actions' table
CREATE TABLE actions(
action_id NUMBER(5),
meeting_id NUMBER(5) NOT NULL,
project_id NUMBER(8) NOT NULL,
description VARCHAR2(25),
owner_id NUMBER(8) NOT NULL,
deadline DATE NOT NULL);

--Create 'specialisms' table
PROMPT Creating 'specialisms' table
CREATE TABLE specialisms(
specialism_id NUMBER(8),
name VARCHAR2(20) NOT NULL,
description VARCHAR2(280) NOT NULL);

--Create 'employee_specialisms' table
PROMPT Creating 'employee_specialisms' table
CREATE TABLE employee_specialisms(
employee_id NUMBER(8),
specialism_id NUMBER(8));

--CREATE SEQUENCES
--seq_employees
CREATE SEQUENCE seq_employees
INCREMENT BY 1
START WITH 00000001;