-- index: aceleran la busqueda y recuperacion de datos: clustered // nonclustered
select * from Empleados;

create clustered index I_idempleado
on empleados(id);

create nonclustered index I_edad_empleado
on empleados(edad);

exec sp_rename 'Empleados.I_idempleado', 'I_id', 'INDEX';

drop index I_id on Empleados;

-- los índices son recomendados para tablas muy consultadas

create clustered index I_id_sal
on empleados(id, salario);