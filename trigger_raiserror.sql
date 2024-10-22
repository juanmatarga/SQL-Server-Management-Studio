-- raise error

create or alter trigger tr_borra_empleados
on empleados
for delete
as
	if(select count(*) from deleted)>2
	begin
		raiserror('No se puede eliminar mas de dos empleados', 16, 1)
		rollback transaction
	end;

delete from empleados where id_empleado in(4,5,6);

create or alter trigger tr_actualiza_empleados
on empleados
for update
as
	if update(sueldo)
	begin
		raiserror('No se puede actualizar este campo', 16, 1)
		rollback transaction
	end;

update empleados set sueldo = 800 where id_empleado in(1,3,5);

create or alter trigger tr_insert_gerente_empleados
on empleados
for insert
as
	if (select puesto from inserted) = 'Gerente'
	begin
		raiserror('No se permite insertar este puesto', 16, 1)
		rollback transaction
	end;

insert into empleados values(
41, 'Carlos', 'Menem', 'A', 'Gerente', 100, 1)
