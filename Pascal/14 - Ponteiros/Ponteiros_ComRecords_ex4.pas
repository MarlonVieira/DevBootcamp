Program Ponteiros_ComRecords_ex4;

type
  rEdificio = record
    nome : string;
    ende : string;
    andares : integer;
  end;
  
var
  Ed : ^rEdificio;
  nOpcao : Integer;
  lSair : Boolean;
  
  procedure MostrarMenu;
  begin
    clrscr;  
		writeln('1 - Cadastrar');
    writeln('2 - Relat�rio');
    write('Escolha uma op��o: ');
    readln(nOpcao);
  end;
  
	procedure Cadastrar;
	begin
		clrscr;
		write('Insira o nome do edif�cio: ');
		read(Ed^.nome);
		write('Insira a rua do edif�cio: ');
		read(Ed^.ende);
		write('Insira quantos andares tem o edif�cio: ');
		read(Ed^.andares);
		readkey;
	end;
	
	procedure Relatorio;
	begin
		clrscr;
		writeln('-------------------------');
		writeln('  Relat�rio do edif�cio  ');
		writeln('-------------------------');
		writeln('Nome', Ed^.nome);
		writeln('Endere�o: ', Ed^.ende);
		writeln('Andares: ', Ed^.andares);
		readkey;
	end;

begin
  new(Ed);
  
	lSair := False;  
  while not lSair do
  begin
    MostrarMenu;
    case nOpcao of
      1: Cadastrar; 
      2: Relatorio;
    else
      lSair := True;
    end;
  end;
  
  dispose(Ed);
  Ed := nil;
end.