Program Ex1Record;

type
	rClient = record
	  codigo : integer;
	  nome : string;
	  credito : real;
	  observ : string;	
	end;
	
var
	cli : rClient;
	nOpcao : integer;
	Sair : boolean; 
	
	procedure Menu;
	begin
		clrscr;
		writeln('1 - Cadastrar cliente');
		writeln('2 - Editar cliente');
		writeln('3 - Relatório de clientes');
		writeln('0 - Sair');
		write('Selecione uma opção: ');
		read(nOpcao)
	end;
	
	procedure CadastrarCliente;
	begin
		clrscr;

		write('Código: ');
		read(cli.codigo);
		
		write('Nome: ');
		read(cli.nome);
		
		write('Lim. Crédito: ');
		read(cli.credito);
		
		write('Observações: ');
		read(cli.observ);
		
		writeln('Cliente cadastrado com sucesso!');
		readkey;
	end;
	
	procedure EditarCliente;
	begin
		clrscr;
		write('Novo nome: ');
		read(cli.nome);
		
		write('Novo limite de crédito: ');
		read(cli.credito);
		
		write('Nova observação: ');
		read(cli.observ);
		
		writeln('Cliente editado com sucesso!');
		readkey;
	end;
	
	procedure Relatorio;
	begin
		clrscr;
		writeln('  Relatório de clientes  ');
		writeln('-------------------------');
		writeln('Código: ', cli.codigo);
		writeln('Nome: ', cli.nome);
		writeln('Limite de Crédito: ', cli.credito:0:2);
		writeln('Observações: ', cli.observ);
		writeln('-------------------------');
		readkey;
	end;

Begin

	Sair := false;
	
	while not Sair do
	begin
	
		Menu;
		
		case nOpcao of
			1 : CadastrarCliente;
			2 : EditarCliente;
			3 : Relatorio;
			0 : Sair := true;
			else
			begin
				writeln('Opção inválida!');
				readkey;
				Menu;
			end;
		end;
	end;
	  
End.