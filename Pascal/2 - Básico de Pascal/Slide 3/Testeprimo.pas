Program Primo;
var
	i, a : integer;
	primo : boolean;
	rep : char;
Begin

		write('Insira um n�mero para verificar se le � primo: ');
		read(a);
		
		
		
		if (eprimo) then 
		begin
			writeln(a, ' � primo');
		end 
			else 
			  begin
					writeln(a, ' n�o � um n�mero primo, porque � divis�vel por ', i-1);
		 	  end;
				 	
End.

integer eprimo (integer A);

var
integer : i, j, cont;

	i, cont := 0;

	for (i = 1; i<= A; i := i + 1)
	begin
		if(A mod i = 0)
		begin
			cont := cont+1;
		end;
		
		if(cont = 2)
		begin
			writeln('O numero � primo');
		end;
	

	