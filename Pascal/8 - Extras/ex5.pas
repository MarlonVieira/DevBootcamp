Program ex5;
	
	function valida (var email : string): boolean;
	var
		i : integer;
	begin
		for i:= 1 to length(email) do
		begin
			if ((email[i] = '@')) then
			begin
			
				valida := true;
				writeln('Email aceito');
				break;
		
			end
				else
				begin
					valida := false;
				end
		end		
	end;

var                                      
	email : string;
	
	procedure Solicita;
	begin
		clrscr;
		write('Insira um email: ');
		read(email);
		writeln();		
	end;
		
Begin 

	repeat
	
		Solicita;
						
	until (valida(email)=true); 
			
End.