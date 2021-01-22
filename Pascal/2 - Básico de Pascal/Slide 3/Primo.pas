Program Primo;
var
	i, a : integer;
	primo : boolean;
	rep : char;
Begin
		write('Insira um número para verificar se le é primo: ');
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
			writeln(a, ' é primo');
		end 
			else 
			  begin
					writeln(a, ' não é um número primo, porque é divisível por ', i-1);
		 	  end;	
End.