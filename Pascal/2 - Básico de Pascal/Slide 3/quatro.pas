Program quatro;

var
	a : integer;
	b : integer;
	c : integer;    	
begin
	a := 50;
	b := 100;
	
	writeln('Valor de A: ', a, ' Valor de b: ', b);
	
	c := a;
	a := b;
	b := c;
	
	writeln('Valor de A: ', a, ' Valor de b: ', b);
End.