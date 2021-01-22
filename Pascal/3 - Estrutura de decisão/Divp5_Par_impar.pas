Program Divp5_Par_impar;
var
	N : integer;
	op : char;
	
Begin
	clrscr;
	
	repeat
	
		write('Insira um número para verificação: ');
		read(N);
		
		if (N mod 2 = 0) then
			writeln('O numero é par')
			
			else
				writeln('O numero é impar');
				
		if (N mod 5 = 0) then
			writeln('O numero é divisível por 5')
			
			else
				writeln('O numero não é divisível por 5');
				
	write('Deseja repetir o programa (S/N): ');
	read(op);
	until((op = 'N') or (op = 'n'))	
  
End.