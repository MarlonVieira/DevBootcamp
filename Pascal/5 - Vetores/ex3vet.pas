Program Vetstr;
var
	alunos : array [1..5] of string = ('Marlon', 'Gabriel', 'Lucas', 'Cardoso', 'Muliro');
	i : integer;
Begin

	for i := 1 to 5 do
	begin
		writeln(i, ' - Posi��o est� o ', alunos[i]);	
	end;	
  
End.