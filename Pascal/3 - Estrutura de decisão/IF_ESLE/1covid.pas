Program Covid;
var
	I : integer;
	
Begin
	
	repeat
		write('Insira a idade: ');
		read(I);
		
		if(I <= 0) then
			writeln('Idade inv�lida insira uma idade v�lida')
			
			else if(I > 0) and (I <= 20) then
				writeln('O risco para o Covid-19 � baixo')
				
				else if (I >= 21) and (I <= 40) then
					writeln('O risco para o Covid-19 � m�dio') 
			
					else if (I >= 41) and (I <= 65) then
						writeln('O risco para o Covid-19 � m�dio/alto')
						
						else
							writeln('O risco para o Covid-19 � alto');
						
	until (I >= 0);	
				 
End.