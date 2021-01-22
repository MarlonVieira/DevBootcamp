Program Ex1RecMatriz;

type
	rAgenda = record
		quem : string;
		assunto : string;
	end;
	
var
	agenda : array [1..3, 1..2] of rAgenda;
	
	procedure ObterInfo;
	var
		i, j : integer;
	begin
		for i := 1 to 3 do
		begin
			for j:= 1 to 2 do
			begin
				clrscr;
				writeln('                  No dia: 0', j, ' Mês: 0', i);
				writeln('---------------------------------------------------------');
				write('Insira com quem vai ser a reunião: ');
				read(agenda[i, j].quem);
				write('Insira sobre o que vai ser a reunião: ');
				read(agenda[i, j].assunto);
				writeln('---------------------------------------------------------');
				readkey;
			end;
		end;	
	end;
	
Begin

	ObterInfo;
	clrscr;
	writeln('                    A reunião do 02/01                   ');
	writeln('---------------------------------------------------------');
	writeln('Vai ser com: ', agenda[1, 2].quem);
	writeln('Sobre: ', agenda[1, 2].assunto);
	writeln('---------------------------------------------------------');
	readkey;  
End.