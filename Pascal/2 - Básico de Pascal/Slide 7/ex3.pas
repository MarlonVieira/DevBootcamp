Program ex3;
var
	seg, min, hora, cont, seg2, cont2 : integer;
Begin

	write('Insira o tempo em segundos: ');
	read(seg);
	
	hora := seg div 3600;
	
	cont := seg mod 3600;
	
	min := cont div 60;
	
	seg := cont mod 60;
	
	write('O horário é: ', hora, ':', min, ':', seg);
  
End.