Program ex2while;
var
	N1, N2, N3, M : real;
	
Begin

	while (M<7) do
	begin

		write('Insira a 1� nota: ');
		read(N1);
		
		write('Insira a 2� nota: ');
		read(N2);
		
		write('Insira a 3� nota: ');
		read(N3);
	
	  M := (N1+N2+N3)/3;
	  
	  write ('A sua m�dia �: ', M:0:2);
	  
	  if(M<7) then
	  begin
	  	writeln('');
	  	writeln('Insira suas notas novamente.');
	  end;	
	end;
  
End.