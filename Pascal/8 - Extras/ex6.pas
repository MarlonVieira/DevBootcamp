Program fatorial;

	function fat(num : integer): integer;
	var
		i, aux : integer;
	begin
		aux:=1;
		for i := 1 to num do
		begin
				aux := aux * i;
		end;
		fat:=aux;
	end;
	
var
	N : integer;	
Begin
	
	write('Insira um numero: ');
	read(N);
	
	writeln(fat(N));  
End.