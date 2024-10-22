-- temp tables

create table #usuarios(
nombre varchar(20),
clave varchar(10),
primary key (nombre)
);

select * from #usuarios; --funciona como tabla global