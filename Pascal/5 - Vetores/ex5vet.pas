Program ex4vet;
var
	vet : array [1..5] of integer = (142, 22, 50, 143, 100);
	
	i, aux, ind, soma : integer;
Begin

	aux := 999999;
	for i := 1 to 5 do
	begin
		if(vet[i] < aux) then
		begin
			aux := vet[i];
			ind := i;
		end;
		soma := vet[i] + soma; 	
	end;
	
	writeln('O menor vetor é ', aux, ' e o indice é ', ind);
	writeln('A soma de todos é: ', soma);
  
End.