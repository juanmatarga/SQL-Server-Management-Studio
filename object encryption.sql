-- object encryption

create or alter proc p_promedio
 @valor1 numeric(6,2),  
 @valor2 numeric(6,2),  
 @resultado numeric(6,2) output
with encryption
as  
 select @resultado = (@valor1 + @valor2)/2;


exec sp_helptext p_promedio;