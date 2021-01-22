Program Ex4Record;

type
	rAluno = record
	  N1 : real;
	  N2 : real;
	  N3 : real;
		aluno : string;	
	end;
	
var
	Notas : rAluno;
	Solicita : char; 
	
	procedure ObterDados;
	begin
		clrscr;
		write('Insira o nome do aluno: ');
		read(Notas.aluno);		
		write('Insira a 1º nota: ');
		read(Notas.N1);		
		write('Insira a 2º nota: ');
		read(Notas.N2);			
		write('Insira a 3º nota: ');
		read(Notas.N3);	
				
		writeln('Notas obtidas com sucesso!');
		writeln();
	end;
	
	procedure ImprimirMedia;
	var
		M : real;
	begin
		clrscr;
		M := ((Notas.N1 + Notas.N2 + Notas.N3)/3);
		writeln('      Imprimir Média     ');
		writeln('-------------------------');
		writeln('A média é: ', M:0:2);
		writeln('-------------------------');
		readkey;
	end;
	
	procedure ImprimirNotas;
	begin
		clrscr;
		writeln('     Imprimir Notas     ');
		writeln('-------------------------');
		writeln('1º nota: ', Notas.N1:0:2);	
		writeln('2º nota: ', Notas.N2:0:2);
		writeln('3º nota: ', Notas.N3:0:2);
		writeln('-------------------------');
		readkey;
	end;

Begin
		ObterDados;
		
		write('Para ver a média digite "M", e "N" para ver as notas: ');
		read(Solicita);
				
		if((Solicita = 'M') or (Solicita = 'm')) then
		begin
			ImprimirMedia;
		end
			else if((Solicita = 'N') or (Solicita = 'n')) then
			begin
				ImprimirNotas;
			end;
				  
End.