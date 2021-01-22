Program ex1vet;
var
	x : array[1..20] of integer;
	i, j : integer;
Begin

	for i := 1 to 20 do
		x[i] := i;
	
	write('Insira um valor de (1 a 10): ');
	read(j);
	
	for i := 1 to 20 do
	begin
		if ((j*2) = x[i]) then
		writeln('O Valor ', j, ' está na posição ', x[i]);
	end;
	
End.