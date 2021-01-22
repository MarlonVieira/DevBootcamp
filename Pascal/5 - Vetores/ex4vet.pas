Program ex4vet;
var
	vet : array [1..5] of integer = (15, 20, 50, -4, -100);
	
	i, aux, ind : integer;
Begin

	for i := 1 to 5 do
	begin
		if(vet[i] < aux) then
		begin
			aux := vet[i];
			ind := i;
		end; 	
	end;
	
	writeln('O maior vetor é ', aux, ' e o indice é ', ind);
  
End.