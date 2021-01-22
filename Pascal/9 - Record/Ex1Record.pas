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
		writeln('3 - Relat�rio de clientes');
		writeln('0 - Sair');
		write('Selecione uma op��o: ');
		read(nOpcao)
	end;
	
	procedure CadastrarCliente;
	begin
		clrscr;

		write('C�digo: ');
		read(cli.codigo);
		
		write('Nome: ');
		read(cli.nome);
		
		write('Lim. Cr�dito: ');
		read(cli.credito);
		
		write('Observa��es: ');
		read(cli.observ);
		
		writeln('Cliente cadastrado com sucesso!');
		readkey;
	end;
	
	procedure EditarCliente;
	begin
		clrscr;
		write('Novo nome: ');
		read(cli.nome);
		
		write('Novo limite de cr�dito: ');
		read(cli.credito);
		
		write('Nova observa��o: ');
		read(cli.observ);
		
		writeln('Cliente editado com sucesso!');
		readkey;
	end;
	
	procedure Relatorio;
	begin
		clrscr;
		writeln('  Relat�rio de clientes  ');
		writeln('-------------------------');
		writeln('C�digo: ', cli.codigo);
		writeln('Nome: ', cli.nome);
		writeln('Limite de Cr�dito: ', cli.credito:0:2);
		writeln('Observa��es: ', cli.observ);
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
				writeln('Op��o inv�lida!');
				readkey;
				Menu;
			end;
		end;
	end;
	  
End.