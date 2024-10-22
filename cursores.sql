-- cursores: recorren filas para traer resultados de consultas de forma secuencial

declare
	@desc numeric(6,2);
declare
	prod_info cursor for
	select precio_unidad from productos
	open prod_info
	fetch next from prod_info into @desc
	while @@FETCH_STATUS = 0
		begin
			print @desc
			fetch next from prod_info into @desc
		end
			close prod_info
			deallocate prod_info

-- tipo tabla
declare
	@id int,
	@nombre varchar(50),
	@precio numeric(6,2),
	@existencia int,
	@vendidos int;
declare
	c_productos cursor local static read_only
	for select idproducto, nombre, precio_unidad, existencia, vendidos from productos;
	open c_productos
	fetch next from c_productos
	into @id, @nombre, @precio, @existencia, @vendidos
	while @@FETCH_STATUS = 0
		begin
			print str(@id)+ @nombre + str(@precio) + str(@existencia) + str(@vendidos);
			fetch next from c_productos into @id, @nombre, @precio, @existencia, @vendidos;
		end;
	close c_productos;
	deallocate c_productos;

-- cursor para actualizar datos
drop table empleados;
go
CREATE TABLE empleados (
    idempleado INT PRIMARY KEY,
    nombre VARCHAR(100),
    direccion VARCHAR(200),
    telefono VARCHAR(20),
    puesto VARCHAR(50),
    salario DECIMAL(10, 2),
    activo char(2)
);
go
INSERT INTO empleados (idempleado, nombre, direccion, telefono, puesto, salario, activo)
VALUES
    (1, 'Juan Perez', 'Avenida 123', '1234567890', 'Gerente', 750000.00, 'si'),
    (2, 'Ana Martinez', 'Calle 456', '2345678901', 'Asistente', 550000.00, 'si'),
    (3, 'Carlos Rodriguez', 'Callejon 789', '3456789012', 'Encargado de Operaciones', 600000.00, 'si'),
    (4, 'María González', 'Plaza 101', '4567890123', 'Vendedor', 480000.00, 'si'),
    (5, 'Luisa Sánchez', 'Paseo 202', '5678901234', 'Soporte Técnico', 520000.00, 'si'),
    (6, 'Pedro Ramirez', 'Alameda 303', '6789012345', 'Secretaria', 450000.00, 'si'),
    (7, 'Diego Morales', 'Jardín 404', '7890123456', 'Conserje', 400000.00, 'si'),
    (8, 'Fernanda Cruz', 'Avenida 555', '8901234567', 'Gerente', 780000.00, 'si'),
    (9, 'Sofía López', 'Calle 606', '9012345678', 'Asistente', 580000.00, 'si'),
    (10, 'Andrés Herrera', 'Callejon 707', '0123456789', 'Encargado de Operaciones', 620000.00, 'si'),
    (11, 'Jorge Fernández', 'Plaza 808', '1234567890', 'Vendedor', 510000.00, 'si'),
    (12, 'Mónica Silva', 'Paseo 909', '2345678901', 'Soporte Técnico', 530000.00, 'si'),
    (13, 'Roberto Mendoza', 'Alameda 010', '3456789012', 'Secretaria', 460000.00, 'si'),
    (14, 'Laura Vargas', 'Jardín 111', '4567890123', 'Conserje', 410000.00, 'si'),
    (15, 'Gabriel Reyes', 'Avenida 121', '5678901234', 'Gerente', 800000.00, 'si'),
    (16, 'Carmen Navarro', 'Calle 131', '6789012345', 'Asistente', 600000.00, 'si'),
    (17, 'Ricardo Paredes', 'Callejon 141', '7890123456', 'Encargado de Operaciones', 640000.00, 'si'),
    (18, 'Isabel Ríos', 'Plaza 151', '8901234567', 'Vendedor', 530000.00, 'si'),
    (19, 'Daniel Ortiz', 'Paseo 161', '9012345678', 'Soporte Técnico', 550000.00, 'si'),
    (20, 'Patricia Castro', 'Alameda 171', '0123456789', 'Secretaria', 480000.00, 'si'),
    (21, 'Raúl Medina', 'Avenida 222', '1234567890', 'Vendedor', 500000.00, 'si'),
    (22, 'Camila Torres', 'Calle 333', '2345678901', 'Soporte Técnico', 540000.00, 'si'),
    (23, 'Javier Gómez', 'Callejon 444', '3456789012', 'Secretaria', 470000.00, 'si'),
    (24, 'Lucía Varela', 'Plaza 555', '4567890123', 'Conserje', 420000.00, 'si'),
    (25, 'Eduardo Fuentes', 'Paseo 666', '5678901234', 'Gerente', 820000.00, 'si'),
    (26, 'Valentina Mendoza', 'Alameda 777', '6789012345', 'Asistente', 610000.00, 'si'),
    (27, 'Héctor Soto', 'Jardín 888', '7890123456', 'Encargado de Operaciones', 660000.00, 'si'),
    (28, 'Marcela Paredes', 'Avenida 999', '8901234567', 'Vendedor', 520000.00, 'si'),
    (29, 'Gustavo Ríos', 'Calle 1010', '9012345678', 'Soporte Técnico', 560000.00, 'si'),
    (30, 'Natalia Navarro', 'Callejon 1111', '0123456789', 'Secretaria', 490000.00, 'si'),
    (31, 'Roberto Ortega', 'Plaza 1212', '1234567890', 'Conserje', 430000.00, 'si'),
    (32, 'María Fernández', 'Paseo 1313', '2345678901', 'Gerente', 840000.00, 'si'),
    (33, 'Julián Silva', 'Alameda 1414', '3456789012', 'Asistente', 630000.00, 'si'),
    (34, 'Mariana Vargas', 'Jardín 1515', '4567890123', 'Encargado de Operaciones', 680000.00, 'si'),
    (35, 'Santiago López', 'Avenida 1616', '5678901234', 'Vendedor', 540000.00, 'si'),
    (36, 'Isabella Cruz', 'Calle 1717', '6789012345', 'Soporte Técnico', 580000.00, 'si'),
    (37, 'Andrés Mora', 'Callejon 1818', '7890123456', 'Secretaria', 500000.00, 'si'),
    (38, 'Valeria Torres', 'Plaza 1919', '8901234567', 'Conserje', 450000.00, 'si'),
    (39, 'Fernando García', 'Paseo 2020', '9012345678', 'Gerente', 860000.00, 'si'),
    (40, 'Carolina Morales', 'Alameda 2121', '0123456789', 'Asistente', 640000.00, 'si');

declare
	@id int,
	@nuevosal numeric(10,2)
declare
	c_salarios cursor for 
	select idempleado, salario from empleados 
	where puesto = 'Secretaria'
open c_salarios
fetch next from c_salarios into @id, @nuevosal
while @@FETCH_STATUS = 0
begin
	set @nuevosal = @nuevosal * 1.1
	update empleados set salario = @nuevosal
	where current of c_salarios
	fetch next from c_salarios into @id, @nuevosal;
end;
close c_salarios;
deallocate c_salarios;

select * from empleados where puesto = 'secretaria'
