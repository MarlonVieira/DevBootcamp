Program ValidaCpf;
var
	cpf : string;
	N1, N2, aju, aju2, num1, num2 : integer;
	
	function validacpf (Acpf : string): integer;
	var
		erro, resp, i, soma, aux : integer; 
	begin
	
		soma:=0;
		for i := 1 to 9 do
		begin
		
			Val(cpf[i], resp, erro);
				soma := (resp*(11-i)) + soma;
				
		end;
			
		aux := (soma * 10) mod 11;
		
		if((aux = 10) or (cpf = '11111111111') or (cpf = '22222222222') or (cpf = '33333333333') or (cpf = '22222222222') or (cpf = '55555555555') or (cpf = '66666666666') or (cpf = '77777777777') or (cpf = '88888888888') or (cpf = '99999999999')) then
		begin 
			aux :=0 ;
		end
			else
				validacpf := aux;																	
	end;
	
	function validacpf2 (Acpf : string): integer;
	var
		erro, resp, i, soma, aux : integer; 
	begin
	
		soma:=0;
		for i := 1 to 10 do
		begin
			
			Val(cpf[i], resp, erro);
				soma := (resp*(12-i)) + soma;
						
		end;
			 
		aux := (soma * 10) mod 11;
		
		if((aux = 10) or (cpf = '11111111111') or (cpf = '22222222222') or (cpf = '33333333333') or (cpf = '22222222222') or (cpf = '55555555555') or (cpf = '66666666666') or (cpf = '77777777777') or (cpf = '88888888888') or (cpf = '99999999999')) then
		begin 
			aux := 0;
		end
			else
				validacpf2 := aux;
	end; 
	
Begin

	repeat
	
		clrscr;
		writeln('---------------------------');
		write('Insira um CPF: ');	
		read(cpf);
		writeln('---------------------------');
		readkey;
		
	until(length(cpf) = 11);
	
	num1 := validacpf(cpf);
	num2 := validacpf2(cpf);
	
	Val(cpf[10], N1, aju);
	Val(cpf[11], N2, aju2);
	
	if((N1 = num1) and (N2 = num2)) then
	begin
		clrscr;
		writeln('-----------------------');
		writeln('      CPF VALIDO      ');
		writeln('      ', cpf);
		writeln('-----------------------');
		readkey;
	end
		else
		begin
			clrscr;
			writeln('----------------------');
			writeln('     CPF INVÁLIDO    ');
			writeln('     ', cpf);
			writeln('----------------------');
			readkey;	
		end; 
End.