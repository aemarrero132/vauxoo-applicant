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

INSERT INTO employee VALUES (1, 'andres', 'marrero', 1);
INSERT INTO employee VALUES (2, 'jose', 'gomez', 3);
INSERT INTO employee VALUES (3, 'daniela', 'ocanto', 2);
INSERT INTO employee VALUES (4, 'jose', 'perez', 5);

INSERT INTO employee VALUES (1, 'rrhh', 'recursos humanos');
INSERT INTO employee VALUES (2, 'sistemas', 'computacion');
INSERT INTO employee VALUES (3, 'ventas', 'ventas');
INSERT INTO employee VALUES (4, 'nomina', 'nomina');
INSERT INTO employee VALUES (5, 'contabilidad', 'contable');
INSERT INTO employee VALUES (6, 'compras', 'compras');


-- ...
