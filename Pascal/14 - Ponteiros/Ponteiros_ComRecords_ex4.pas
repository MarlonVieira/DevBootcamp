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
    writeln('2 - Relatório');
    write('Escolha uma opção: ');
    readln(nOpcao);
  end;
  
	procedure Cadastrar;
	begin
		clrscr;
		write('Insira o nome do edifício: ');
		read(Ed^.nome);
		write('Insira a rua do edifício: ');
		read(Ed^.ende);
		write('Insira quantos andares tem o edifício: ');
		read(Ed^.andares);
		readkey;
	end;
	
	procedure Relatorio;
	begin
		clrscr;
		writeln('-------------------------');
		writeln('  Relatório do edifício  ');
		writeln('-------------------------');
		writeln('Nome', Ed^.nome);
		writeln('Endereço: ', Ed^.ende);
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