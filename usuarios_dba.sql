create login cfk with password = 'menemista1',
check_policy = off
go

create user cfk for login cfk
with default_schema = prueba2;
go

grant select on schema::dbo to cfk;
grant create table to cfk as dbo;
grant insert, update, delete on dbo.productos to cfk;

revoke insert, update, delete on dbo.productos to cfk;