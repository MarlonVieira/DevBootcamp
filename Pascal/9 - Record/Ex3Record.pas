Program Ex3Record;

type
	rItem = record
	  codigo : integer;
	  descricao : string;
	  estoque : real;	
	end;
	
var
	item : rItem;
	sair : string; 
	
	procedure ObterDados;
	begin
		clrscr;		
		write('C�digo: ');
		read(item.codigo);		
		write('Descri��o: ');
		read(item.descricao);		
		write('Quantidade: ');
		read(item.estoque);
				
		writeln('Dados obtidos com sucesso!');
		writeln();
	end;
	
	procedure Imprimir;
	begin
		clrscr;
		writeln('      Imprimir dados     ');
		writeln('-------------------------');
		writeln('C�digo: ', item.codigo);
		writeln('Descri��o: ', item.descricao);
		writeln('Quantidade: ', item.estoque:0:2);
		writeln('-------------------------');
		readkey;
	end;

Begin
		ObterDados;
		
		write('Deseja imprimir os dados: (Sim/N�o)');
		read(sair);
				
		if((sair = 'Sim') or (sair = 'SIM') or (sair = 'S') or (sair = 's') or (sair = 'sim')) then
		begin
			Imprimir;
		end
			else if((sair = 'N�O') or (sair = 'N�o') or (sair = 'N') or (sair = 'NAO') or (sair = 'nao') or (sair = 'n')) then
			begin
				exit;
			end;
				  
End.