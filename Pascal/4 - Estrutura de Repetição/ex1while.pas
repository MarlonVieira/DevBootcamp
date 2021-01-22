Program ex1while;
var
	N1, N2, i : integer;
Begin

	write('Insira um número: ');
	read(N1);
	
	i := 1;
	
	while (N2<=10) do
	begin
		i := N1 * N2;
		writeln(N1, 'X', N2, '=', i);
		
		N2 := N2 + 1;
	end;
  
End.