Program ex1function;

	procedure Maior(a, b : integer);
	begin
		if (a > b) then
			writeln('O maior numero � : ', a)
	
			else if (b > a) then
				writeln('O maior numero � : ', b)
				
				else
					writeln('Os valores s�o iguais');			
	end;     
                   
var
	c, d : integer;
Begin
		
	write('Insira um n�mero: ');
		read(c);
		
	write('Insira um n�mero: ');
		read(d);
				
	 Maior(c, d);
	  
End.