-- trigger que nos bloquee el insert y saber quien lo está haciendo

create table control_productos(
usuario varchar(50),
fecha date,
hora varchar(30),
accion varchar(30));



create or alter trigger tr_blockinsert_productos
on productos
instead of insert
as
	begin
		set nocount on -- bloquear mensaje de consola
		insert into control_productos values
		(SUSER_NAME(), getdate(), right(getdate(), 8), 'Intentó insertar');
		print 'No se pueden insertar datos en esta tabla'
	end;

insert into productos values(42, 'Soldador', 80, 4, 0);

select * from control_productos;
select * from productos where idproducto = 42;

create or alter trigger tr_blockudpate_productos
on productos
instead of update
as
	begin
		set nocount on -- bloquear mensaje de consola
		insert into control_productos values
		(SUSER_NAME(), getdate(), right(getdate(), 8), 'Intentó modificar');
		print 'No se pueden modificar datos en esta tabla'
	end;

update productos set precio_unidad = 80 where idproducto = 1;