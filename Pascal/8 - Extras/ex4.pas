Program ex4;
var                                      
	email, senha, senha2, msg : string; 
	
	procedure Solicita;
	begin
		write('Insira um email: ');
		read(email);
	  
		write('Insira uma senha: ');
		read(senha);
		
		write('Insira novamente sua senha: ');
		read(senha2);
		
	end;
	
	function valida(var erro : string): boolean;
	begin
		erro := '';
		
		if ((length(senha) < 6) or (length(senha2) < 6) ) then
		begin
			valida := false;
			erro := 'ERRO: insira uma senha de 6 digitos';
		end
			else if (senha <> senha2) then
			begin
				valida := false;
				erro := 'ERRO: as senhas não coincidem';
			end
				else
					valida := true;	
	end;
Begin

	while true do
	begin
	
		Solicita;
		if valida(msg) then
		begin
			writeln('Acesso PERMITIDO');
			break;
		end
			else
			begin
				writeln('Acesso NEGADO');
				writeln(msg);
				readln;
				writeln;	
			end	
	end;
			
End.