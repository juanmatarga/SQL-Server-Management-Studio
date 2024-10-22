-- loops / bucles

declare
	@conteo int = 0,
	@tabla int = 2;
while @conteo <= 20
	begin
		print(str(@tabla)+'X'+str(@conteo) + ' = ' + str(@tabla*@conteo));
		if @conteo = 10 break
		set @conteo += 1;
	end;
		print 'El valor ya es: '+str(@conteo);

declare
	@valor int = 1;
while @valor <= 10
	begin
		print 'Contando...'
		set @valor += 1;
		if @valor = 3
			print 'El valor ya es: ' + str(@valor);
			continue
		if @valor = 7
			print 'El valor ya es: ' + str(@valor);
			continue
	end;
	print 'El valor ya es: ' + str(@valor)

-- nested loops
declare
	@valor1 int = 1,
	@valor2 int = 2;
	while @valor1 <= 4
	begin
		print concat('loop externo: =', @valor1);
		while @valor2 <= 8
			begin
				print concat('loop anidado: =', @valor2)
				set @valor2 += 2
			end
		set @valor1 += 1
	end;
