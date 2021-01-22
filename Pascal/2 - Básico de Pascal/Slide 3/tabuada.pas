Program exboolean;

var
	i : integer;
	A : integer;
Begin
	
	writ('Insira um numero: ');
	read(A);
	
	for i := 0 to 10 do
	begin
		writeln(A, ' X ', i, ' = ', A*i:2);
	end;	
	
  
End.