Program Divp5_Par_impar;
var
	N : integer;
	op : char;
	
Begin
	clrscr;
	
	repeat
	
		write('Insira um n�mero para verifica��o: ');
		read(N);
		
		if (N mod 2 = 0) then
			writeln('O numero � par')
			
			else
				writeln('O numero � impar');
				
		if (N mod 5 = 0) then
			writeln('O numero � divis�vel por 5')
			
			else
				writeln('O numero n�o � divis�vel por 5');
				
	write('Deseja repetir o programa (S/N): ');
	read(op);
	until((op = 'N') or (op = 'n'))	
  
End.