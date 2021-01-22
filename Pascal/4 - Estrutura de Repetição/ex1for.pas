Program ex1for;
var
	i, j, cont : integer;
Begin

	write('Insira um número: ');
	read(j);
	
	for i := 1 to 10 do
	begin
		cont := i*j;
		writeln(j, 'X', i, '=', cont);	
	end;  
End.