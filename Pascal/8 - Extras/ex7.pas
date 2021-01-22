Program NumToString;

var
	res, erro : integer;
	cpf : string;	
Begin
	
	str(1500, cpf);	
	writeln(cpf);
	 
	{
	writeln('Insira um cpf: ');
	read(cpf);	
	
	Val('1', res, erro);
	if res = 1 then
  	write(res)
  else
  	write('ERRO: ', erro);
	}
End.