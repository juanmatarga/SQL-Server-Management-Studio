-- t-sql

-- bulk insert

create table autos(
marca varchar(30),
modelo varchar(30),
tipo varchar(20),
color varchar(20)
);

bulk insert
autos -- tabla destino
from
'C:\Users\juanm\Downloads\tabla_autos.txt'
with (firstrow = 2);

select * from autos;