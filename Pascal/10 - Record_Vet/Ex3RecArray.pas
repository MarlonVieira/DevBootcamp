Program Ex3RecArray;

type
	rSerie = record
		nome : string;
		plat : string;
		temp : integer;		 	
	end;
	
var
	serie : array [1..3] of rSerie;
	repetir : string;
	
	procedure RecebeDados;
	var
		i : integer;
	begin
		for i:=1 to 3 do
		begin
			clrscr;
			writeln('         Insira os dados da série ', i, '        ');
			writeln('---------------------------------------------');
			write('Insira o nome da série ', i,': ');
			read(serie[i].nome);
			write('Insira a plataforma da série ', i,': ');
			read(serie[i].plat);
			write('Insira quantidade de temporadas da série ', i,': ');
			read(serie[i].temp);
			writeln('---------------------------------------------');
			readkey;
		end;
	end;
	
	procedure ImprimeSerie;
	var
		i : integer;
	begin
		clrscr;
		writeln('       A série com mais temporadas é       ');
		writeln('-------------------------------------------');
		if(((serie[1].temp) > (serie[2].temp)) and ((serie[1].temp) > (serie[3].temp))) then
		begin
			writeln('Série: ', serie[1].nome);
			writeln('Plataforma: ', serie[1].plat);
			writeln('Temporadas: ', serie[1].temp);
		end
			else if(((serie[2].temp) > (serie[1].temp)) and ((serie[2].temp) > (serie[3].temp))) then
			begin
				writeln('Série: ', serie[2].nome);
				writeln('Plataforma: ', serie[2].plat);
				writeln('Temporadas: ', serie[2].temp);
			end
				else if(((serie[3].temp) > (serie[1].temp)) and ((serie[3].temp) > (serie[2].temp))) then
				begin
					writeln('Série: ', serie[3].nome);
					writeln('Plataforma: ', serie[3].plat);
					writeln('Temporadas: ', serie[3].temp);
				end;
		writeln('-------------------------------------------');
		readkey;
	end;
	
Begin

	repeat
	
		RecebeDados;
		ImprimeSerie;
		
		write('Deseja repetir o programa (S/N)? ');
		read(repetir);
	until((repetir='NÃO') or (repetir='Não') or (repetir='NAO') or (repetir='Nao') or (repetir='não') or (repetir='nao') or (repetir='N') or (repetir='n'));  
	
End.