program Lista_Slide;

type
  rItemDaLista = record
    Descricao: String;
    Quantidade: Real;
  end;
  
  rLista = record
    Itens: array[0..4] of rItemDaLista;
    UltimaPosicao: Integer;
  end;
  
var
  ListaDeCompras: rLista;
  nOpcao: Integer;
  lSair: Boolean;
  
  procedure MontarMenu;
  begin
    clrscr;
		writeln('1 - Adicionar');
    writeln('2 - Remover');
    writeln('3 - Mostrar Lista');
    writeln('0 - Sair');
    write('Escolha uma opção: ');
		readln(nOpcao);
  end;
	
	procedure LimparLista;
  begin
    ListaDeCompras.UltimaPosicao := -1;
  end;
  
  procedure Adicionar;
  var
    nNovaPosicao: Integer;
	begin
    clrscr;
		if (ListaDeCompras.UltimaPosicao = 4) then
      writeln('Erro: Não é possível adicionar mais itens')
    else
    begin
      Inc(ListaDeCompras.UltimaPosicao);
      nNovaPosicao := ListaDeCompras.UltimaPosicao;
      
			write('Descrição: ');
      readln(ListaDeCompras.Itens[nNovaPosicao].Descricao);			
			write('Quantidade: ');
      readln(ListaDeCompras.Itens[nNovaPosicao].Quantidade);
      writeln('Item adicionado!');
    end;
    readkey;
  end;
  
  procedure Remover;
  var
    nPosRemover, i: Integer;
	begin
    clrscr;
		if ListaDeCompras.UltimaPosicao = -1 then
      writeln('Erro: A lista está vazia!')
    else
    begin
      write('Qual posição deseja remover?: ');
      readln(nPosRemover);
      
      if nPosRemover > ListaDeCompras.UltimaPosicao then
        writeln('Erro: A posição ', nPosRemover, ' não existe!')
      else
      begin
        if nPosRemover <> ListaDeCompras.UltimaPosicao then
        begin
          for i := nPosRemover to ListaDeCompras.UltimaPosicao -1 do
            ListaDeCompras.Itens[i] := ListaDeCompras.Itens[i + 1];
        end;
        
        ListaDeCompras.UltimaPosicao :=
          ListaDeCompras.UltimaPosicao - 1;
        writeln('Item removido com sucesso!');
      end;
    end;
    readkey;
  end;
  
  procedure MostrarLista;
  var
    i: Integer;
	begin
    clrscr;
    for i := 0 to ListaDeCompras.UltimaPosicao do
    begin
      writeln(i, ' - Item: ', ListaDeCompras.Itens[i].Descricao);
    end;
    readkey;
  end;

begin
  LimparLista;
  
  lSair := False;
  while not lSair do
  begin
    MontarMenu;
    case nOpcao of
      1: Adicionar;
      2: Remover;
      3: MostrarLista;
    else
      lSair := True;
    end;
  end;  
end.