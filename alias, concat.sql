select id as "N� Empleado", nombre, apellido from empleados
where salario>3000;

select id as "N� Empleado", nombre + ' ' + apellido as Nombre from empleados
where salario>3000;

select 'ID: ' + cast(id as varchar(2)) + ', ' + nombre + ' ' + apellido as Empleados
from empleados;