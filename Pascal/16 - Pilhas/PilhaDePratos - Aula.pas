program PilhaDePratos;

type
  rPrato = record
    Material: String;
    Cor: String;
  end;
  
  rPilha = record
    Itens: array[0..4] of rPrato;
    Topo: Integer;
  end;
  
var
  PilhaDePratos: rPilha;
  lSair: Boolean;
  nOpcao: Integer;
  
  procedure MontarMenu;
  begin
    clrscr;
		writeln('1 - Empilhar');
    writeln('2 - Desempilhar');
    writeln('3 - Mostrar pilha');
    writeln('4 - Limpar pilha');
    writeln('0 - Sair');
    write('Escolha uma opção: ');
    readln(nOpcao);    
  end;
  
  procedure LimparPilha;
  begin
    //Apenas marca o topo com -1, indicando que
    //Não tem nenhuma posição válida.
    PilhaDePratos.Topo := -1;    
  end;
  
  procedure EmpilharPrato;
  var
    nNovoTopo: Integer;
	begin
    clrscr;
		//Verifica se não está cheia. 
		//Se o topo for igual a última posição
		//do vetor, quer dizer que está cheia.
		if PilhaDePratos.Topo = 4 then
		  writeln('Erro: A pilha já está cheia!')
		else
		begin
		  //Se não está cheia então adiciona o prato.
		  
		  //Aumenta o topo da pilha em 1
			Inc(PilhaDePratos.Topo);
			nNovoTopo := PilhaDePratos.Topo;
			
			//Armazena os dados do novo prato no topo da pilha
			write('Material: ');
			readln(PilhaDePratos.Itens[nNovoTopo].Material);
			write('Cor: ');
			readln(PilhaDePratos.Itens[nNovoTopo].Cor);
			writeln('Prato empilhado com sucesso!');
		end;
		readkey;
  end;
  
  procedure Desempilhar;
  begin
    clrscr;
    //Verifica se a pilha não está vazia.
    //Se estiver da mensagem de erro.
    if PilhaDePratos.Topo = -1 then
      writeln('Erro: A pilha está vazia')
    else
    begin
      //Se não está vazia, apenas diminui o 
			//topo da pilha, fazendo com que aquele
			//prato não seja mais considerado
			PilhaDePratos.Topo :=
			  PilhaDePratos.Topo - 1;
			writeln('Prato desempilhado');			
    end;
    readkey;
  end;
  
  procedure ExibirPilha;
  var
    i: Integer;
	begin
    clrscr;
    writeln('Pilha de pratos:');
    
    for i := PilhaDePratos.Topo downto 0 do
    begin
      writeln(i,' - Material: ', 
			  PilhaDePratos.Itens[i].Material,
				' - Cor: ',
				PilhaDePratos.Itens[i].Cor);
    end;
    readkey;
  end;
  
begin
  LimparPilha;
  lSair := False;
  while not lSair do
  begin
    MontarMenu;
    case nOpcao of
      1: EmpilharPrato;
      2: Desempilhar;
      3: ExibirPilha;
      4: LimparPilha;
    else
      lSair := True;
    end;
  end;
end.