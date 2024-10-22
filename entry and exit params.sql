-- entry params: giving information to a procedure

create or alter proc p_busca_emple
	@nombre varchar(30) = 'Juan'
as
	select * from empleados
	where nombre = @nombre;

create or alter proc p_busca_emple_2
	@nombre varchar(30) = 'Javier',
	@sueldo int = 1000,
	@hijos  int = 1
as
	select * from empleados
	where nombre = @nombre
	and sueldo >= @sueldo
	and cant_hijos >= @hijos;

exec p_busca_emple_2;

-- exit params

create or alter proc p_promedio
	@valor1 numeric(6,2),
	@valor2 numeric(6,2),
	@resultado numeric(6,2) output
as
	select @resultado = (@valor1 + @valor2)/2;

declare
	@promedio numeric(6,2)
	exec p_promedio 1230, 10,
	@promedio output
	select @promedio as promedio;

-- ejemplo

select * from empleados order by sueldo;

update empleados set sueldo = 950
where id_empleado in(1, 3, 6, 10, 15, 22, 30, 34)

create or alter proc p_emple_sal_prom
	@puesto varchar(30) = '%',
	@suma numeric(10,2) output,
	@promedio numeric(6,2) output
as
	select * from empleados where puesto like @puesto
	select @suma = sum(sueldo) from empleados where puesto like @puesto
	select @promedio = avg(sueldo) from empleados where puesto like @puesto;

declare
	@sumatoria numeric(10,2), @prom numeric(6,2)
	exec p_emple_sal_prom 'Desarrollador', @sumatoria output, @prom output
	select @sumatoria as total, @prom as promedio;