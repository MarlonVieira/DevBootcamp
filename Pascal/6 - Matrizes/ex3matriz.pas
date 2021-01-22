Program ex3matriz;

var

	matriz1 : array [1..3, 1..2] of integer;
	matriz2 : array [1..3, 1..2] of integer;
	matrizSup : array [1..3, 1..2] of integer; 
	i, j, k : integer;
	
Begin
	clrscr;

	writeln('Matriz 1: ');
  k:=0;
	for i := 1 to 3 do
	begin
	
		for j := 1 to 2 do
		begin
		 	
		 	k:= k+1;
		  matriz1[i, j] := k;
		  matriz2[i, j] := k;
		  
			matrizSup[i, j] :=	matriz1[i, j] + matriz2[i, j];
			
			write(matriz1[i, j], ' ');				                         
		end;		
		writeln();				 
	end;
	
	writeln();
	writeln('Matriz 2: ');
	for i := 1 to 3 do
	begin	
		for j := 1 to 2 do
		begin					
			write(matriz2[i, j], ' ');			                         
		end;		
		writeln();				 
	end;
	
	writeln();
	writeln('Matriz 3: ');
	for i := 1 to 3 do
	begin	
		for j := 1 to 2 do
		begin					
			write(matrizSup[i, j], ' ');			                         
		end;		
		writeln();				 
	end;
		
End.