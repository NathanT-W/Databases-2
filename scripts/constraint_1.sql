/*
* Alexander Turner (18416709), Aidan Rayner (18415915), Nathan Thomas-Williams (18410399)
* CSY1026 Databases 1 - Assignment 2
*/

-- @C:\Users\natht\Documents\GitHub\Databases-2\scripts\constraint_1.sql

-- ///Create Primary Keys///
PROMPT Primary Key 'employees' table
ALTER TABLE employees
ADD CONSTRAINT pk_employees
PRIMARY KEY (employee_id);

-- Create 'pk_specialisms' primary key
PROMPT Primary Key 'specialisms' table
ALTER TABLE specialisms
ADD CONSTRAINT pk_specialisms
PRIMARY KEY (specialism_id);

-- Create 'pk_employee_specialisms' compound primary key
PROMPT Primary Key 'employee_specialisms' table
ALTER TABLE employee_specialisms
ADD CONSTRAINT pk_employee_specialisms
PRIMARY KEY (employee_id, specialism_id);

-- Create 'pk_projects' primary key
PROMPT Primary Key 'projects' table
ALTER TABLE projects
ADD CONSTRAINT pk_projects
PRIMARY KEY (project_id);

-- Create 'pk_project_teams' primary key
PROMPT Primary Key 'project_teams' table
ALTER TABLE project_teams
ADD CONSTRAINT pk_project_teams
PRIMARY KEY(employee_id, team_id);

-- Create 'pk_resources' primary key
PROMPT Primary Key 'resources' table
ALTER TABLE resources
ADD CONSTRAINT pk_resources
PRIMARY KEY (resource_id);

-- Create 'pk_project_resources' compound primary key
PROMPT Primary Key 'project_resources' table
ALTER TABLE project_resources
ADD CONSTRAINT pk_project_resources
PRIMARY KEY (project_id, resource_id);

-- Create 'pk_stages' primary key
PROMPT Primary Key 'stages' table
ALTER TABLE stages
ADD CONSTRAINT pk_stages
PRIMARY KEY (stage_id);

-- Create 'pk_project_stages' compound primary key
PROMPT Primary Key 'project_stages' table
ALTER TABLE project_stages
ADD CONSTRAINT pk_project_stages
PRIMARY KEY (stage_id, project_id);

-- Create 'pk_meetings' primary key
PROMPT Primary Key 'meetings' table
ALTER TABLE meetings
ADD CONSTRAINT pk_meetings
PRIMARY KEY (meeting_id);

-- Create 'pk_actions' primary key
PROMPT Primary Key 'actions' table
ALTER TABLE actions
ADD CONSTRAINT pk_actions
PRIMARY KEY (action_id);

-- Create 'pk_project_costs' compound primary key
PROMPT Primary key 'project_costs' table
ALTER TABLE project_costs
ADD CONSTRAINT pk_project_costs
PRIMARY KEY (project_cost, project_id);

-- ///Create Foreign Keys///
-- Creating 'employee_specialisms' Foreign Keys
PROMPT Foreign Keys 'employee_specialisms' table
ALTER TABLE employee_specialisms
ADD CONSTRAINT fk_es_employees
FOREIGN KEY (employee_id)
REFERENCES employees(employee_id);

ALTER TABLE employee_specialisms
ADD CONSTRAINT fk_es_specialisms
FOREIGN KEY (specialism_id)
REFERENCES specialisms(specialism_id);

-- Creating 'project_teams' Foreign Keys
PROMPT Foreign Keys 'project_teams' table
ALTER TABLE project_teams
ADD CONSTRAINT fk_pt_employees
FOREIGN KEY(employee_id)
REFERENCES employees(employee_id);

ALTER TABLE project_teams
ADD CONSTRAINT fk_pt_projects
FOREIGN KEY(project_id)
REFERENCES projects(project_id);

-- Creating 'project_resources' Foreign Keys
PROMPT Foreign keys 'project_resources' table
ALTER TABLE project_resources
ADD CONSTRAINT fk_pr_projects
FOREIGN KEY (project_id)
REFERENCES projects(project_id);

ALTER TABLE project_resources
ADD CONSTRAINT fk_pr_resources
FOREIGN KEY (resource_id)
REFERENCES resources(resource_id);

-- Creating 'project_costs' Foreign Keys
PROMPT Foreign Keys 'project_costs' table
ALTER TABLE project_costs
ADD CONSTRAINT fk_pc_projects
FOREIGN KEY(project_id)
REFERENCES projects(project_id);

-- Creating 'project_stages' Foreign Keys
PROMPT Foreign Keys 'project_stages' table
ALTER TABLE project_stages
ADD CONSTRAINT fk_ps_projects
FOREIGN KEY(project_id)
REFERENCES projects(project_id);

ALTER TABLE project_stages
ADD CONSTRAINT fk_ps_stages
FOREIGN KEY(stage_id)
REFERENCES stages(stage_id);

-- Creating 'meeting' Foreign Keys
PROMPT Foreign Keys 'meetings' table
ALTER TABLE meetings
ADD CONSTRAINT fk_m_teams
FOREIGN KEY(team_leader_id)
REFERENCES employees(employee_id);

ALTER TABLE meetings
ADD CONSTRAINT fk_m_project_stages
FOREIGN KEY(project_stage_id)
REFERENCES stages(stage_id);

-- Creating 'actions' Foreign Keys
PROMPT Foreign Keys 'actions' table
ALTER TABLE actions
ADD CONSTRAINT fk_a_meetings
FOREIGN KEY(meeting_id)
REFERENCES meetings(meeting_id);

-- ///Create Check Constraints///
PROMPT Creating check constraints for the 'employees' table
-- Check Title
ALTER TABLE employees
ADD CONSTRAINT ck_title
CHECK (title = UPPER(title));

-- Check First Name
ALTER TABLE employees
ADD CONSTRAINT ck_firstname
CHECK (firstname = UPPER(firstname));

-- Check Surname
ALTER TABLE employees
ADD CONSTRAINT ck_surname
CHECK (surname = UPPER(surname));

-- Check Email Address
ALTER TABLE employees
ADD CONSTRAINT ck_email
CHECK (email = UPPER(email));

-- Check Street Name
ALTER TABLE employees
ADD CONSTRAINT ck_streetname
CHECK (streetname = UPPER(streetname));

-- Check City
ALTER TABLE employees
ADD CONSTRAINT ck_city
CHECK (city = UPPER(city));

-- Check County
ALTER TABLE employees
ADD CONSTRAINT ck_county
CHECK (county = UPPER(county));

-- Check Post Code
ALTER TABLE employees
ADD CONSTRAINT ck_postcode
CHECK (postcode = UPPER(postcode));

-- Check Country
ALTER TABLE employees
ADD CONSTRAINT ck_country
CHECK (country = UPPER(country));


PROMPT Creating check constraints for the 'specialisms' table
ALTER TABLE specialisms
ADD CONSTRAINT ck_specialism_name
CHECK (specialism_name = UPPER(specialism_name));

ALTER TABLE specialisms
ADD CONSTRAINT ck_specialism_description
CHECK (specialism_description = UPPER(specialism_description));


PROMPT Creating check constraints for the 'projects' table
ALTER TABLE projects
ADD CONSTRAINT ck_project_name
CHECK (project_name = UPPER(project_name));

ALTER TABLE projects
ADD CONSTRAINT ck_project_aim
CHECK (project_aim = UPPER(project_aim));


PROMPT Creating check constraints for the 'resources' table
ALTER TABLE resources
ADD CONSTRAINT ck_resource_name
CHECK (resource_name = UPPER(resource_name));

ALTER TABLE resources
ADD CONSTRAINT ck_resource_description
CHECK (resource_description = UPPER(resource_description));


PROMPT Creating check constraints for the 'stages' table
ALTER TABLE stages
ADD CONSTRAINT ck_stage_description
CHECK (stage_description = UPPER(stage_description));


PROMPT Creating check constraints for the 'actions' table
ALTER TABLE actions
ADD CONSTRAINT ck_action_description
CHECK (action_description = UPPER(action_description));

-- ///Add default values to 'employees' table///
PROMPT Default values for 'employees'
-- Set Title Default
ALTER TABLE employees
MODIFY title DEFAULT 'MR';

-- Set Gender Default
ALTER TABLE employees
MODIFY gender DEFAULT 'M';

-- Set City Default
ALTER TABLE employees
MODIFY city DEFAULT 'NORTHAMPTON';

-- Set County Default
ALTER TABLE employees
MODIFY county DEFAULT 'NORTHAMPTONSHIRE';

-- Set Post Code Default
ALTER TABLE employees
MODIFY postcode DEFAULT 'NN1 5PH';

-- Set Country Default
ALTER TABLE employees
MODIFY country DEFAULT 'GB';

-- ///Commit all changes///
PROMPT Commit changes
COMMIT;
