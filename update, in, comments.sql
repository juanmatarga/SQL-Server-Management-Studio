/* select .....
......
.......
*/

--te anula

alter table Empleados
drop column sexo;

exec sp_rename 'Empleados.idempleado', 'id';

select * from Empleados;

update empleados
set telefono = 1139199942
where id=1;

update empleados
set activo = 'NO';

update empleados
set activo = 'SI'
where ID in(1,2,3,4,5,6,7,8);