-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department (
  id int not null,
  name varchar (30) not null,
  description varchar (30) not null,
  CONSTRAINT employee_department_pk PRIMARY KEY (id)
);

CREATE TABLE employee (
  id int not null,
  first_name varchar (30) not null,
  last_name varchar (30) not null,
  employee_department_id int not null,
  CONSTRAINT employee_pk PRIMARY KEY (id),
  CONSTRAINT employee_employee_department_fk FOREIGN KEY (employee_department_id) REFERENCES employee_department(id)
);

INSERT INTO employee_department VALUES (1, 'rrhh', 'recursos humanos');
INSERT INTO employee_department VALUES (2, 'sistemas', 'computacion');
INSERT INTO employee_department VALUES (3, 'ventas', 'ventas');
INSERT INTO employee_department VALUES (4, 'nomina', 'nomina');
INSERT INTO employee_department VALUES (5, 'contabilidad', 'contable');
INSERT INTO employee_department VALUES (6, 'compras', 'compras');
INSERT INTO employee VALUES (1, 'andres', 'marrero', 1);
INSERT INTO employee VALUES (2, 'jose', 'gomez', 3);
INSERT INTO employee VALUES (3, 'daniela', 'ocanto', 2);
INSERT INTO employee VALUES (4, 'jose', 'perez', 5);








-- ...
