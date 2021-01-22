Program ex12matriz;

var
	matriz : array [1..5, 1..5] of integer;
	i, j, aux : integer;
	indL, indC : integer;
Begin

	for i := 1 to 5 do
	begin
		for j := 1 to 5 do
		begin
	  	matriz[i, j] := random(15);
			write(matriz[i, j], ' ');	
			if(matriz[i, j] > aux) then
			begin
				aux := matriz[i, j];
				indL := i;
				indc := j;
			end;		
		end;
		writeln('');
	end;
	
	writeln('O maior valor é: ', aux, ' está na linha: ', indL, ' está na coluna: ', indC);
  
End.