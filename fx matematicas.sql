-- fx de valor pi
select pi() as Pi;

-- fx de redondeo de cifras
select ceiling($123.45) as redondeo; --siempre al int siguiente, salvo negativo que trunca

-- fx de truncar
select floor(123.45), floor(123.55) , floor(-123.5);

-- fx de redondeo
select round(123.45,1);

-- fx de potencia
select power(4,2); --(base,exp)

-- fx de numero random
select round(rand()*(100-1),2);

-- fx de raiz
select sqrt(81) as raiz;