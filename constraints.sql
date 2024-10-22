drop table Clientes;

create table Clientes(
idcliente int not null,
nombre varchar(10) not null,
direccion varchar(100) not null,
telefono numeric(10) null,
email varchar(50) null
);

select * from Clientes

insert into Clientes values
(2, 'Jose', 'Calle primera', null, null),
(3, 'Juan', 'Calle primera', null, 'email.com');

-- Constraints
-- Primary key: Insertar registros unicos, no permite insertar null, sólo un PK

drop table Personas;

create table Personas(
idpersona int,
nombre varchar(10) not null,
edad int not null,
primary key(idpersona)
);

select * from Personas;

insert into personas values
(1, 'jose', 50),
(2, 'juan', 60);

-- si ya cree la tabla y quiero definir un primary key
alter table Personas
add constraint PK_enlace primary key(idpersona);

-- para borrar la llave primaria
alter table personas drop constraint PK_enlace

-- tambien se puede usar not null unique, es un constraint

drop table Personas;

create table Personas(
idpersona int not null,
clave varchar(10),
constraint UQ_idpersona unique(idpersona),
constraint UQ_clave unique(clave)
);

select * from Personas;

-- constraint type: check

create table Personas(
id int not null,
nombre varchar(10),
edad int,
check (edad>=18)
);

insert into personas values(1, 'Juan', 17);

create table Personas(
id int not null,
nombre varchar(10),
edad int,
constraint CK_Edad check (edad>=18)
);

-- default: valor configurado
create table Personas(
id int not null,
nombre varchar(10) not null,
edad int not null,
ciudad varchar(50) default 'Buenos Aires'
);

insert into personas values(1, 'Pedro', 30, default);

select * from personas;

-- si lo quiero agregar a una tabla ya creada
alter table personas
add constraint DF_ciudad
default 'Buenos Aires' for ciudad;

-- si lo quiero sacar
alter table personas
drop constraint DF_ciudad;

-- identity: incrementa el valor automaticamente, solo puede haber uno por tabla.

create table libros(
codigo int identity(10,1),
titulo varchar(60) not null,
autor varchar(60) not null
);

insert into libros values
('Friends','Vanlo'),
('The Office','Chandler')

select ident_seed('libros');

select ident_incr('libros');

set identity_insert libros on;

--si se borra un libro, el codigo es irrecuperable, no se va a asignar a otro

select * from libros;

-- foreign key: prevenir daños en relaciones entre tablas
drop table clientes;

create table clientes(
id_cliente int identity,
nombre varchar(20) not null,
apellido varchar(30) not null,
edad int not null
constraint PK_clientes primary key (id_cliente)
);

create table ordenes(
id_orden int identity,
articulo varchar(50) not null,
id_clinete int
constraint FK_ordenes_clientes foreign key references clientes(id_cliente)
-- on delete cascade
);

exec sp_rename 'ordenes.id_clinete', 'id_cliente'

insert into clientes values
('Juan', 'Gomez', 30),
('Carlos', 'Menem', 20);

insert into ordenes values
('Martillo', 1),
('Candado', 2);

select * from clientes
select * from ordenes

--ahora puedo borrar ordenes, pero no puedo borrar clientes teniendo ordenes enlazadas
