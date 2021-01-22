Program exPilhas1;

type
	rPneus = record
		Marca : string;
		KM : integer;
	end;
		
  rPilha = record
  	Pneus : array[0..3] of rPneus;
  	Topo: Integer;
  end;

var
  PilhaPneus: rPilha;
  lSair: Boolean;
  nOpcao: Integer;
  
  procedure LimparPilha;
  begin
    PilhaPneus.Topo := -1;    
  end;
	
  procedure MontarMenu;
  begin
    clrscr;
		writeln('1 - Empilhar');
    writeln('2 - Desempilhar');
    writeln('3 - Mostrar pilha');
    writeln('4 - Soma KM');
    writeln('0 - Sair');
    write('Escolha uma opção: ');
    readln(nOpcao);    
  end;
	
	procedure Empilhar;
	var
    nNovoTopo : Integer;
	begin
    clrscr;
		if PilhaPneus.Topo = 3 then
		  writeln('Erro: A pilha já está cheia!')
		else
		begin
			Inc(PilhaPneus.Topo);
			nNovoTopo := PilhaPneus.Topo;
	
			write('Marca: ');
			readln(PilhaPneus.Pneus[nNovoTopo].Marca);
			write('KMs rodados: ');
			readln(PilhaPneus.Pneus[nNovoTopo].KM);
			writeln('Pneus empilhados com sucesso!');
		end;
		readkey;
  end;
	
	procedure Desempilhar;
  begin
    clrscr;
    if PilhaPneus.Topo = -1 then
      writeln('ERRO: A pilha está vazia!')
    else
    begin
			PilhaPneus.Topo := PilhaPneus.Topo - 1;
			writeln('Pneus desempilhado');			
    end;
    readkey;
  end;
	
	procedure ExibirPilha;
	var
		i : integer;
	begin
		clrscr;
		for i := PilhaPneus.Topo downto 0 do
		begin
			writeln('-----------------------------------');
			writeln(i, ' - Marca: ', PilhaPneus.Pneus[i].Marca, ' - KMs: ', PilhaPneus.Pneus[i].KM);
		end;
		writeln('-----------------------------------');
	  readkey;
	end;
	
	procedure SomaKM;
	var
		i, soma : integer;
	begin
		clrscr;
		for i := PilhaPneus.Topo downto 0 do
		begin
			soma := soma + PilhaPneus.Pneus[i].KM;
		end;	
		writeln('-----------------------------------');
	  writeln('   A soma dos KMs rodados é: ', soma);
	  writeln('-----------------------------------');
	  readkey;
	end;		
  
begin

  LimparPilha;
  lSair := False;
  while not lSair do
  begin	
    MontarMenu;
    case nOpcao of
      1: Empilhar;
      2: Desempilhar;
      3: ExibirPilha;
      4: SomaKM;
    else
      lSair := True;
    end;
  end;
  
end.