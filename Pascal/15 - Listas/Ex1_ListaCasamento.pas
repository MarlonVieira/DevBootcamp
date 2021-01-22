program Ex1_ListaCasamento;

type
  rConvidado = record
    nome : String;
    confirmou : String;
  end;
  
  rLista = record
    Conv : array[0..9] of rConvidado;
    UltimaPosicao: Integer;
  end;
  
var
  ListaDeConvidados : rLista;
  nOpcao : Integer;
  lSair : Boolean;
  
  procedure MontarMenu;
  begin
    clrscr;
		writeln('1 - Adicionar');
    writeln('2 - Remover');
    writeln('3 - Mostrar Todos'); 
    writeln('4 - Confirmar Presença: ');
    writeln('0 - Sair');
    write('Escolha uma opção: ');
		readln(nOpcao);
  end;
	
	procedure LimparLista;
  begin
    ListaDeConvidados.UltimaPosicao := -1;
  end;                  
  
  procedure Adicionar;
  var
    nNovaPosicao: Integer;
	begin
	
    clrscr;
		if (ListaDeConvidados.UltimaPosicao = 9) then
      writeln('ERRO: Não é possível adicionar mais itens')
    else
    begin
      Inc(ListaDeConvidados.UltimaPosicao);
      nNovaPosicao := ListaDeConvidados.UltimaPosicao;
      
			write('Nome: ');
      readln(ListaDeConvidados.Conv[nNovaPosicao].nome);			
			write('Confirmou(Sim/Não): ');
      readln(ListaDeConvidados.Conv[nNovaPosicao].confirmou);
      writeln('Convidado adicionado!');
    end;
    
    readkey;
  end;
  
  procedure Remover;
  var
    nPosRemover, i: Integer;
	begin
    clrscr;
    
		if ListaDeConvidados.UltimaPosicao = -1 then
      writeln('ERRO: A lista está vazia!')
    else
    begin
      write('Qual posição deseja remover?: ');
      readln(nPosRemover);
      
      if nPosRemover > ListaDeConvidados.UltimaPosicao then
        writeln('ERRO: A posição ', nPosRemover, ' não existe!')
      else
      begin
        if nPosRemover <> ListaDeConvidados.UltimaPosicao then
        begin
          for i := nPosRemover to ListaDeConvidados.UltimaPosicao -1 do
            ListaDeConvidados.Conv[i] := ListaDeConvidados.Conv[i + 1];
        end;
        
        ListaDeConvidados.UltimaPosicao := ListaDeConvidados.UltimaPosicao - 1;
        writeln('Convidado removido com sucesso!');
      end;
    end;
    readkey;
  end;
  
  procedure MostrarLista;
  var
    i: Integer;
	begin
    clrscr;
    for i := 0 to ListaDeConvidados.UltimaPosicao do
    begin
      writeln(i, ' - Convidado: ', ListaDeConvidados.Conv[i].Nome, ' - Confirmou: ', ListaDeConvidados.Conv[i].confirmou);
    end;
    readkey;
  end;
  
  procedure ConfirmarPresenca;
  var
  	cConfirmou : string;
  	i : integer;
  	lAchou : boolean;
  	
  begin
  	clrscr;
  	
  	lAchou := false; 
  	write('Quem confirmou presença?: ');
  	read(cConfirmou);
  	
  	for i := 0 to ListaDeConvidados.UltimaPosicao do
		begin 
  		if (upcase(cConfirmou) = upcase(ListaDeConvidados.Conv[i].Nome)) then
  		begin
  			ListaDeConvidados.Conv[i].confirmou := 'Sim';
  			lAchou := true;
				break;	
			end		
  	end;
  	
  	if (lAchou) then
  		writeln('Presença confirmada!')
  	else
  		writeln('ERRO: Convidado não está na lista!');
  		
  	readkey;
  end;

begin

  LimparLista;
  lSair := False;
  while not lSair do
  begin
    MontarMenu;
    case nOpcao of
      1 : Adicionar;
      2 : Remover;
      3 : MostrarLista;
      4 : ConfirmarPresenca;
    else
      lSair := True;
    end;
  end;  
  
end.