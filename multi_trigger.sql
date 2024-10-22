create table control_emple(
usuario varchar(30),
fecha date,
hora varchar(20),
accion varchar(50)
);

create or alter trigger tr_control_emple
on empleados
for insert, update, delete
as
	declare
		@hora varchar(20) = right(getdate(),8);
	if exists(select 0 from inserted)
		begin
			if exists(select 0 from deleted)
			begin
				insert into control_emple values
				(SUSER_NAME(), getdate(), @hora,'Actualizó');
			end
				else
					begin
					insert into control_emple values
					(SUSER_NAME(), getdate(), @hora,'Insertó');
					end
		end
			else
				begin
					insert into control_emple values
					(SUSER_NAME(), getdate(), @hora,'Borró');
				end;

select * from empleados;

select * from control_emple;

insert into empleados values(
41, 'Carlos', 'Menem', 'A', 'Gerente', 1000, 1);

update empleados set sueldo = 9000 where id_empleado = 41;

delete from empleados where id_empleado = 41;