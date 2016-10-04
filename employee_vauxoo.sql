-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
  id int not null,
  first_name varchar (30) not null,
  last_name varchar (30) not null,
  dep_id int not null,
  PRIMARY KEY (id),
  FOREIGN KEY (dep_id) REFERENCES employee_departament (id)
);

CREATE TABLE employee_department (
  id int not null,
  name varchar (30) not null,
  description (30) not null,
  primary key (id)
);

CREATE TABLE employee_hobby (
  id int not null,
  name varchar (30) not null,
  description (30) not null,
  primary key (id)
);

-- ...
