Program Pzim ;

	function soma(a, b : integer): integer;
	begin
		soma:=a+b;
	end;
	
var
	c, d : integer;
Begin
		
	write('Insira um n�mero: ');
		read(c);
		
	write('Insira um n�mero: ');
		read(d);
				
	 writeln(soma(c, d));
	  
End.