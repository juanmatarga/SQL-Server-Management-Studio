-- char
select nombre + char(65) as nombres
from empleados;

-- fx concat
select concat('Hola ', 'a ', 'todos') as saludo;

-- fx len
select len('SQL') as largo;

-- fx lower
select lower(nombre) from empleados as nombres_minus; 

-- fx upper
select upper(nombre) from empleados as nombres_minus; 

-- fx capitalize
select concat(upper(left(nombre,1)),
lower(right(nombre, len(nombre)-1))) as capitalized_name
from empleados;

-- fx trim
select ltrim('     hola');
select rtrim('hola    ');
select trim('      hola     a   ');

-- fx replace
select replace('el cocobongo', 'o', 'a');

-- fx translate
select translate('abcd', 'abc', '000');

-- fx replicate
select replicate(nombre + ' ', 3) from empleados;

-- fx reverse
select reverse(nombre) as reves from empleados;