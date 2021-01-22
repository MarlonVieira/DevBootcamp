program Ponteiros_ComRecords_Slide;

type
  rCelular = record
    Marca: String;
    Modelo: String;
    VlrUnit: Real;
  end;
  
var
  Cel: ^rCelular;
  nOpcao: Integer;
  lSair: Boolean;
  
  procedure MontarMenu;
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
    write('Marca: ');
    readln(Cel^.Marca);
    write('Modelo: ');
    readln(Cel^.Modelo);
    write('Vlr. Unit: ');
    readln(Cel^.VlrUnit);
    writeln('Cadastrado com sucesso!');
    readkey;
  end;
  
  procedure Relatorio;
  begin
    clrscr;
    writeln('Relatório de celular');
    writeln('Marca: ', Cel^.Marca);
    writeln('Modelo: ', Cel^.Modelo);
    writeln('Vlr. Unit: ', Cel^.VlrUnit);
    readkey;
  end;

begin
  new(Cel);
  
	lSair := False;  
  while not lSair do
  begin
    MontarMenu;
    case nOpcao of
      1: Cadastrar; 
      2: Relatorio;
    else
      lSair := True;
    end;
  end;
  
  dispose(Cel);
  Cel := nil;
end.