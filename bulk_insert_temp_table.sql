-- bulk insert
if (select name from tempdb.sys.tables) like '%#basepedidos'
drop table #basepedidos;

create table #basepedidos (
	CodigoPedido varchar(100) not null,
	DocumentoCliente varchar(100) not null,
	CodigoCiudad int null,
	CodigoProducto varchar(100) not null,
	CantidadProducto int,
	FechaPedido date,
	HoraPedido time
);

bulk insert #basepedidos
from 'C:\Users\juanm\Downloads\basepedidos.xlsx'
with (firstrow = 2);

bulk insert #basepedidos
from 'C:\Users\juanm\Downloads\basepedidos.txt'
with (firstrow = 2);

select * from #basepedidos;