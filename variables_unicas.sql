-- t-sql variables
declare
	@id_valor int,
	@materia_prima varchar(30),
	@precio float,
	@activo bit;
begin
 set @id_valor = 1
 set @materia_prima = 'Cafe Brasil'
 set @precio = 1980.20
 set @activo = 'true'
 select @id_valor as id_valor, @materia_prima as materia_prima, @precio as precio, @activo as activo

end;

select * from articulos;

declare
	@codigo int = 10
begin
	select * from articulos where codigo = @codigo
end;

declare
	@patron varchar(20)
begin
	set @patron = 'Lap%'
	select * from articulos where nombre like @patron
end;

declare
	@mayorprecio decimal(6,2)
begin
	select @mayorprecio = max(precio) from articulos
	select * from articulos where precio = @mayorprecio
end;