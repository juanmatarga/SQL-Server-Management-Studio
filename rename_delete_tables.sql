select * from sys.tables;

select nombre, apellido, salario from empleados;

exec sp_rename 'Empleados', 'Worker';
exec sp_rename 'Worker', 'Empleados';

create database tirso2;

use tirso2;

create table prueba(
campo int);

drop table prueba;

use tirso;
go
drop database tirso2;
go