alter table empleados add sexo char(1);

select * from empleados;

UPDATE empleados
SET sexo = 'M'
WHERE idempleado IN (1, 3, 5, 6, 7, 8, 9, 11, 13, 15);  -- IDs de empleados de sexo masculino

UPDATE empleados
SET sexo = 'F'
WHERE idempleado IN (2, 4, 10, 12, 14);  -- IDs de empleados de sexo femenino


