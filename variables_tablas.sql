declare
	@materias_primas table(
	id int identity,
	nombre varchar(20),
	precio float);
begin
	insert into @materias_primas values('Cafe Brasil', 1980.70)
	select * from @materias_primas
end;