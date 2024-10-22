-- el null es un formato
-- isnull(), coalesce()

create TABLE productos (
  idproducto INT,
  nombre VARCHAR(100),
  precio_unidad NUMERIC(6,2),
  existencia INT,
  vendidos INT
);
INSERT INTO productos (idproducto, nombre, precio_unidad, existencia, vendidos)
VALUES
  (1, 'Martillo', 12.50, 100, 50),
  (2, 'Destornillador', 6.75, 80, NULL),
  (3, 'Taladro', 75.00, 25, 10),
  (4, 'Sierra el�ctrica', 120.25, 15, NULL),
  (5, 'Cinta m�trica', 5.20, 200, 100),
  (6, 'Llave inglesa', 9.80, 50, NULL),
  (7, 'Pala', 15.00, 40, 20),
  (8, 'Clavos', 1.50, 500, NULL),
  (9, 'Tornillos', 2.00, 300, 150),
  (10, 'Alicate', 7.25, 70, NULL),
  (11, 'Escalera', 40.00, 10, 5),
  (12, 'Cincel', 4.30, 40, NULL),
  (13, 'Cepillo', 8.15, 30, 15),
  (14, 'Nivel', 10.50, 25, NULL),
  (15, 'Brocha', 3.75, 120, 60),
  (16, 'Talocha', 6.00, 80, NULL),
  (17, 'Llave ajustable', 11.20, 45, 25),
  (18, 'Mazo', 9.90, 20, NULL),
  (19, 'Form�n', 5.80, 35, 15),
  (20, 'Serrucho', 8.50, 60, NULL),
  (21, 'Taladro inal�mbrico', 95.00, 20, 15),
  (22, 'Llave de tubo', 13.50, 30, 20),
  (23, 'Pintura blanca', 18.75, 50, NULL),
  (24, 'Cepillo met�lico', 6.25, 40, 30),
  (25, 'Escuadra', 2.80, 100, 50),
  (26, 'Broca para concreto', 4.50, 75, 40),
  (27, 'Gafas de seguridad', 8.90, 60, 45),
  (28, 'Cinta adhesiva', 1.25, 200, NULL),
  (29, 'Nivel l�ser', 45.50, 10, 5),
  (30, 'Sierra de mano', 7.80, 50, 35),
  (31, 'Alicates de corte', 9.25, 30, 20),
  (32, 'Tornillos de acero', 2.50, 500, NULL),
  (33, 'Destornillador de precisi�n', 5.50, 40, 30),
  (34, 'Martillo de goma', 10.75, 25, 20),
  (35, 'Llave hexagonal', 6.60, 50, NULL),
  (36, 'Pala plegable', 14.00, 15, 10),
  (37, 'Escobilla de alambre', 3.25, 80, 60),
  (38, 'Clavos galvanizados', 2.75, 1000, NULL),
  (39, 'Cincel de punta', 7.40, 35, 25),
  (40, 'C�ter', 2.15, 90, NULL);

select * from productos;

select nombre, precio_unidad, isnull(vendidos,0) as vendidos
from productos;

select nombre, coalesce(precio_unidad * vendidos,0) as "Monto vendido"
from productos
order by "Monto vendido" desc;