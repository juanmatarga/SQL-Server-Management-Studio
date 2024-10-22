-- t-sql

--if else

-- Crear la tabla Cartelera
CREATE TABLE Cartelera (
    sala VARCHAR(50),
    pelicula VARCHAR(100),
    hora VARCHAR(10),
    capacidad INT,
    entradas INT
);

-- Insertar registros en la tabla Cartelera
INSERT INTO Cartelera (sala, pelicula, hora, capacidad, entradas)
VALUES ('Sala 1', 'Spider-Man: No Way Home', '10:00', 100, 80),
       ('Sala 2', 'Avatar 2', '12:30', 80, 70),
       ('Sala 3', 'The Batman', '15:15', 120, 90),
       ('Sala 4', 'Black Panther: Wakanda Forever', '17:45', 150, 150),
       ('Sala 5', 'Indiana Jones 5', '20:00', 120, 120),
       ('Sala 6', 'Fantastic Beasts: The Secrets of Dumbledore', '10:30', 100, 85),
       ('Sala 1', 'Mission: Impossible 8', '13:00', 90, 70),
       ('Sala 2', 'Fast & Furious 10', '16:15', 80, 60),
       ('Sala 3', 'Guardians of the Galaxy Vol. 3', '19:30', 110, 90),
       ('Sala 4', 'The Flash', '22:00', 100, 95),
       ('Sala 5', 'Thor: Love and Thunder', '10:45', 120, 100),
       ('Sala 6', 'Captain Marvel 2', '14:20', 80, 70),
       ('Sala 1', 'Doctor Strange in the Multiverse of Madness', '17:00', 150, 150),
       ('Sala 2', 'The Expendables 4', '20:30', 100, 80),
       ('Sala 3', 'Aquaman and the Lost Kingdom', '11:15', 120, 100),
       ('Sala 4', 'Sherlock Holmes 3', '13:45', 90, 75),
       ('Sala 5', 'Mortal Kombat 2', '16:30', 80, 80),
       ('Sala 6', 'John Wick: Chapter 4', '19:45', 100, 100),
       ('Sala 1', 'Jungle Cruise', '21:30', 110, 100),
       ('Sala 2', 'The Little Mermaid', '12:15', 80, 70);


-- fx if else: verifica una condicion y ejecuta funciones segun si se cumple o no.

select * from articulos where cantidad = 0;

if exists (select * from articulos where cantidad = 0)
(select nombre, precio, cantidad
from articulos where cantidad = 0)
else
	select 'No hay articulos con cantidad 0' as Resultado;

update articulos set cantidad = 0
where codigo in(1,3,5,6,7);

create table prueba(
c1 int,
c2 int);

select * from sys.objects where name = 'prueba'

if object_id('prueba') is not null
drop table prueba;

-- ver asientos disponibles, si no hay, printear mensaje de entradas agotadas

if exists (select * from cartelera where capacidad > entradas)
select sala, pelicula, hora, (capacidad - entradas) as lugares
from cartelera
	where capacidad > entradas
else
	select 'Entradas agotadas';

	update cartelera set entradas = capacidad;