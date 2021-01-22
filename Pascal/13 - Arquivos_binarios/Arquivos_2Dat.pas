Program Arquivos_2Dat;

type
  rVertical = record
    Nome: String;
    QtdColab: Integer;
  end;
	
	rEmpresa = record
    RazaoSoc: String;
    CNPJ: String;
    Vertical_1: rVertical;
    Vertical_2: rVertical;
    Vertical_3: rVertical;
  end;
  
var
  Emp: rEmpresa;  
  nOpcao: Integer;
  lSair: Boolean;
  ArqEmpresa: File of rEmpresa;
  
  procedure MontarMenu;
  begin
    clrscr;
		writeln('1 - Cadastrar');
    writeln('2 - Relatório');
    writeln('3 - Exportar');
    writeln('4 - Importar');
    writeln('5 - Contar');
    writeln('6 - Renomear');
    writeln('7 - Excluir');
    writeln('8 - Verificar se existe');
    writeln('0 - Sair');
    write('Qual é sua opção?: ');
    readln(nOpcao);
  end;
  
  procedure Cadastrar;
  var
    i: Integer;
	begin
    clrscr;
    write('Razão social: ');
    readln(Emp.RazaoSoc);
    write('CNPJ: ');
    readln(Emp.CNPJ);
    writeln('');
    
    writeln('Informações da vertical nº 1');
    write('Nome da vertical: ');
    readln(Emp.Vertical_1.Nome);
    write('Qtd. Colaboradores: ');
    readln(Emp.Vertical_1.QtdColab);
    writeln('');
    
    writeln('Informações da vertical nº 2');
    write('Nome da vertical: ');
    readln(Emp.Vertical_2.Nome);
    write('Qtd. Colaboradores: ');
    readln(Emp.Vertical_2.QtdColab);
    writeln('');
    
    writeln('Informações da vertical nº 3');
    write('Nome da vertical: ');
    readln(Emp.Vertical_3.Nome);
    write('Qtd. Colaboradores: ');
    readln(Emp.Vertical_3.QtdColab);
    writeln('');
      
    writeln('Cadastrado com sucesso!');
    readkey;
  end;
  
  procedure Relatorio;
  var
    i: Integer;
	begin
    clrscr;
    writeln('Relatório da empresa');
    writeln('Razão social: ', Emp.RazaoSoc);
    writeln('CNPJ: ', Emp.CNPJ);
    writeln('');
		
		writeln('Nome vertical: ', Emp.Vertical_1.Nome);
	  writeln('Qtd. Colab.: ', Emp.Vertical_1.QtdColab);
	  writeln('');
	  writeln('Nome vertical: ', Emp.Vertical_2.Nome);
	  writeln('Qtd. Colab.: ', Emp.Vertical_2.QtdColab);
	  writeln('');
	  writeln('Nome vertical: ', Emp.Vertical_3.Nome);
	  writeln('Qtd. Colab.: ', Emp.Vertical_3.QtdColab);
	  writeln('');
		readkey;
  end;
  
  procedure Exportar;
  begin
    clrscr;
    assign(ArqEmpresa, 'C:\Temp\Empresa.dat');
    rewrite(ArqEmpresa);
    write(ArqEmpresa, Emp);
    close(ArqEmpresa);
    writeln('Arquivo salvo com sucesso!');
    readkey;
  end;
  
  procedure Importar;
	begin
	  clrscr;
    assign(ArqEmpresa, 'C:\Temp\Empresa.dat');
    reset(ArqEmpresa);
    read(ArqEmpresa, Emp);
    close(ArqEmpresa);
    writeln('Arquivo importado com sucesso!');
    readkey;
  end;
  
  procedure Contar;
  begin
    clrscr;
		assign(ArqEmpresa, 'C:\Temp\Empresa.dat');
    reset(ArqEmpresa);
    writeln('O arquivo possui ', FileSize(ArqEmpresa),
		  ' registros');
		close(ArqEmpresa);
		readkey;
  end;
  
  procedure Renomear;
  var
    cNovoNome: String;
	begin
    clrscr;
		write('Informe o novo nome: ');
		readln(cNovoNome);		
		assign(ArqEmpresa, 'C:\Temp\Empresa.dat');
		rename(ArqEmpresa, 'C:\Temp\' + cNovoNome + '.dat');
		close(ArqEmpresa);
		writeln('Arquivo foi renomeado com sucesso!');
		readkey;
  end;
  
  procedure Excluir;
  begin
    clrscr;
    assign(ArqEmpresa, 'C:\Temp\Empresa.dat');
    erase(ArqEmpresa);
    close(ArqEmpresa);
    writeln('O arquivo foi excluído com sucesso!');
    readkey;
  end;
  
  procedure VerificarSeExiste;
  begin
    clrscr;
    assign(ArqEmpresa, 'C:\Temp\Empresa.dat');
    reset(ArqEmpresa);
    
    if IOResult = 2 then
      writeln('O arquivo não existe')
    else
      writeln('O arquivo foi encontrado');
    close(ArqEmpresa);
    readkey;    
  end;
  
begin

  lSair := False;
  while not lSair do
  begin
    MontarMenu;
    case nOpcao of
      1: Cadastrar;
      2: Relatorio;
      3: Exportar;
      4: Importar;
      5: Contar;
      6: Renomear;
      7: Excluir;
      8: VerificarSeExiste;
    else
      lSair := True;
    end;
  end;
  
end.