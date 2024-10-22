-- partition by
select *, sum(salario) over(partition by iddepartamento) as "Salario total Dep."
from empleados;

select *, round(100 * salario / sum(salario) over(partition by iddepartamento),2)
as "Porcentaje de salario total"
from empleados;

-- rank: 1ero order by, 2do rank

select idempleado, nombre, puesto, salario,
rank() over(order by salario desc) as Rango
from empleados
order by Rango;

-- clausula with: consultas tipo CTE

with EmpleadosCTE as (
select idempleado, nombre, puesto, salario 
from empleados)
select * from EmpleadosCTE; --actua como tabla temporal

with ranking_empleados as(
select idempleado, nombre, puesto, salario,
rank() over(order by salario desc) as Rango
from empleados)
select  * from ranking_empleados where rango <= 5
order by Rango;