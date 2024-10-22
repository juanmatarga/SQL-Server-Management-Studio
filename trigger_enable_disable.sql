-- disable and enable triggers

alter table productos
disable trigger tr_blockudpate_productos;

alter table productos
enable trigger tr_blockudpate_productos;