-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
    id integer NOT NULL UNIQUE,
    first_name varchar(80) NOT NULL,
    last_name varchar(80) NOT NULL
);

ALTER TABLE employee ADD CONSTRAINT pekey PRIMARY KEY (id);

CREATE TABLE employee_department (
    id integer NOT NULL UNIQUE,
    name varchar(80) NOT NULL,
    description varchar(80) 
);

ALTER TABLE employee_department ADD CONSTRAINT pkey PRIMARY KEY (id);

ALTER TABLE employee ADD employee_department_id integer;

ALTER TABLE employee ADD CONSTRAINT FK_employee_department FOREIGN KEY (employee_department_id) REFERENCES employee_department(id);

ALTER TABLE employee ADD CONSTRAINT Unique_employee_department UNIQUE (id, employee_department_id);


INSERT INTO employee_department VALUES ('1', 'Tecnologia', 'Departamento de tecnologia de la informacion');
INSERT INTO employee_department VALUES ('2', 'Contabilidad', 'Departamento de Contabilidad');
INSERT INTO employee_department VALUES ('3', 'Almacen', 'Departamento de almacenes');
INSERT INTO employee_department VALUES ('4', 'Gestion', 'Departamento de Gestion');
INSERT INTO employee_department VALUES ('5', 'Planificacion', 'Departamento de Planificacion');
INSERT INTO employee_department VALUES ('6', 'Presupuesto', 'Departamento de Presupuesto');

INSERT INTO employee VALUES ('1', 'Carlos', 'Perez', 1);
INSERT INTO employee VALUES ('2', 'Luis', 'Sanchez', 3);
INSERT INTO employee VALUES ('3', 'Jose', 'Jimenez', 4);
INSERT INTO employee VALUES ('4', 'Pedro', 'Gomez', 6);

CREATE TABLE employee_hobby (
    
);

-- ...
