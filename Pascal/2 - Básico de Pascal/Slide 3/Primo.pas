Program Primo;
var
	i, a : integer;
	primo : boolean;
	rep : char;
Begin
		write('Insira um n�mero para verificar se le � primo: ');
		read(a);
		
		i := 2;
		primo := true;
		
		while (i<a) and (primo) do
		begin
			if (a mod i = 0) then 
			begin
				primo := false;
			end;
			i := i+1;
		end;
		
		if (primo) then 
		begin
			writeln(a, ' � primo');
		end 
			else 
			  begin
					writeln(a, ' n�o � um n�mero primo, porque � divis�vel por ', i-1);
		 	  end;	
End.