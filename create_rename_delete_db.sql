create database turso;

select * from sys.databases;

exec sp_who2;

alter database turso set single_user with rollback immediate;
go
alter database turso modify name = tirso;
go
alter database tirso set multi_user;
go

