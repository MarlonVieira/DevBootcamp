Program ex_or_not;
var
	GremioCampeaoCopa : boolean;
	Pepefezgol : boolean;
	Digitado : string;
	Digitado1 : string;
Begin
	clrscr;
	
	writeln('Digite(Sim/N�o) se o Gr�mio foi campe�o: ');
	read(Digitado);
	
	writeln('Digite(Sim/N�o) se o Pepe fez gol: ');
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
		writeln('Gr�mio � Campe�o')
		
		else
			writeln('Gr�mio perdeu ):');
			
	if (not GremioCampeaoCopa) then
		writeln('Marlon n�o vem na aula...');

	if GremioCampeaoCopa or Pepefezgol then
		writeln('Marlon toma um suco de p�ra.'); 
  
End.