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

CREATE TABLE employee_hobby (
  id int not null,
  name varchar (30) not null,
  description varchar (30) not null,
  CONSTRAINT employee_hobby_pk PRIMARY KEY (id)
);

INSERT INTO employee_hobby VALUES (1, 'dance', 'salsa casino');
INSERT INTO employee_hobby VALUES (2, 'games', 'videojuegos');
INSERT INTO employee_hobby VALUES (3, 'movies', 'cine');

CREATE TABLE relacion_employee_hobby (
  id_employee int not null,
  id_employee_hobby int not null,
  CONSTRAINT relacion_employee_hobby_pk PRIMARY KEY (id_employee, id_employee_hobby),
  CONSTRAINT relacion_employee_hobby_fk1 FOREIGN KEY (id_employee) REFERENCES employee(id),
  CONSTRAINT relacion_employee_hobby_fk2 FOREIGN KEY (id_employee_hobby) REFERENCES employee_hobby(id)
);

INSERT INTO relacion_employee_hobby VALUES (1, 1);
INSERT INTO relacion_employee_hobby VALUES (1, 2);
INSERT INTO relacion_employee_hobby VALUES (1, 3);
INSERT INTO relacion_employee_hobby VALUES (2, 2);
INSERT INTO relacion_employee_hobby VALUES (2, 3);
INSERT INTO relacion_employee_hobby VALUES (3, 1);
INSERT INTO relacion_employee_hobby VALUES (3, 3);
INSERT INTO relacion_employee_hobby VALUES (4, 1);
INSERT INTO relacion_employee_hobby VALUES (4, 2);
