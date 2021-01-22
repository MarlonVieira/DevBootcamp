program Arquivos_1Txt;

var
  ArqNoWindows: Text;
  nOpcao: Integer;

	procedure ExibirMenu;
	begin
	  writeln('1 - Criar arquivo');
	  writeln('2 - Ler letra por letra');
	  writeln('3 - Ler linha inteira');
	  writeln('4 - Renomear');
	  writeln('5 - Excluir');
		write('Escolha uma opção: ');
	  readln(nOpcao);
	end;
	
	procedure CriarArquivo;
	begin
	  assign(ArqNoWindows, 'C:\Temp\Arquivo.txt');
		rewrite(ArqNoWindows);	
		
		writeln(ArqNoWindows, 'Primeira linha de texto');
		
		close(ArqNoWindows);
		
		write('Arquivo gerado com sucesso!');
		readkey;  
	end;
	
	procedure LerLetraPorLetra;
	var
	  cCharLido: Char;
	begin
	  assign(ArqNoWindows, 'C:\Temp\Arquivo.txt');
	  reset(ArqNoWindows);
	  
	  while not EOLN(ArqNoWindows) do
	  begin
	    read(ArqNoWindows, cCharLido);
	    
	    writeln('O caracter lido foi: ', cCharLido);
	  end;
	  
	  close(ArqNoWindows);
	  writeln('O arquivo foi lido com sucesso!');
	  readkey;
	end;
	
	procedure LerLinhaInteira;
	var
	  cLinhaLida: String;
	begin
	  assign(ArqNoWindows, 'C:\Temp\Arquivo.txt');
	  reset(ArqNoWindows);
	  
	  while not EOF(ArqNoWindows) do
	  begin
	    readln(ArqNoWindows, cLinhaLida);	  
			writeln('A linha lida foi: ', cLinhaLida);	
	  end;
	    
	  close(ArqNoWindows);
	  
	  writeln('O arquivo foi lido com sucesso!');
	  readkey;
	end;
	
	procedure RenomearArquivo;
	var
	  cNovoNome: String;
	begin
	  write('Qual é o novo nome: ');
	  readln(cNovoNome);
	  
	  assign(ArqNoWindows, 'C:\Temp\Arquivo.txt');
	  rename(ArqNoWindows, 'C:\Temp\' + cNovoNome + '.txt');
	  close(ArqNoWindows);
	  
	  writeln('Arquivo renomeado com sucesso!');
	  readkey;	
	end;
	
	procedure ExcluirArquivo;
	begin
	  assign(ArqNoWindows, 'C:\Temp\Arquivo.txt');
	  erase(ArqNoWindows);
	  close(ArqNoWindows);
	  
	  writeln('Arquivo excluído com sucesso!');
	  readkey;
	end;
	
begin
  ExibirMenu;
  case nOpcao of 
    1: CriarArquivo;
    2: LerLetraPorLetra;
    3: LerLinhaInteira;
    4: RenomearArquivo;
    5: ExcluirArquivo;
  end;
end.