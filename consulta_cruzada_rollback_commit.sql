-- consulta cruzada

drop table productos;

CREATE TABLE productos (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10, 2),
    stock INT
);
go

CREATE TABLE Empaques (
    id_empaque INT PRIMARY KEY,
    tamanio_empaque VARCHAR(50),
    descripcion VARCHAR(100),
    peso INT,
    id_producto INT,
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);
go

INSERT INTO Productos (id_producto, nombre, descripcion, precio, stock)
VALUES 
(1, 'Corn Flakes', 'Cereal de maíz crujiente y delicioso', 3.99, 100),
(2, 'Choco Krispis', 'Cereal de arroz inflado con sabor a chocolate', 4.49, 80),
(3, 'Froot Loops', 'Cereal de maíz con sabor a frutas', 3.79, 120),
(4, 'Lucky Charms', 'Cereal de maíz con malvaviscos de colores', 4.99, 90),
(5, 'Cinnamon Toast Crunch', 'Cereal de trigo y canela', 4.29, 110),
(6, 'Rice Krispies', 'Cereal de arroz inflado', 3.49, 150);
go

INSERT INTO Empaques (id_empaque, tamanio_empaque, descripcion, peso,id_producto)
VALUES 
(1, 'Pequeño', 'Caja de 1 libra', 350, 1),
(2, 'Grande', 'Caja de 3 libras', 750, 1), 
(3, 'Mediano', 'Caja de 2 libras', 550, 2);

select productos.nombre, empaques.descripcion, productos.precio * empaques.peso as precio
from productos
cross join empaques
order by nombre, precio;

-- rollback: deshace las ops
-- commit: confirma y guarda las ops

begin transaction;
update empleados set salario = salario * 1.5;
if(select avg(salario) from empleados) >= 10000
begin
	rollback transaction;
	print 'Ejecucion revertida, el promedio de salarios es mayor a 4000'
end;
else
	begin
		commit transaction;
		print 'Salarios actualizados correctamente'
end;

select * from empleados;