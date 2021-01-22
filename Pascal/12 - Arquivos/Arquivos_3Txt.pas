program Arquivos_3Txt;

type
	rRegistro = record
		cod : integer;
		nome : string;
		trab : string;
	end;

var
	arquivo : text;
	nOpcao : integer;
	regi : rRegistro;
	repetir : string;
	
	
	procedure ExibirMenu;
	begin
		writeln('1 - Cadastrar pessoas');
		writeln('2 - Relatório de pessoas');
		writeln('3 - Exportar pessoas');
		writeln('4 - Importar pessoas');
		write('Escolha uma opção: ');
		read(nOpcao);	
	end;
	
	procedure Cadastro;
	begin
		write('Insira o código: ');
		read(regi.cod);
		
		write('Insira o nome: ');
		read(regi.nome);
		
		write('Insira onde trabalha: ');
		read(regi.trab);
		readkey;	
	end;
	
  procedure Relatorio;
	begin
		writeln('Código: ', regi.cod);
			
		writeln('Nome: ', regi.nome);

		writeln('Trabalha: ', regi.trab);
		readkey;
	end;

  procedure Exportar;
	begin
		assign(arquivo, 'C:\Temp\Relatorio.txt'); 
		rewrite(arquivo);
			
		writeln(arquivo, regi.cod);		
		writeln(arquivo, regi.nome);		
		writeln(arquivo, regi.trab);
		
		close(arquivo);
		writeln('Arquivo exportado com sucesso!!');
		readkey;	
	end;
	
	procedure Importar;
	begin
		assign(arquivo, 'C:\Temp\Relatorio.txt');
		reset(arquivo);
		
			readln(arquivo, regi.cod);		
			readln(arquivo, regi.nome);	
			readln(arquivo, regi.trab);
			
		close(arquivo);
		
		writeln('Arquivo importado com sucesso!!');
		readkey;	
	end;
		
Begin

  repeat
	  clrscr;
		ExibirMenu;
		clrscr;
		case nOpcao of 
			1 : Cadastro;
			2 : Relatorio;
	    3 : Exportar;
	    4 : Importar;
	  end;
	  
		write('Deseja repetir o programa (S/N)? ');
		read(repetir);
	until((repetir='NÃO') or (repetir='Não') or (repetir='NAO') or (repetir='Nao') or (repetir='não') or (repetir='nao') or (repetir='N') or (repetir='n'));  
  
End.