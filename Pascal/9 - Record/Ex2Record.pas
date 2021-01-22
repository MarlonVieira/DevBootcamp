Program Ex2Record;

type
	rClient = record
	  nome : string;
	  idade : integer;
	  salario : real;
	end;
	
var
	cli : rClient;
	sair : string; 
	
	procedure ObterDados;
	begin
		clrscr;		
		write('Nome: ');
		read(cli.nome);		
		write('Idade: ');
		read(cli.idade);		
		write('Salário: ');
		read(cli.salario);		
		writeln('Dados obtidos com sucesso!');
		writeln();
	end;
	
	procedure Imprimir;
	begin
		clrscr;
		writeln('  Imprimir dados  ');
		writeln('-------------------------');
		writeln('Nome: ', cli.nome);
		writeln('Idade: ', cli.idade);
		writeln('Salário: ', cli.salario:0:2);
		writeln('-------------------------');
		readkey;
	end;

Begin
		ObterDados;
		
		write('Deseja imprimir os dados: (Sim/Não)');
		read(sair);
				
		if((sair='Sim') or (sair='SIM') or (sair='S') or (sair='s') or (sair='sim')) then
		begin
			Imprimir;
		end
			else if((sair='NÃO') or (sair='Não') or (sair='N') or (sair='NAO') or (sair='nao') or (sair='n')) then
			begin
				exit;
			end;
			
	  
End.