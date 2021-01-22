Program Arquivos_1Dat;

type
  rCliente = record
    Nome: String;
    Cidade: String;
    UF: String;
  end;
  
var
  Cli: rCliente;
  Cli2: rCliente;
	nOpcao: Integer;
	Arquivo: File of rCliente;
	
	procedure MontarMenu;
	begin
	  writeln('1 - Gravar');
	  writeln('2 - Ler');
	  writeln('3 - Contar');
	  writeln('4 - Posição');
	  writeln('5 - Posicionar');
		write('Digite sua opção: ');
		readln(nOpcao);	  
	end;
	
	procedure Gravar;
	begin
	  write('Nome 1: ');
	  readln(Cli.Nome);
	  write('Cidade 1: ');
	  readln(Cli.Cidade);
	  write('UF 1: ');
	  readln(Cli.UF);
	  
		writeln('');
	  write('Nome 2: ');
	  readln(Cli2.Nome);
	  write('Cidade 2: ');
	  readln(Cli2.Cidade);
	  write('UF 2: ');
	  readln(Cli2.UF);
		
		assign(Arquivo, 'C:\Temp\Clientes.dat');
	  rewrite(Arquivo);
	  write(Arquivo, Cli);
	  write(Arquivo, Cli2);
	  close(Arquivo);
		
		writeln('Arquivo salvo com sucesso!');
		readkey;
	end;
	
	procedure Ler;
	begin
	  assign(Arquivo, 'C:\Temp\Clientes.dat');
	  reset(Arquivo);
	  read(Arquivo, Cli);
	  read(Arquivo, Cli2);
	  close(Arquivo);
	  
	  writeln('Nome 1: ', Cli.Nome);
	  writeln('Cidade 1: ', Cli.Cidade);
	  writeln('UF 1: ', Cli.UF);
	  writeln('');
	  writeln('Nome 2: ', Cli2.Nome);
	  writeln('Cidade 2: ', Cli2.Cidade);
	  writeln('UF 2: ', Cli2.UF);
	  readkey;
	end;
	
	procedure Contar;
	var
	  nTotal: Integer;
	begin
	  assign(Arquivo, 'C:\Temp\Clientes.dat');
	  reset(Arquivo);
	  nTotal := FileSize(Arquivo);
	  writeln('O total de registros do arquivo é ',
		  nTotal);
		close(Arquivo);
		readkey;
	end;
	
	procedure Posicao;
	var
	  nPosicao: Integer;
	begin
	  assign(Arquivo, 'C:\Temp\Clientes.dat');
	  reset(Arquivo);
	  nPosicao := FilePos(Arquivo);
	  writeln('A posição atual é ', nPosicao);
		close(Arquivo);
		readkey;
	end;
	
	procedure Posicionar;
	var
	  nPosicao: Integer;
	  CliLido: rCliente;
	begin
	  write('Qual posição? ');
	  readln(nPosicao);
	  
	  assign(Arquivo, 'C:\Temp\Clientes.dat');
	  reset(Arquivo);
	  seek(Arquivo, nPosicao);
	  read(Arquivo, CliLido);
		writeln('O nome é: ', CliLido.Nome);
		close(Arquivo);
		readkey;
	end;
						
begin
  MontarMenu;
  case nOpcao of 
    1: Gravar;
		2: Ler;
		3: Contar;
		4: Posicao;
		5: Posicionar; 
	end;
end.