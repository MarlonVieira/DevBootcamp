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
	
	write('Insira o salário: ');
	read(salario);
	
	writeln('O nome é ', nome,' a idade é ',idade ,' e o salário é ', salario:0:2);
End.