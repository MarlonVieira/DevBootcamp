Program ex2;

	function inverte_texto(texto : string): string;
	var
		j, k : integer;
		resultado : string;
	begin
		resultado := '';
		for j := length(texto) downto 1 do
		begin
				resultado := resultado + texto[j];
		end;
		
		inverte_texto := resultado;	
	end;
	
var
	nome : string;
	i : integer;
Begin
	nome := 'Marlon';
	
	write(inverte_texto(nome));
	
End.