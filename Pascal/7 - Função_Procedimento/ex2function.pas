Program ex2function;

	function Calculadora(N1, N2, opcao : integer) : real;
	begin
		case opcao of
			1 : begin
						Calculadora := N1+N2;
			end;
			2 : begin
						Calculadora := N1-N2;    
			end;
			3 : begin
						Calculadora := N1 / N2;
			end;
			4 : begin
						Calculadora := N1*N2;
			end;
			
			else 
				writeln('Opção inválida');  
		end;			
	end;
                   
var
	c, d, opcao : integer;
	op : string;
Begin

	op:='SIM';
	while((upcase(op)='SIM') or (upcase(op)='S')) do 
	begin
	
		c:=0;
		d:=0;
		opcao:=0;
		
		writeln();		
		write('Insira um número: ');
			read(c);
			
		write('Insira um número: ');
			read(d);
			
		writeln('Operações');
		writeln('----------------');
		writeln('1-Adição');
		writeln('2-Subtração');
		writeln('3-Divisão');
		writeln('4-Multiplicação');
		writeln('----------------');
		write('Insira qual operação deseja fazer: ');
		read(opcao);
					
		write('Resutado: ', Calculadora(c, d, opcao):0:2);
		
		writeln();
		writeln();
		write('Deseja repetir o programa (Sim/Não): ');
		read(op);
	end;
	  
End.