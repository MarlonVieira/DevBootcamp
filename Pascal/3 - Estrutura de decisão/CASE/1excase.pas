Program excase;
var
	N1, N2, resp : integer;
	opcao : integer;
	
Begin

	write('Insira um número: ');
	read(N1);
	
	write('Insira um segundo número: ');
	read(N2);
	
	writeln('Operações');
	writeln('----------------');
	writeln('1-Adição');
	writeln('2-Subtração');
	writeln('3-Divisão');
	writeln('4-Multiplicação');
	writeln('----------------');
	write('Insira qual operação deseja fazer: ');
	read(opcao);
	
	case opcao of
		1 : begin
					writeln('Adição');
					resp := N1+N2;
		end;
		2 : begin
					writeln('Subtração');
					resp := N1-N2;
		end;
		3 : begin
					writeln('Divisão');
					resp := N1 div N2;
		end;
		4 : begin
					writeln('Multiplicação');
					resp := N1*N2;
		end;
		
		else 
			writeln('Opção inválida');  
	end;
	
	write('A resposta é: ', resp);
  
End.