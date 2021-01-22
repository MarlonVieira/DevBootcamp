Program SomaCPF;
{
	somar todos os numeros do cpf	
}
var
	i, j, soma, erro : integer;
	cpf : string;
		
Begin
	 
	writeln('Insira um cpf: ');
	read(cpf);
	
	soma:=0;
	
	for i:=1 to length(cpf) do
	begin
		Val(cpf[i], j, erro);
		soma := j + soma;	
	end;
  
  write('A soma é:', soma)
End.