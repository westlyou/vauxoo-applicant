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

CREATE TABLE employee_department_rel (
    employee_id integer references employee(id),
    department_id integer references employee_department(id)

);

ALTER TABLE employee_department_rel ADD CONSTRAINT Unique_employee UNIQUE (employee_id);


INSERT INTO employee_department VALUES ('1', 'Tecnologia', 'Departamento de tecnologia de la informacion');
INSERT INTO employee_department VALUES ('2', 'Contabilidad', 'Departamento de Contabilidad');
INSERT INTO employee_department VALUES ('3', 'Almacen', 'Departamento de almacenes');
INSERT INTO employee_department VALUES ('4', 'Gestion', 'Departamento de Gestion');
INSERT INTO employee_department VALUES ('5', 'Planificacion', 'Departamento de Planificacion');
INSERT INTO employee_department VALUES ('6', 'Presupuesto', 'Departamento de Presupuesto');

INSERT INTO employee VALUES ('1', 'Carlos', 'Perez');
INSERT INTO employee VALUES ('2', 'Luis', 'Sanchez');
INSERT INTO employee VALUES ('3', 'Jose', 'Jimenez');
INSERT INTO employee VALUES ('4', 'Pedro', 'Gomez');

INSERT INTO employee_department_rel VALUES (1, 1);
INSERT INTO employee_department_rel VALUES (2, 1);
INSERT INTO employee_department_rel VALUES (3, 4);
INSERT INTO employee_department_rel VALUES (4, 6);


CREATE TABLE employee_hobby (
    id integer NOT NULL UNIQUE,
    name varchar(80) NOT NULL,
    description varchar(80)
);

CREATE TABLE employee_hobby_rel (
    employee_id integer references employee(id),
    hobby_id integer references employee_hobby(id)

);

INSERT INTO employee_hobby VALUES ('1', 'Leer', 'Leer historietas');
INSERT INTO employee_hobby VALUES ('2', 'Hacer deporte', 'Correr 2 horas diarias');
INSERT INTO employee_hobby VALUES ('3', 'Musica', 'Tocar piano');

INSERT INTO employee_hobby_rel VALUES (1, 1);
INSERT INTO employee_hobby_rel VALUES (1, 3);
INSERT INTO employee_hobby_rel VALUES (2, 2);
INSERT INTO employee_hobby_rel VALUES (2, 3);
INSERT INTO employee_hobby_rel VALUES (3, 1);
INSERT INTO employee_hobby_rel VALUES (3, 2);
INSERT INTO employee_hobby_rel VALUES (4, 2);
INSERT INTO employee_hobby_rel VALUES (4, 1);

ALTER TABLE employee ADD boss_id integer references employee(id);
ALTER TABLE employee ADD CONSTRAINT unique_rel_employee_boss CHECK (id<>boss_id);

UPDATE employee set boss_id=1 where id=2;
UPDATE employee set boss_id=2 where id=3;
UPDATE employee set boss_id=3 where id=4;
UPDATE employee set boss_id=4 where id=1;

-- ...
