Program Par_Impar;
var
	par, impar : integer;
	a : integer = 0;
Begin
	clrscr;
	write('Insira um numero: ');
	read(a);                 
	
	if a mod 2 = 0 then
		writeln(a, ' O numero é par')
		
	else
		writeln(a, ' O numero é impar');	
End.