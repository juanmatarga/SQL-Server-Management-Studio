-- procedimientos almacenados (sp_)
-- locales / temporales # / globales ##

create proc p_existencia
as
	select * from articulos
	where cantidad <= 20;

exec p_existencia;

create proc p_cargar_inv
as
begin
	if exists(select * from articulos
	where cantidad = 0)
		update articulos set cantidad = 10
		where cantidad = 0;
	exec p_existencia

end;

exec p_cargar_inv;

create proc p_bonificacion
as
 begin
	if exists(select * from empleados
	where cant_hijos > 3)
	begin
		update empleados set sueldo = sueldo*1.2
		print 'Se ha aplicado la bonificacion'
	end
	else
		begin
			print 'No hay empleados con mas de 3 hijos'
		end
end;

exec p_bonificacion;

-- borrar o actualizar
alter proc p_bonificacion
as
 begin
	if exists(select * from empleados
	where cant_hijos > 1)
	begin
		update empleados set sueldo = sueldo*1.2
		print 'Se ha aplicado la bonificacion'
	end
	else
		begin
			print 'No hay empleados con mas de 1 hijo'
		end
end;

drop proc p_existencia;