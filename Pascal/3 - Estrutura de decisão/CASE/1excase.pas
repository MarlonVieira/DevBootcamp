Program excase;
var
	N1, N2, resp : integer;
	opcao : integer;
	
Begin

	write('Insira um n�mero: ');
	read(N1);
	
	write('Insira um segundo n�mero: ');
	read(N2);
	
	writeln('Opera��es');
	writeln('----------------');
	writeln('1-Adi��o');
	writeln('2-Subtra��o');
	writeln('3-Divis�o');
	writeln('4-Multiplica��o');
	writeln('----------------');
	write('Insira qual opera��o deseja fazer: ');
	read(opcao);
	
	case opcao of
		1 : begin
					writeln('Adi��o');
					resp := N1+N2;
		end;
		2 : begin
					writeln('Subtra��o');
					resp := N1-N2;
		end;
		3 : begin
					writeln('Divis�o');
					resp := N1 div N2;
		end;
		4 : begin
					writeln('Multiplica��o');
					resp := N1*N2;
		end;
		
		else 
			writeln('Op��o inv�lida');  
	end;
	
	write('A resposta �: ', resp);
  
End.