Program ex1function;

	procedure Maior(a, b : integer);
	begin
		if (a > b) then
			writeln('O maior numero é : ', a)
	
			else if (b > a) then
				writeln('O maior numero é : ', b)
				
				else
					writeln('Os valores são iguais');			
	end;     
                   
var
	c, d : integer;
Begin
		
	write('Insira um número: ');
		read(c);
		
	write('Insira um número: ');
		read(d);
				
	 Maior(c, d);
	  
End.