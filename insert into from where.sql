create table salarios(
nombre varchar(20),
apellido varchar(30),
salario decimal(18,2));

select * from salarios;

insert into salarios(nombre, apellido, salario)
select nombre, apellido, salario from Empleados
where salario > 2500;

truncate table salarios