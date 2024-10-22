-- subconsultas: una consulta dentro de otra. Tiene que ir entre parentesis.

create table facturas(
  numero int not null,
  fecha datetime,
  cliente varchar(30),
  primary key(numero)
);

create table detalles(
  numerofactura int not null,
  numeroitem int not null, 
  articulo varchar(30),
  precio decimal(5,2),
  cantidad int,
  primary key(numerofactura,numeroitem),
   constraint FK_detalles_numerofactura
   foreign key (numerofactura)
   references facturas(numero)
   on update cascade
   on delete cascade
);

go

set dateformat ymd;

INSERT INTO facturas (numero, fecha, cliente) VALUES
  (1, '2023-06-28', 'Juan Pérez'),
  (2, '2023-06-28', 'María González'),
  (3, '2023-06-28', 'Carlos López'),
  (4, '2023-06-28', 'Ana Rodríguez'),
  (5, '2023-06-28', 'Luisa Martínez'),
  (6, '2023-06-28', 'Pedro Hernández'),
  (7, '2023-06-28', 'Laura Gómez'),
  (8, '2023-06-28', 'Diego Torres'),
  (9, '2023-06-28', 'Valentina Ramírez'),
  (10, '2023-06-28', 'Andrés Silva'),
  (11, '2023-06-28', 'Camila Vargas'),
  (12, '2023-06-28', 'Mateo Castro'),
  (13, '2023-06-28', 'Isabella Rios'),
  (14, '2023-06-28', 'Santiago Morales'),
  (15, '2023-06-28', 'Valeria Rojas'),
  (16, '2023-06-28', 'Daniel Acosta'),
  (17, '2023-06-28', 'Mariana Duarte'),
  (18, '2023-06-28', 'Alejandro Cardona'),
  (19, '2023-06-28', 'Fernanda Mendoza'),
  (20, '2023-06-28', 'Gabriel Medina');

INSERT INTO detalles (numerofactura, numeroitem, articulo, precio, cantidad) VALUES
  (1, 1, 'Lápiz', 1.99, 5),
  (1, 2, 'Cuaderno', 3.99, 3),
  (1, 3, 'Bolígrafo', 0.99, 10),
  (2, 1, 'Goma de borrar', 0.5, 8),
  (2, 2, 'Marcadores', 2.49, 4),
  (2, 3, 'Pegamento', 1.99, 2),
  (3, 1, 'Regla', 1.25, 5),
  (3, 2, 'Tijeras', 2.99, 2),
  (3, 3, 'Notas adhesivas', 0.75, 6),
  (4, 1, 'Lápices de colores', 4.99, 1),
  (4, 2, 'Borrador', 0.99, 3),
  (4, 3, 'Cinta adhesiva', 1.49, 2),
  (5, 1, 'Resaltador', 1.75, 4),
  (5, 2, 'Papel de carta', 2.99, 2),
  (5, 3, 'Clips', 0.25, 10),
  (6, 1, 'Corrector líquido', 1.99, 3),
  (6, 2, 'Carpeta', 2.49, 2),
  (6, 3, 'Sacapuntas', 0.99, 5),
  (7, 1, 'Calculadora', 9.99, 1),
  (7, 2, 'Agenda', 4.99, 1),
  (8, 1, 'Lápiz', 1.99, 5),
  (8, 2, 'Cuaderno', 3.99, 3),
  (8, 3, 'Bolígrafo', 0.99, 10),
  (9, 1, 'Goma de borrar', 0.5, 8),
  (9, 2, 'Marcadores', 2.49, 4),
  (9, 3, 'Pegamento', 1.99, 2),
  (10, 1, 'Regla', 1.25, 5),
  (10, 2, 'Tijeras', 2.99, 2),
  (10, 3, 'Notas adhesivas', 0.75, 6),
  (11, 1, 'Lápices de colores', 4.99, 1),
  (11, 2, 'Borrador', 0.99, 3),
  (11, 3, 'Cinta adhesiva', 1.49, 2),
  (12, 1, 'Resaltador', 1.75, 4),
  (12, 2, 'Papel de carta', 2.99, 2),
  (12, 3, 'Clips', 0.25, 10),
  (13, 1, 'Corrector líquido', 1.99, 3),
  (13, 2, 'Carpeta', 2.49, 2),
  (13, 3, 'Sacapuntas', 0.99, 5),
  (14, 1, 'Calculadora', 9.99, 1),
  (14, 2, 'Agenda', 4.99, 1),
  (15, 1, 'Lápiz', 1.99, 5),
  (15, 2, 'Cuaderno', 3.99, 3),
  (15, 3, 'Bolígrafo', 0.99, 10),
  (16, 1, 'Goma de borrar', 0.5, 8),
  (16, 2, 'Marcadores', 2.49, 4),
  (16, 3, 'Pegamento', 1.99, 2),
  (17, 1, 'Regla', 1.25, 5),
  (17, 2, 'Tijeras', 2.99, 2),
  (17, 3, 'Notas adhesivas', 0.75, 6),
  (18, 1, 'Lápices de colores', 4.99, 1),
  (18, 2, 'Borrador', 0.99, 3),
  (18, 3, 'Cinta adhesiva', 1.49, 2),
  (19, 1, 'Resaltador', 1.75, 4),
  (19, 2, 'Papel de carta', 2.99, 2),
  (19, 3, 'Clips', 0.25, 10),
  (20, 1, 'Corrector líquido', 1.99, 3),
  (20, 2, 'Carpeta', 2.49, 2),
  (20, 3, 'Sacapuntas', 0.99, 5),
  (1, 4, 'Calculadora', 9.99, 1),
  (1, 5, 'Agenda', 4.99, 1);

-- cuales empleados ganan mas o igual al salario promedio

select id_empleado, nombre + ' ' + apellido as nombre, sueldo
from empleados where sueldo >=
								(select avg(sueldo) as prom
								from empleados);

select nombre, ciudad from clientes
where idcliente = any
				(select idcliente
				from clientes
				where pais = 'Argentina');

-- cuales clientes compraron lapices?
select * from facturas f where exists
	(select * from detalles d
	where f.numero = d.numerofactura
	and d.articulo = 'Lápiz');