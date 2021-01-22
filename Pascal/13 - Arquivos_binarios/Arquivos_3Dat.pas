Program Arquivos_3Dat;

type
	rFuncionario = record
		cod : integer;
		nome : string;
		unidade : string;
		salario : real;
		end;
		
var
	Func : array[0..4] of rFuncionario;
	nOpcao : integer;
	lSair : boolean;
	ArquivoFunc : file of rFuncionario;
	
	
	procedure MontarMenu;
	begin
		writeln('1 - Importar');
		writeln('2 - Relatório'); 
		writeln('3 - Alterar nome'); 
		writeln('4 - Exportar');
		writeln('0 - Sair');
		write('Escolha uma opção: ');
		read(nOpcao);
	end;
	
	procedure Importar;
	var
		i : integer; 
	begin
		clrscr;
		assign(ArquivoFunc, 'C:\temp\Funcionarios.dat');
    reset(ArquivoFunc);
    
		for i := 0 to 4 do
		begin
			clrscr;
			read(ArquivoFunc, Func[i]);
		end;
		
		close(ArquivoFunc);
    writeln('Arquivo importado com sucesso!');
		readkey;
	end;
	
	procedure Relatorio;
	var
		i : integer;
	begin
		clrscr;
		for i := 0 to 4 do
		begin
			writeln('--------------------');
			writeln('Funcionario ', i);
			writeln('--------------------');
			writeln('Codigo: ', Func[i].cod);
			writeln('Nome: ', Func[i].nome);
			writeln('Unidade: ', Func[i].unidade);
			writeln('Salário: ', Func[i].salario:0:2); 
		end;
		readkey;
	end;
	
	procedure AlterarNome;
	var 
		PosNome : integer;
	begin
		write('Insira qual a posição do nome desejado par mudança(0-4): ');
		read(PosNome);
		
		write('Insira qual o novo nome: ');
		read(Func[PosNome].nome);
	end;
	
	procedure Exportar;
	var 
		i : integer; 
	begin 	
		assign(ArquivoFunc, 'C:\temp\Funcionarios.dat');
		rewrite(ArquivoFunc);
		for i:=0 to 4 do
		begin 
			write(ArquivoFunc, Func[i]);
		end;
		close(ArquivoFunc);	
		writeln('Arquivo exportado com sucesso!!');
		readkey;
	end;
	
Begin

  lSair := False;
  while not lSair do
  begin
  	clrscr;
  	MontarMenu;
		case nOpcao of
			1: Importar;
	    2: Relatorio;
	    3: AlterarNome;
	    4: Exportar;
    else
      lSair := True;
    end;
  end;	
  
End.