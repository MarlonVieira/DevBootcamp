Program ex1;

	function Upcase_Letra(texto : string): string;
	var
		j : integer;
		resultado : string;
	begin
		resultado := '';
		for j:=1 to length(texto) do
		begin
			resultado := resultado + upcase(texto[j]);
		end;
		
		Upcase_Letra := resultado;	
	end;
	
var
	nome : string;
	i : integer;
Begin
	nome := 'Marlon';
	
	for i := 1 to length(nome) do
	begin
		writeln(nome[i]);
	end;
	
	write(upcase_letra(nome));
End.