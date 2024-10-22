-- union: se debe tener el mismo numero de columnas con mismo tipo de datos.

CREATE TABLE clientes (
  idcliente INT PRIMARY KEY,
  nom_cliente VARCHAR(100),
  contacto VARCHAR(100),
  direccion VARCHAR(100),
  ciudad VARCHAR(100),
  codigo_postal VARCHAR(10),
  pais VARCHAR(50)
);


insert into clientes values(1, 'Juan Perez', 'Juan Perez', 'Calle Falsa 123', 'Ciudad Ficticia', '12345', 'Argentina');
insert into clientes values(2, 'Maria Lopez', 'Maria Lopez', 'Avenida Imaginaria 456', 'Otra Ciudad', '54321', 'M�xico');
insert into clientes values(3, 'Carlos Ramirez', 'Carlos Ramirez', 'Carrera Inexistente 789', 'Ciudad Fantasma', '67890', 'Colombia');
insert into clientes values(4, 'Luisa Fern�ndez', 'Luisa Fern�ndez', 'Calle Sin Nombre 42', 'Ciudad Irreal', '24680', 'Per�');
insert into clientes values(5, 'Roberto Castro', 'Roberto Castro', 'Paseo de los Sue�os 789', 'Ciudad de Ensue�o', '98765', 'Chile');
  insert into clientes values(6, 'Ana G�mez', 'Ana G�mez', 'Avenida de los Sue�os 111', 'Ciudad de Ensue�o', '12345', 'M�xico');
  insert into clientes values(7, 'Pedro Rodr�guez', 'Pedro Rodr�guez', 'Calle del Sol 222', 'Ciudad del Sol', '54321', 'Argentina');
  insert into clientes values(8, 'Laura Silva', 'Laura Silva', 'Carrera Imaginaria 333', 'Ciudad Ficticia', '67890', 'Colombia');
  insert into clientes values(9, 'Javier Mart�nez', 'Javier Mart�nez', 'Paseo Sin Fin 444', 'Ciudad Irreal', '24680', 'Per�');
  insert into clientes values(10, 'Mar�a Torres', 'Mar�a Torres', 'Avenida del Lago 555', 'Ciudad de Ensue�o', '98765', 'Chile');
  insert into clientes values(11, 'Roberto Gonz�lez', 'Roberto Gonz�lez', 'Calle del Bosque 666', 'Ciudad del Sol', '13579', 'Argentina');
  insert into clientes values(12, 'Carolina Herrera', 'Carolina Herrera', 'Carrera de los Sue�os 777', 'Ciudad Ficticia', '86420', 'Colombia');
  insert into clientes values(13, 'Daniel Mendoza', 'Daniel Mendoza', 'Paseo del Mar 888', 'Ciudad Irreal', '24680', 'Per�');
  insert into clientes values(14, 'Sof�a Ram�rez', 'Sof�a Ram�rez', 'Avenida del Viento 999', 'Ciudad de Ensue�o', '98765', 'Chile');
  insert into clientes values(15, 'Fernando Morales', 'Fernando Morales', 'Calle del Monte 1010', 'Ciudad del Sol', '24680', 'Argentina');
  insert into clientes values(16, 'Valeria Pe�a', 'Valeria Pe�a', 'Carrera del R�o 1111', 'Ciudad Ficticia', '86420', 'Colombia');
  insert into clientes values(17, 'Hugo Rojas', 'Hugo Rojas', 'Paseo de la Monta�a 1212', 'Ciudad Irreal', '13579', 'Per�');
  insert into clientes values(18, 'Gabriela Salinas', 'Gabriela Salinas', 'Avenida del Mar 1313', 'Ciudad de Ensue�o', '98765', 'Chile');
  insert into clientes values(19, 'Andr�s Castro', 'Andr�s Castro', 'Calle del Cielo 1414', 'Ciudad del Sol', '86420', 'Argentina');
  insert into clientes values(20, 'Luisana S�nchez', 'Luisana S�nchez', 'Carrera del Horizonte 1515', 'Ciudad Ficticia', '13579', 'Colombia');
  insert into clientes values(21, 'Mart�n Vega', 'Mart�n Vega', 'Paseo del Bosque 1616', 'Ciudad Irreal', '86420', 'Per�');
  insert into clientes values(22, 'Carla Medina', 'Carla Medina', 'Avenida de los �ngeles 1717', 'Ciudad de Ensue�o', '98765', 'Chile');
  insert into clientes values(24, 'Cecilia Ramos', 'Cecilia Ramos', 'Carrera de la Luna 1919', 'Ciudad Ficticia', '13579', 'Argentina');
  insert into clientes values(25, 'Alejandro Vargas', 'Alejandro Vargas', 'Paseo del Sol 2020', 'Ciudad Irreal', '86420', 'Colombia');
  insert into clientes values(26, 'Daniela Fern�ndez', 'Daniela Fern�ndez', 'Avenida del Cielo 2121', 'Ciudad de Ensue�o', '98765', 'Chile');
  insert into clientes values(27, 'Manuel Torres', 'Manuel Torres', 'Calle del Mar 2222', 'Ciudad del Sol', '86420', 'Argentina');
  insert into clientes values(28, 'Gabriela Mendoza', 'Gabriela Mendoza', 'Carrera de la Monta�a 2323', 'Ciudad Ficticia', '13579', 'Colombia');
  insert into clientes values(29, 'Sebasti�n Rojas', 'Sebasti�n Rojas', 'Paseo del R�o 2424', 'Ciudad Irreal', '98765', 'Per�');
  insert into clientes values(30, 'Valentina Salazar', 'Valentina Salazar', 'Avenida del Bosque 2525', 'Ciudad de Ensue�o', '86420', 'Chile');
  insert into clientes values(31, 'Francisco Morales', 'Francisco Morales', 'Calle de la Luna 2626', 'Ciudad del Sol', '13579', 'Argentina');
  insert into clientes values(32, 'Marcela Vega', 'Marcela Vega', 'Carrera del Sol 2727', 'Ciudad Ficticia', '98765', 'Colombia');
  insert into clientes values(33, 'Andr�s Castro', 'Andr�s Castro', 'Paseo de los Sue�os 2828', 'Ciudad Irreal', '86420', 'Per�');
  insert into clientes values(34, 'Daniela Rojas', 'Daniela Rojas', 'Avenida de la Fantas�a 2929', 'Ciudad de Ensue�o', '13579', 'Chile');
  insert into clientes values(35, 'Roberto Salinas', 'Roberto Salinas', 'Calle de los Sue�os 3030', 'Ciudad del Sol', '98765', 'Argentina');
  insert into clientes values(36, 'Laura Torres', 'Laura Torres', 'Carrera de la Imaginaci�n 3131', 'Ciudad Ficticia', '86420', 'Colombia');
  insert into clientes values(37, 'Javier Mendoza', 'Javier Mendoza', 'Paseo de los Sue�os 3232', 'Ciudad Irreal', '13579', 'Per�');
  insert into clientes values(38, 'Carolina Salazar', 'Carolina Salazar', 'Avenida de los Recuerdos 3333', 'Ciudad de Ensue�o', '98765', 'Chile');
  insert into clientes values(39, 'Gabriel Medina', 'Gabriel Medina', 'Calle de la Esperanza 3434', 'Ciudad del Sol', '86420', 'Argentina');
  insert into clientes values(40, 'Isabella Vargas', 'Isabella Vargas', 'Carrera de los Sue�os 3535', 'Ciudad Ficticia', '13579', 'Colombia');
  
  
  CREATE TABLE suplidores (
  idsuplidor INT PRIMARY KEY,
  empresa VARCHAR(100),
  contacto VARCHAR(100),
  direccion VARCHAR(100),
  ciudad VARCHAR(100),
  codigo_postal VARCHAR(10),
  pais VARCHAR(50)
);

  insert into suplidores values(6, 'Acme Corporation', 'John Smith', '123 Main Street', 'New York', '10001', 'Argentina');
  insert into suplidores values(7, 'Globex Corporation', 'Jane Doe', '456 Elm Street', 'Los Angeles', '90001', 'Per�');
  insert into suplidores values(8, 'Wayne Enterprises', 'Bruce Wayne', '789 Park Avenue', 'Gotham City', '12345', 'Colombia');
  insert into suplidores values(9, 'Stark Industries', 'Tony Stark', '1 Stark Tower', 'New York', '10001', 'Chile');
  insert into suplidores values(10, 'LexCorp', 'Lex Luthor', '555 LexCorp Plaza', 'Metropolis', '54321', 'Argentina');
  insert into suplidores values(11, 'Umbrella Corporation', 'Albert Wesker', '777 Raccoon Street', 'Raccoon City', '67890', 'Venezuela');
  insert into suplidores values(12, 'Weyland-Yutani Corporation', 'Ellen Ripley', '888 Nostromo Way', 'Hadleys Hope', '24680', 'Rep. Dominicana');
  insert into suplidores values(13, 'InGen', 'John Hammond', 'Jurassic Park', 'Isla Nublar', '98765', 'Costa Rica');
  insert into suplidores values(14, 'Tyrell Corporation', 'Eldon Tyrell', '123 Tyrell Building', 'Los Angeles', '90001', 'United States');

select * from clientes;

select * from suplidores;

select 'Cliente' as Tipo, contacto, ciudad, pais from clientes
union all --duplicados incluidos
select 'Proveedor' as Tipo, contacto, ciudad, pais from suplidores
order by pais;

select * from clientes;

select count(idcliente) as cantidad_clientes, pais
from clientes
group by pais
order by cantidad_clientes desc;

select vendedor.nombre, count(ordenes.idorden) as "Cantidad de Ordenes"
from ordenes
left join vendedor on vendedor.id_vendedor = ordenes.id_vendedor
group by vendedor.nombre;