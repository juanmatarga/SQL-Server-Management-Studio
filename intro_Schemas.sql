create schema Ventas;

create schema Cobros;

create table ventas.clientes(
id_cliente int,
nombre int,
direccion varchar(30));

create table cobros.clientes(
id_cliente int,
nombre int,
direccion varchar(30));

select * from ventas.clientes;

drop table cobros.clientes;