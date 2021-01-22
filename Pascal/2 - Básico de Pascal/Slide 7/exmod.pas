Program exmod;
var
	N, N2 : integer;
Begin

	write('Insira um numero para ser feito o resto da divisão por 2: ');
	read(N);
	
	N2 := N mod 2;
	
	writeln('O resultado é: ', N2);	
 
End.