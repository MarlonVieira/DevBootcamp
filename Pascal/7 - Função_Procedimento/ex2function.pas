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
				writeln('Op��o inv�lida');  
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
		write('Insira um n�mero: ');
			read(c);
			
		write('Insira um n�mero: ');
			read(d);
			
		writeln('Opera��es');
		writeln('----------------');
		writeln('1-Adi��o');
		writeln('2-Subtra��o');
		writeln('3-Divis�o');
		writeln('4-Multiplica��o');
		writeln('----------------');
		write('Insira qual opera��o deseja fazer: ');
		read(opcao);
					
		write('Resutado: ', Calculadora(c, d, opcao):0:2);
		
		writeln();
		writeln();
		write('Deseja repetir o programa (Sim/N�o): ');
		read(op);
	end;
	  
End.