Program Ex1RecArray;

type
	rDados = record
		ID : string;
		nome : string;
		senha : string;
		ADM : string;		 	
	end;
	
var
	usua : array [1..3] of rDados;
	repetir : char;
	
	procedure RecebeDados;
	var
		i : integer;
	begin
		for i:=1 to 3 do
		begin
			clrscr;
			writeln('       Insira os dados do usu�rio ', i, '        ');
			writeln('-----------------------------------------');
			write('Insira o ID do usu�rio ', i,': ');
			read(usua[i].ID);
			write('Insira o nome do usu�rio ', i,': ');
			read(usua[i].nome);
			write('Insira a senha do usu�rio ', i,': ');
			read(usua[i].senha);
			repeat
				write('O usu�rio ', i, ' � administrador (Sim/N�o): ');
				read(usua[i].ADM);
			until((usua[i].ADM = 'Sim') or (usua[i].ADM='S') or (usua[i].ADM = 'sim') or (usua[i].ADM='s') or (usua[i].ADM='N�O') or (usua[i].ADM='N�o') or (usua[i].ADM='NAO') or (usua[i].ADM='Nao') or (usua[i].ADM='n�o') or (usua[i].ADM='nao') or (usua[i].ADM='N') or (usua[i].ADM='n'));
			writeln('-----------------------------------------');
			readkey;
		end;
	end;
	
	procedure ImprimeUsu2;
	begin
		clrscr;
		writeln('            DADOS DO USU�RIO 2            ');
		writeln('------------------------------------------');
		writeln('ID: ', usua[2].ID);
		writeln('Nome: ', usua[2].nome);
		writeln('Senha do usu�rio: ', usua[2].senha);
		writeln('Administrador: ', usua[2].ADM);
		writeln('------------------------------------------');
		readkey;
	end;
	
Begin

	repeat
	
		RecebeDados;
		ImprimeUsu2;
		
		write('Deseja repetir o programa (S/N)? ');
		read(repetir);
	until((repetir='N�O') or (repetir='N�o') or (repetir='NAO') or (repetir='Nao') or (repetir='n�o') or (repetir='nao') or (repetir='N') or (repetir='n'));  
	
End.