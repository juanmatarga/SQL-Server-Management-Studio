select * from Empleados
where edad>25 order by edad DESC;

select nombre, apellido, edad, salario from empleados
order by edad asc, salario desc;

select max(precio) as caro,
	   min(precio) as barato
	   from articulos;


drop table empleados;

 create table empleados(
 id_empleado int not null primary key,
  nombre varchar(30),
  apellido varchar(30),
  direccion varchar(30),
  puesto varchar(50),
  sueldo decimal(6,2),
  cant_hijos tinyint
 );

  insert into empleados values(1, 'Juan', 'P�rez', 'Calle A, Ciudad', 'Gerente', 5000.00, 2);
  insert into empleados values(2, 'Mar�a', 'L�pez', 'Calle B, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(3, 'Pedro', 'Gonz�lez', 'Calle C, Ciudad', 'T�cnico', 2500.00, 1);
  insert into empleados values(4, 'Laura', 'Garc�a', 'Calle D, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(5, 'Carlos', 'Mart�nez', 'Calle E, Ciudad', 'Desarrollador', 4000.00, 2);
  insert into empleados values(6, 'Ana', 'S�nchez', 'Calle F, Ciudad', 'Contadora', 4500.00, 1);
  insert into empleados values(7, 'Luis', 'Rodr�guez', 'Calle G, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(8, 'Patricia', 'Torres', 'Calle H, Ciudad', 'T�cnico', 2500.00, 1);
  insert into empleados values(9, 'Javier', 'Hern�ndez', 'Calle I, Ciudad', 'Gerente', 5000.00, 3);
  insert into empleados values(10, 'Sof�a', 'Flores', 'Calle J, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(11, 'Alejandro', 'Luna', 'Calle K, Ciudad', 'Desarrollador', 4000.00, 1);
  insert into empleados values(12, 'Elena', 'Vargas', 'Calle L, Ciudad', 'Contadora', 4500.00, 2);
  insert into empleados values(13, 'Diego', 'Rojas', 'Calle M, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(14, 'Carmen', 'Navarro', 'Calle N, Ciudad', 'T�cnico', 2500.00, 1);
  insert into empleados values(15, 'Gabriel', 'Soto', 'Calle O, Ciudad', 'Gerente', 5000.00, 2);
  insert into empleados values(16, 'Valeria', 'G�mez', 'Calle P, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(17, 'Hugo', 'Silva', 'Calle Q, Ciudad', 'Desarrollador', 4000.00, 1);
  insert into empleados values(18, 'M�nica', 'Mendoza', 'Calle R, Ciudad', 'Contadora', 4500.00, 3);
  insert into empleados values(19, 'Fernando', 'Ch�vez', 'Calle S, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(20, 'Adriana', 'Ortega', 'Calle T, Ciudad', 'T�cnico', 2500.00, 1);
  insert into empleados values(21, 'Ricardo', 'Castro', 'Calle U, Ciudad', 'Gerente', 5000.00, 2);
  insert into empleados values(22, 'Camila', 'Morales', 'Calle V, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(23, 'Andr�s', 'R�os', 'Calle W, Ciudad', 'T�cnico', 2500.00, 1);
  insert into empleados values(24, 'Isabella', 'Vega', 'Calle X, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(25, 'David', 'Herrera', 'Calle Y, Ciudad', 'Desarrollador', 4000.00, 2);
  insert into empleados values(26, 'Carolina', 'Santos', 'Calle Z, Ciudad', 'Contadora', 4500.00, 1);
  insert into empleados values(27, 'Ra�l', 'Mendoza', 'Calle A1, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(28, 'Gabriela', 'Campos', 'Calle B1, Ciudad', 'T�cnico', 2500.00, 1);
  insert into empleados values(29, '�scar', 'Delgado', 'Calle C1, Ciudad', 'Gerente', 5000.00, 3);
  insert into empleados values(30, 'Daniela', 'Castillo', 'Calle D1, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(31, 'Eduardo', 'Fuentes', 'Calle E1, Ciudad', 'Desarrollador', 4000.00, 1);
  insert into empleados values(32, 'Gabriela', 'Lara', 'Calle F1, Ciudad', 'Contadora', 4500.00, 2);
  insert into empleados values(33, 'Lorenzo', 'Ortiz', 'Calle G1, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(34, 'Valentina', 'Guerra', 'Calle H1, Ciudad', 'T�cnico', 2500.00, 1);
  insert into empleados values(35, 'H�ctor', 'Vargas', 'Calle I1, Ciudad', 'Gerente', 5000.00, 2);
  insert into empleados values(36, 'Daniela', 'Paredes', 'Calle J1, Ciudad', 'Analista', 3500.00, 0);
  insert into empleados values(37, 'Santiago', 'Casta�eda', 'Calle K1, Ciudad', 'Desarrollador', 4000.00, 1);
  insert into empleados values(38, 'Valeria', 'Cruz', 'Calle L1, Ciudad', 'Contadora', 4500.00, 3);
  insert into empleados values(39, 'Gustavo', 'Mej�a', 'Calle M1, Ciudad', 'Asistente', 3000.00, 0);
  insert into empleados values(40, 'Alejandra', 'Rojas', 'Calle N1, Ciudad', 'T�cnico', 2500.00, 1);

select count(*) as Cantidad from empleados;

select count(sueldo) as Asistentes from Empleados
where puesto = 'Asistente';

select sum(sueldo) as total_sueldos from empleados
where puesto = 'Asistente';

select avg(sueldo) as promedio_sueldos, avg(cant_hijos) as promedio_hijos from empleados
where puesto = 'Gerente';

select avg(distinct sueldo) as prom_distinct from empleados;

select * from empleados
where puesto in('Gerente', 'Asistente');

select * from empleados
where id_empleado between 1 and 7 and cant_hijos between 1 and 2;

select * from empleados
where sueldo between 2000 and 7000
and puesto not in('Desarrollador', 'Gerente')
and cant_hijos>0
and nombre like '_A%'
order by sueldo desc;

