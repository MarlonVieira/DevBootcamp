Program ex1;
var
	n1, n2 : integer;
Begin

	write('Insira um número: ');
	read(n1);
	
	write('Insira um segundo número: ');
	read(n2);
	
	writeln('A soma dos numeros é ', (n1+n2), ' , subtração dos numeros é ', (n1-n2));
	writeln(',a multiplicação dos numeros é ', (n1*n2), ' ,a divisão dos numeros é ', (n1/n2):0:2);
	
  
End.