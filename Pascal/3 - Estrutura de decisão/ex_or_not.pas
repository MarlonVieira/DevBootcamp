Program ex_or_not;
var
	GremioCampeaoCopa : boolean;
	Pepefezgol : boolean;
	Digitado : string;
	Digitado1 : string;
Begin
	clrscr;
	
	writeln('Digite(Sim/Não) se o Grêmio foi campeão: ');
	read(Digitado);
	
	writeln('Digite(Sim/Não) se o Pepe fez gol: ');
	read(Digitado1);
	
	if((upcase(Digitado) = 'SIM') or (upcase(Digitado) = 'S')) then
		GremioCampeaoCopa := true
		
		else
		GremioCampeaoCopa := false;
		
	if((upcase(Digitado1) = 'SIM') or (upcase(Digitado1) = 'S')) then
		Pepefezgol := true
		
		else
		Pepefezgol := false;	
	
	if GremioCampeaoCopa = true then	
		writeln('Grêmio é Campeão')
		
		else
			writeln('Grêmio perdeu ):');
			
	if (not GremioCampeaoCopa) then
		writeln('Marlon não vem na aula...');

	if GremioCampeaoCopa or Pepefezgol then
		writeln('Marlon toma um suco de pêra.'); 
  
End.