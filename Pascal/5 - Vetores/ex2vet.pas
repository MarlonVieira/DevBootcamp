Program ex2vet;
var
	x : array[1..10] of integer;
	i,j : integer;
Begin

	for i := 1 to 10 do
	begin
		x[i] := 11-i;
		writeln(i, ' - Posição está o - ', x[i]);
	end;	

End.