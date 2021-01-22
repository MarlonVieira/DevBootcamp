Program Covid;
var
	I : integer;
	
Begin
	
	repeat
		write('Insira a idade: ');
		read(I);
		
		if(I <= 0) then
			writeln('Idade inválida insira uma idade válida')
			
			else if(I > 0) and (I <= 20) then
				writeln('O risco para o Covid-19 é baixo')
				
				else if (I >= 21) and (I <= 40) then
					writeln('O risco para o Covid-19 é médio') 
			
					else if (I >= 41) and (I <= 65) then
						writeln('O risco para o Covid-19 é médio/alto')
						
						else
							writeln('O risco para o Covid-19 é alto');
						
	until (I >= 0);	
				 
End.