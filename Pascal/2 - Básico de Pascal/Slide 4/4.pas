Program quatro;

var
	idade : integer;
	salario : real;
	nome : string;
Begin
	
	write('Insira o nome: ');
	read(nome);
	
	write('Insira a idade: ');
	read(idade);
	
	write('Insira o sal�rio: ');
	read(salario);
	
	writeln('O nome � ', nome,' a idade � ',idade ,' e o sal�rio � ', salario:0:2);
End.