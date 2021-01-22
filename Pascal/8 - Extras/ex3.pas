Program ex3;

	function verifA(texto : string): integer;
	var
		j, cont : integer;
	begin
		for j := 1 to length(texto) do
		begin
			if((texto[j]='a') or  (texto[j]='A')) then
		  begin
				inc(cont);
			end;
		end;	
		verifA:=cont;
	end;

var                                      
	texto : string;
Begin
	write('Insira uma string: ');
	read(texto);
	
	write('Existem ', verifA(texto), ' letras (A/a)');
	
End.