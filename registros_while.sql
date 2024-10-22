-- manejo de registros con bucle while

create or alter procedure pr_ver_productos
as
	declare
		@conteo int = (select max(idproducto) from productos);
	while @conteo > 0
		begin
				select * from productos where idproducto = @conteo;
				set @conteo -= 1;
		end;

exec pr_ver_productos;

create or alter procedure pr_descuento
as
	declare @id int
	select @id = min(idproducto) from productos
while @id > 0
	begin
		update productos
		set precio_unidad = precio_unidad * 0.9
		where idproducto = @id and vendidos is null

		select @id = min(idproducto) from productos
		where idproducto > @id and vendidos is null
	end;

exec pr_descuento;
