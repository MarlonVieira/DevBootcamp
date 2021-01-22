Program ex3function;

var
	vet : array [1..50] of integer;
	idade, i : integer;
	
	procedure Addyear(Ayear : integer);
	begin
		Inc(i);
		vet[i] := idade;
	end;

	procedure midle(i : integer);
	var
		j, soma : integer;
	begin			
		soma := 0;
		for j := 1 to i do
		begin	
			soma := soma + vet[j];
		end;
				
		write('A média das idades é: ', soma/i:0:2);  				
	end;
	
	procedure bigyear(i : integer);
	var
		j, aux : integer;
	begin
		if(i = 0) then
		exit;
			
		for j := 1 to i do
		begin	
			if(aux < vet[j]) then
				aux := vet[j];
		end;
		
		writeln();		
		write('A maior idade é: ', aux);  				
	end;
	
	procedure smallyear(i : integer);
	var
		j, aux : integer;
	begin
		if(i = 0) then
		exit;
		
		aux := 9999999;	
		for j := 1 to i do
		begin	
			if(aux > vet[j]) then
				aux := vet[j];
		end;
		
		writeln();		
		write('A menor idade é: ', aux);  				
	end;
			
Begin
	while (true) do
	begin
	
		write('Insira uma idade: ');
			read(idade);
			
		if(idade = 0) then
			break
		
		else
			Addyear(idade);					
	end;
	
	midle(i);
	bigyear(i);
	smallyear(i);
			 
End.