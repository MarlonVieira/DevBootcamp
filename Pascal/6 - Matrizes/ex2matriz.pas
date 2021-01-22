Program ex1matriz;

var

	matriz : array [1..5, 1..5] of integer;
	somamatriz : array [1..5, 1..1] of integer;
	diag : array [1..5] of integer; 
	i, j, k, m, n : integer;
	
Begin
	clrscr;
	
	k:=0;
	n:=0;

	for i := 1 to 5 do
	begin
		for j := 1 to 5 do
		begin
		
			k:= k+1;
		  matriz[i, j] := k;
			write(matriz[i, j], ' ');
			
			somamatriz[i, 1] := somamatriz[i, 1] + matriz[i, j];
							                         
		end;
		
		n:=n+1;
		diag[i] := matriz[i, n];
		writeln('');
		 
	end;

	m:=0;
	writeln();
	
	for i := 1 to 5 do
	begin
	
		m := m+1;	
		writeln('A soma da ', m, 'º linha é: ' , somamatriz[i, 1]);
		
	end;
	
	writeln();
	write('Vetor da diagonal: ');
	
	for i := 1 to 5 do
	begin
		write(diag[i], ' ');
	end;
	
	
End.