Program ex1matriz;

var
	matriz : array [1..3, 1..3] of integer;
	i, j : integer;
Begin

	for i := 1 to 3 do
	begin
		for j := 1 to 3 do
		begin
	  	matriz[i, j] := i+j;
			write(matriz[i, j], ' ');			
		end;
		writeln('');
	end;
  
End.