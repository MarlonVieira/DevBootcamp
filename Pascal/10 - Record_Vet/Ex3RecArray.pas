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
			writeln('         Insira os dados da s�rie ', i, '        ');
			writeln('---------------------------------------------');
			write('Insira o nome da s�rie ', i,': ');
			read(serie[i].nome);
			write('Insira a plataforma da s�rie ', i,': ');
			read(serie[i].plat);
			write('Insira quantidade de temporadas da s�rie ', i,': ');
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
		writeln('       A s�rie com mais temporadas �       ');
		writeln('-------------------------------------------');
		if(((serie[1].temp) > (serie[2].temp)) and ((serie[1].temp) > (serie[3].temp))) then
		begin
			writeln('S�rie: ', serie[1].nome);
			writeln('Plataforma: ', serie[1].plat);
			writeln('Temporadas: ', serie[1].temp);
		end
			else if(((serie[2].temp) > (serie[1].temp)) and ((serie[2].temp) > (serie[3].temp))) then
			begin
				writeln('S�rie: ', serie[2].nome);
				writeln('Plataforma: ', serie[2].plat);
				writeln('Temporadas: ', serie[2].temp);
			end
				else if(((serie[3].temp) > (serie[1].temp)) and ((serie[3].temp) > (serie[2].temp))) then
				begin
					writeln('S�rie: ', serie[3].nome);
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
	until((repetir='N�O') or (repetir='N�o') or (repetir='NAO') or (repetir='Nao') or (repetir='n�o') or (repetir='nao') or (repetir='N') or (repetir='n'));  
	
End.