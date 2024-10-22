-- having: similar a where, con agrupacion.

drop table clientes;

CREATE TABLE clientes (
  idcliente INT,
  nombre VARCHAR(50),
  direccion VARCHAR(100),
  ciudad VARCHAR(50),
  codigo_postal VARCHAR(10),
  pais VARCHAR(50)
);
INSERT INTO clientes (idcliente, nombre, direccion, ciudad, codigo_postal, pais)
VALUES
  (1, 'Juan Pérez', 'Calle 123', 'Ciudad de México', '12345', 'México'),
  (2, 'María García', 'Avenida Principal 456', 'Monterrey', '67890', 'México'),
  (3, 'Carlos López', 'Calle Principal 789', 'Guadalajara', '54321', 'México'),
  (4, 'Ana Rodríguez', 'Carrera 10', 'Bogotá', '11111', 'Colombia'),
  (5, 'Luisa Martínez', 'Calle 20', 'Medellín', '22222', 'Colombia'),
  (6, 'Pedro Gómez', 'Avenida Central', 'Cali', '33333', 'Colombia'),
  (7, 'Pablo Fernández', 'Calle Principal 1', 'Madrid', '28001', 'España'),
  (8, 'Sofía Torres', 'Avenida Gran Vía', 'Barcelona', '08001', 'España'),
  (9, 'Javier Ramírez', 'Calle Diagonal', 'Valencia', '46001', 'España'),
  (10, 'Fernanda Silva', 'Avenida 9 de Julio', 'Buenos Aires', '1000', 'Argentina'),
  (11, 'Diego López', 'Calle Florida', 'Córdoba', '2000', 'Argentina'),
  (12, 'Gabriela González', 'Avenida Libertador', 'Rosario', '3000', 'Argentina'),
  (13, 'Mario Huamán', 'Jirón de la Unión', 'Lima', '01', 'Perú'),
  (14, 'Rosa Cruz', 'Avenida Arequipa', 'Arequipa', '02', 'Perú'),
  (15, 'Andrés Torres', 'Calle Las Nazarenas', 'Cusco', '03', 'Perú'),
  (16, 'Camila Soto', 'Avenida Providencia', 'Santiago', '8320000', 'Chile'),
  (17, 'Lucas Morales', 'Calle Alonso de Córdova', 'Viña del Mar', '8320000', 'Chile'),
  (18, 'Valentina Castro', 'Avenida Apoquindo', 'Valparaíso', '8320000', 'Chile'),
  (19, 'Mariano Mendoza', 'Calle Tacna', 'Arica', '1000000', 'Chile'),
  (20, 'Laura Torres', 'Avenida Pedro Montt', 'Antofagasta', '1000000', 'Chile'),
  (21, 'Isabella Morales', 'Calle Principal 2', 'Ciudad de México', '54321', 'México'),
  (22, 'Emilio Vargas', 'Avenida Reforma', 'Ciudad de México', '12345', 'México'),
  (23, 'Valeria González', 'Calle Morelos', 'Monterrey', '67890', 'México'),
  (24, 'Daniel Silva', 'Avenida Juárez', 'Monterrey', '54321', 'México'),
  (25, 'Sara Ramírez', 'Calle Independencia', 'Guadalajara', '11111', 'México'),
  (26, 'Javier García', 'Avenida Hidalgo', 'Guadalajara', '22222', 'México'),
  (27, 'Camila Torres', 'Calle 20 de Noviembre', 'Bogotá', '33333', 'Colombia'),
  (28, 'Diego Castro', 'Avenida de los Andes', 'Bogotá', '67890', 'Colombia'),
  (29, 'Valentina Vargas', 'Calle Santander', 'Medellín', '11111', 'Colombia'),
  (30, 'Andrés Pérez', 'Avenida Oriental', 'Medellín', '54321', 'Colombia'),
  (31, 'Luciana López', 'Calle Mayor', 'Cali', '22222', 'Colombia'),
  (32, 'Sebastián Ramírez', 'Avenida 9 de Octubre', 'Cali', '33333', 'Colombia'),
  (33, 'Paula Fernández', 'Calle Gran Vía', 'Madrid', '11111', 'España'),
  (34, 'Joaquín Torres', 'Avenida Paseo del Prado', 'Madrid', '22222', 'España'),
  (35, 'Lucía Herrera', 'Calle Serrano', 'Barcelona', '33333', 'España'),
  (36, 'Tomás Martínez', 'Avenida Diagonal', 'Barcelona', '67890', 'España'),
  (37, 'Catalina Castro', 'Calle San Martín', 'Valencia', '54321', 'España'),
  (38, 'Mateo Morales', 'Avenida Blasco Ibáñez', 'Valencia', '11111', 'España'),
  (39, 'Isidora Ramírez', 'Calle Florida', 'Buenos Aires', '22222', 'Argentina'),
  (40, 'Benjamín Silva', 'Avenida Corrientes', 'Buenos Aires', '33333', 'Argentina'),
  (41, 'Valentín Gómez', 'Calle Hidalgo', 'Córdoba', '67890', 'Argentina'),
  (42, 'Renata Torres', 'Avenida Libertador', 'Córdoba', '54321', 'Argentina'),
  (43, 'Emilio Soto', 'Calle Santa Fe', 'Rosario', '11111', 'Argentina'),
  (44, 'Martina Morales', 'Avenida 27 de Abril', 'Rosario', '22222', 'Argentina'),
  (45, 'Felipe González', 'Calle Huallaga', 'Lima', '33333', 'Perú'),
  (46, 'Renata Castro', 'Avenida Abancay', 'Lima', '67890', 'Perú'),
  (47, 'Sebastián Herrera', 'Calle Mariscal Miller', 'Arequipa', '54321', 'Perú'),
  (48, 'Antonella Ramírez', 'Avenida Dolores', 'Arequipa', '11111', 'Perú'),
  (49, 'Maximiliano Silva', 'Calle Merced', 'Cusco', '22222', 'Perú'),
  (50, 'Valentina Torres', 'Avenida El Sol', 'Cusco', '33333', 'Perú'),
  (51, 'Agustín Morales', 'Calle Merced', 'Santiago', '67890', 'Chile'),
  (52, 'Renata Castro', 'Avenida Providencia', 'Santiago', '54321', 'Chile'),
  (53, 'Matías Herrera', 'Calle Alonso de Córdova', 'Viña del Mar', '11111', 'Chile'),
  (54, 'Emilia Ramírez', 'Avenida San Martín', 'Viña del Mar', '22222', 'Chile'),
  (55, 'Luciano González', 'Calle San Martín', 'Valparaíso', '33333', 'Chile'),
  (56, 'Delfina Silva', 'Avenida Errázuriz', 'Valparaíso', '67890', 'Chile'),
  (57, 'Máximo López', 'Calle 21 de Mayo', 'Arica', '54321', 'Chile'),
  (58, 'Isidora Morales', 'Avenida Pedro Montt', 'Arica', '11111', 'Chile'),
  (59, 'Felipe Castro', 'Calle Rancagua', 'Antofagasta', '22222', 'Chile'),
  (60, 'Constanza Torres', 'Avenida Balmaceda', 'Antofagasta', '33333', 'Chile');

  select * from clientes;

  select count(idcliente) as clientes, pais
  from clientes
  group by pais
  having count(idcliente)>5 -- solo los paises que tienen mas de 5 clientes
  order by clientes desc;

  select v.nombre, count(o.idorden) as ordenes
  from ordenes o
  inner join vendendor v on o.id_vendedor = v.vendedor
  where nombre like '%ana%' or nombre like '%Pedro%'
  group by nombre
  having count(o.idorden) > 2;