/*
* Alexander Turner (18416709), Aidan Rayner (18415915), Nathan Thomas-Williams (18410399), Nathan Segnitz ()
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

PROMPT Primary Key 'projects' table
ALTER TABLE projects
ADD CONSTRAINT pk_projects
PRIMARY KEY (project_id);

PROMPT Primary Key 'project_resources' table
ALTER TABLE project_resources
ADD CONSTRAINT pk_project_resources
PRIMARY KEY (project_id, resource_id);

PROMPT Primary Key 'resources' table
ALTER TABLE resources
ADD CONSTRAINT pk_resources
PRIMARY KEY (resource_id);

PROMPT Primary Key 'stages' table
ALTER TABLE stages
ADD CONSTRAINT pk_stages
PRIMARY KEY (stage_id);

PROMPT Primary Key 'project_stages' table
ALTER TABLE project_stages
ADD CONSTRAINT pk_project_stages
PRIMARY KEY (stage_id, project_id);

PROMPT Primary key 'project_costs' table
ALTER TABLE project_costs
ADD CONSTRAINT pk_project_costs
PRIMARY KEY (employee_id, project_id);

--CREATE Foreign Keys
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
ADD CONSTRAINT fk_pc_employees
FOREIGN KEY(employee_id)
REFERENCES employees(employee_id);

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

--CREATE CHECK Constraints
PROMPT Creating check constraints for the 'employees' table
ALTER TABLE employees
ADD CONSTRAINT ck_title
CHECK (title = UPPER(title));

ALTER TABLE employees
ADD CONSTRAINT ck_firstname
CHECK (firstname = UPPER(firstname));

ALTER TABLE employees
ADD CONSTRAINT ck_surname
CHECK (surname = UPPER(surname));

ALTER TABLE employees
ADD CONSTRAINT ck_streetname
CHECK (streetname = UPPER(streetname));

ALTER TABLE employees
ADD CONSTRAINT ck_email
CHECK (email = UPPER(email));

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
