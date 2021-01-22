program Arquivos_2Txt;

type
	rItens = record
		cod : integer;
		nome : string;
		qtd : integer;
		valorU : real;
	end;
	
var
  ArqNoWindows: Text;
  Merc : rItens;
  nOpcao : Integer;
  repetir : string;

	procedure ExibirMenu;
	begin
	  writeln('1 - Exportar itens');
	  writeln('2 - Ler itens');
		write('Escolha uma op��o: ');
	  readln(nOpcao);
	end;
	
	procedure Exportaritens;
	begin
	  assign(ArqNoWindows, 'C:\Temp\Mercadorias.txt');
		rewrite(ArqNoWindows);	
		
		write('Insira o c�digo: ');
		read(Merc.cod);
		writeln(ArqNoWindows, Merc.cod);
		
		write('Insira o nome: ');
		read(Merc.nome);
		writeln(ArqNoWindows, Merc.nome);
		
		write('Insira a quantidade: ');
		read(Merc.qtd);
		writeln(ArqNoWindows, Merc.qtd);
		
		write('Insira o valor unit�rio: ');
		read(Merc.valorU);
		writeln(ArqNoWindows, Merc.valorU);
		
		close(ArqNoWindows);
		
		readkey;  
	end;
	
	procedure Leritens;
	var
	  cLinhaLida: String;
	begin
	  assign(ArqNoWindows, 'C:\Temp\Mercadorias.txt');
	  reset(ArqNoWindows);
	  
	  while not EOF(ArqNoWindows) do
	  begin
	    readln(ArqNoWindows, cLinhaLida);	  
			writeln(cLinhaLida);	
	  end;
	    
	  close(ArqNoWindows);
	  
	  readkey;
	end;
	
begin
	repeat
	  clrscr;
	  ExibirMenu;
	  clrscr;
	  case nOpcao of 
	  	1 : Exportaritens;
		  2 : Leritens;
	  end;

		write('Deseja repetir o programa (S/N)? ');
		read(repetir);
	until((repetir='N�O') or (repetir='N�o') or (repetir='NAO') or (repetir='Nao') or (repetir='n�o') or (repetir='nao') or (repetir='N') or (repetir='n'));  

end.