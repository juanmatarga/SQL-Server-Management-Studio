-- transact sql fx

create or alter function f_suma
	(@valor1 int, @valor2 int)
returns int
as
begin
	declare @resultado int
	set @resultado = @valor1 + @valor2
	return @resultado
end;

select dbo.f_suma(3,4) as suma;

select * from facturas;

create or alter function f_meses
    (@fecha date)
returns varchar(15)
as
begin
    declare @nombre varchar(15);
    set @nombre = 
    case month(@fecha)
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
    end
    return @nombre;
end;


select cliente, dbo.f_meses(fecha) as mes from facturas;

-- table fx

drop table libros 
go
CREATE TABLE libros (
    codigo INT IDENTITY(1,1) PRIMARY KEY,
    titulo NVARCHAR(100) NOT NULL,
    autor NVARCHAR(100) NOT NULL,
    editorial NVARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);
go
INSERT INTO libros (titulo, autor, editorial, precio) VALUES
('1984', 'George Orwell', 'Debolsillo', 15.00),
('Cien años de soledad', 'Gabriel García Márquez', 'Editorial Sudamericana', 25.99),
('El principito', 'Antoine de Saint-Exupéry', 'Salvat', 10.50),
('Harry Potter y la piedra filosofal', 'J.K. Rowling', 'Salamandra', 19.95),
('Matar un ruiseñor', 'Harper Lee', 'Vintage Books', 12.75),
('El gran Gatsby', 'F. Scott Fitzgerald', 'Scribner', 18.00),
('Don Quijote de la Mancha', 'Miguel de Cervantes', 'Editorial Planeta', 22.50),
('Orgullo y prejuicio', 'Jane Austen', 'Penguin Classics', 14.99),
('Crimen y castigo', 'Fiodor Dostoievski', 'Alianza Editorial', 16.95),
('Los juegos del hambre', 'Suzanne Collins', 'RBA Molino', 17.25),
('La sombra del viento', 'Carlos Ruiz Zafón', 'Planeta', 21.00),
('El código Da Vinci', 'Dan Brown', 'Umbriel Editores', 23.95),
('To Kill a Mockingbird', 'Harper Lee', 'Harper Perennial Modern Classics', 13.50),
('The Lord of the Rings', 'J.R.R. Tolkien', 'Mariner Books', 30.00),
('Pride and Prejudice', 'Jane Austen', 'Vintage Classics', 12.99),
('The Catcher in the Rye', 'J.D. Salinger', 'Back Bay Books', 16.50),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', 18.00),
('The Hunger Games', 'Suzanne Collins', 'Scholastic Press', 14.95),
('The Alchemist', 'Paulo Coelho', 'HarperOne', 13.25),
('Brave New World', 'Aldous Huxley', 'Harper Perennial Modern Classics', 11.99),
('La Catedral del Mar', 'Ildefonso Falcones', 'Grijalbo', 16.99),
('La Sombra de la Serpiente', 'Rick Riordan', 'Montena', 22.50),
('El Hobbit', 'J.R.R. Tolkien', 'Minotauro', 18.95),
('El amor en los tiempos del cólera', 'Gabriel García Márquez', 'Diana', 19.75),
('Cazadores de sombras: Ciudad de hueso', 'Cassandra Clare', 'Destino', 14.50),
('Drácula', 'Bram Stoker', 'Anaya', 15.99),
('It', 'Stephen King', 'Debolsillo', 27.25),
('Los pilares de la Tierra', 'Ken Follett', 'Follett', 20.00),
('El nombre del viento', 'Patrick Rothfuss', 'Plaza & Janés', 23.95),
('Cien años de soledad', 'Gabriel García Márquez', 'Círculo de Lectores', 21.99),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Wordsworth Classics', 10.99),
('1984', 'George Orwell', 'Secker & Warburg', 14.75),
('The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', 16.50),
('The Lord of the Rings', 'J.R.R. Tolkien', 'Houghton Mifflin Harcourt', 28.00),
('The Hunger Games', 'Suzanne Collins', 'Scholastic Corporation', 14.95),
('Harry Potter and the Sorcerers Stone', 'J.K. Rowling', 'Arthur A. Levine Books', 19.99),
('Matar a un ruisenior', 'Harper Lee', 'Harper Lee', 12.50),
('Pride and Prejudice', 'Jane Austen', 'Penguin Books', 11.99),
('The Alchemist', 'Paulo Coelho', 'HarperOne', 14.25),
('Brave New World', 'Aldous Huxley', 'Harper Brothers', 10.99);

create or alter function f_autor
	(@autor varchar(30))
returns table
with encryption
as
	return(select * from libros where autor like @autor+'%');

select * from f_autor('Bram')

-- triggers: mantienen integridad de datos
create table control
(usuario varchar(30), fecha date, accion varchar(30));

create or alter trigger t_inserta
on libros
after insert
as
	begin
		declare @usuario varchar(30);
		set @usuario = SUSER_NAME();
		insert into control values(@usuario, getdate(), 'Insert');
	end;

insert into libros values
('2001', 'Carlos Menem', 'Argentina', 19.2);

select * from control;

create or alter trigger t_update
on libros
after update
as
	begin
		declare @usuario varchar(30);
		set @usuario = SUSER_NAME();
		insert into control values(@usuario, getdate(), 'Update');
	end;

create or alter trigger t_delete
on libros
after delete
as
	begin
		declare @usuario varchar(30);
		set @usuario = SUSER_NAME();
		insert into control values(@usuario, getdate(), 'Delete');
	end;

update libros set titulo = '2001' where titulo = '2001';
delete from libros where codigo = 2;