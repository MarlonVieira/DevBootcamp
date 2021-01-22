Program ex3for;
var
	i, j : integer;
Begin

	for i := 1 to 10 do
	begin
		
		for j := 1 to 10 do
		begin
			writeln(i, 'X', j, '=', j*i);	
			if(j mod 10 = 0) then	
				writeln('');					
		end;
					
	end;
	  
End.