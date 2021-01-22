Program Ex6Record;

type
	rTime = record
		NomeTime : string;
	  Jog1 : string;
	  Jog2 : string;
	  Jog3 : string;
		Jog4 : string;
		Jog5 : string;	
	end;

type
	rPartida = record
		NomeGinasio : string;
		Time1 : rTime;
		Time2 : rTime;
	end;

var
	part : rPartida;
	ganhou : integer;
	
	procedure ObterDadosPartida;
	begin
		clrscr;
		writeln('      Insira os dados da partida      ');
		writeln('--------------------------------------');
		write('Nome do ginásio: ');
		read(part.NomeGinasio);
		writeln('--------------------------------------');
		readkey;
	end;
	
	procedure ObterDadosTime1;
	begin
		clrscr;
		writeln('               Dados time 1	  				  ');
		writeln('---------------------------------------------');	
		write('Nome do time 1: ');
		read(part.Time1.NomeTime);
		write('Nome do 1º jogador: ');
		read(part.Time1.Jog1);
		write('Nome do 2º jogador: ');
		read(part.Time1.Jog2);
		write('Nome do 3º jogador: ');
		read(part.Time1.Jog3);
		write('Nome do 4º jogador: ');
		read(part.Time1.Jog4);
		write('Nome do 5º jogador: ');
		read(part.Time1.Jog5);
		writeln('---------------------------------------------');	
		readkey; 
	end;
	
		procedure ObterDadosTime2;
	begin
		clrscr;
		writeln('              Dados time 2 					    ');
		writeln('---------------------------------------------');	
		write('Nome do time 2: ');
		read(part.Time2.NomeTime);
		write('Nome do 1º jogador: ');
		read(part.Time2.Jog1);
		write('Nome do 2º jogador: ');
		read(part.Time2.Jog2);
		write('Nome do 3º jogador: ');
		read(part.Time2.Jog3);
		write('Nome do 4º jogador: ');
		read(part.Time2.Jog4);
		write('Nome do 5º jogador: ');
		read(part.Time2.Jog5);
		writeln('---------------------------------------------');	
		readkey; 
	end;
	
	procedure Ganhador;
	begin
		repeat
			clrscr;
			writeln('                     Qual time ganhou:                     ');
			writeln('-----------------------------------------------------------');
			write('Digite "1" para o time "', part.Time1.NomeTime, '" e "2" para o time "', part.Time2.NomeTime, '": ');
			read(ganhou);
			writeln('-----------------------------------------------------------');
			if(ganhou = 1) then
			begin
				writeln('O ganhador da partida é: ', part.Time1.NomeTime);
				writeln('Jogadores do time: ');
				writeln('1 - ', part.Time1.Jog1);
				writeln('2 - ', part.Time1.Jog2);
				writeln('3 - ', part.Time1.Jog3);
				writeln('4 - ', part.Time1.Jog4);
				writeln('5 - ', part.Time1.Jog5);
			end
				else if(ganhou = 2) then
				begin
					writeln('O ganhador da partida é: ', part.Time2.NomeTime);
					writeln('Jogadores do time: ');
					writeln('1 - ', part.Time2.Jog1);
					writeln('2 - ', part.Time2.Jog2);
					writeln('3 - ', part.Time2.Jog3);
					writeln('4 - ', part.Time2.Jog4);
					writeln('5 - ', part.Time2.Jog5);
				end
					else
						writeln('Opção inválida');
			writeln('-----------------------------------------------------------');
			readkey;
		until((ganhou=1) or (ganhou=2))	
	end;
		
Begin

	ObterDadosPartida;
	ObterDadosTime1;
	ObterDadosTime2;
	Ganhador;
	  
End.