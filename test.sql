-- CONTAINS REGISTERED USERS
CREATE TABLE project(
  id INTEGER PRIMARY KEY,
  name text
);

CREATE TABLE flag(
  id INTEGER PRIMARY KEY,
  name text
);

CREATE TABLE project_flag(
  project_id integer not null,
  flag_id integer not null,
  FOREIGN KEY(project_id) REFERENCES project(id),
  FOREIGN KEY(flag_id) REFERENCES flag(id)
);

INSERT INTO project (id,name) VALUES (1,'project1');
INSERT INTO project (id,name) VALUES (2,'project2');
INSERT INTO project (id,name) VALUES (3,'project3');

INSERT INTO flag (id,name) VALUES (1,'flag1');
INSERT INTO flag (id,name) VALUES (2,'flag2');
INSERT INTO flag (id,name) VALUES (3,'flag3');
INSERT INTO flag (id,name) VALUES (4,'flag4');

INSERT INTO project_flag (project_id,flag_id) VALUES (1,1);
INSERT INTO project_flag (project_id,flag_id) VALUES (1,2);
INSERT INTO project_flag (project_id,flag_id) VALUES (1,3);
INSERT INTO project_flag (project_id,flag_id) VALUES (1,4);
INSERT INTO project_flag (project_id,flag_id) VALUES (2,1);
INSERT INTO project_flag (project_id,flag_id) VALUES (2,4);
