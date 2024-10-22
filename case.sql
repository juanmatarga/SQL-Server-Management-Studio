select * from clientes;

update clientes set ciudad = null
where idcliente in(1,3,9,10,11,13,14,20,23,34,38,40,46);

select * from articulos;

-- ver articulos con existencia normal
-- ver articulos que necesitan ser pedidos
-- ver articulos menos vendidos

select nombre, cantidad,
case
   when cantidad > 30 then 'Articulo sobre-stock'
   when cantidad < 10 then 'Articulo sub-stock'
   else 'Existencia normal'
   end as Inventario
from articulos
order by cantidad desc;

-- generar un reporte con nombre, pais y ciudad de los clientes
-- organizar el reporte por ciudad, en caso de que no tenga ciudad, por pais.

select nombre, pais, ciudad
from clientes
order by
(case
	when ciudad is null then pais
	else ciudad
end);