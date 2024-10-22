-- fx today
select getdate();

-- fx dateadd
select dateadd(year, 1, getdate());

drop table detalles;

drop table facturas;

create table facturas(
numero int,
fecha date,
cliente varchar(60)
);

INSERT INTO facturas (numero, fecha, cliente)
VALUES
  (1, '2018-01-01', 'Juan Pérez'),
  (2, '2018-01-15', 'María González'),
  (3, '2018-01-22', 'Pedro Rodríguez'),
  (4, '2018-02-10', 'Ana López'),
  (5, '2018-02-05', 'Luisa Martínez'),
  (6, '2018-03-12', 'Carlos Sánchez'),
  (7, '2018-04-20', 'Laura Torres'),
  (8, '2018-05-18', 'Javier Herrera'),
  (9, '2018-06-27', 'Sofía Ramírez'),
  (10, '2018-10-14', 'Diego Castro'),
  (11, '2019-01-03', 'Valeria Gómez'),
  (12, '2019-02-25', 'Andrés Cruz'),
  (13, '2019-03-17', 'Gabriela Vargas'),
  (14, '2019-04-08', 'Miguel Flores'),
  (15, '2019-05-19', 'Fernanda Mendoza'),
  (16, '2019-06-27', 'Roberto Ríos'),
  (17, '2019-07-14', 'Paulina Acosta'),
  (18, '2019-08-29', 'Emilio Castro'),
  (19, '2019-09-11', 'Carolina Mejía'),
  (20, '2019-10-05', 'Jorge Mora'),
  (21, '2021-01-01', 'Juan Pérez'),
  (22, '2021-02-15', 'María González'),
  (23, '2021-03-22', 'Pedro Rodríguez'),
  (24, '2021-04-10', 'Ana López'),
  (25, '2021-05-05', 'Luisa Martínez'),
  (26, '2021-06-12', 'Carlos Sánchez'),
  (27, '2021-07-20', 'Laura Torres'),
  (28, '2021-08-18', 'Javier Herrera'),
  (29, '2021-09-27', 'Sofía Ramírez'),
  (30, '2021-10-14', 'Diego Castro'),
  (31, '2019-01-03', 'Valeria Gómez'),
  (32, '2020-02-25', 'Andrés Cruz'),
  (33, '2020-03-17', 'Gabriela Vargas'),
  (34, '2020-04-08', 'Miguel Flores'),
  (35, '2020-05-19', 'Fernanda Mendoza'),
  (36, '2020-06-27', 'Roberto Ríos'),
  (37, '2020-07-14', 'Paulina Acosta'),
  (38, '2020-08-29', 'Emilio Castro'),
  (39, '2020-09-11', 'Carolina Mejía'),
  (40, '2020-10-05', 'Jorge Mora');

select * from facturas;

-- contar ventas del 2018
select count(*) as cantidad_facturas_2018 
from facturas
where fecha 
between '2018-01-01' and dateadd(year, 1, '2018-01-01');

-- fx datename
select datename(month, getdate()) as mes;

-- set language english;

-- fx datepart
select datepart(day, getdate()) as day, datepart(month, getdate()) as mes, datepart(year, getdate()) as year ;

-- using fx
select cliente, fecha
from facturas
where datename(month, fecha) = datename(month, getdate());

-- fx left
select left(nombre, 3) as ca
from empleados;

-- fx stuff
select stuff('Hola a todos', 6, 7, 'Amigos');