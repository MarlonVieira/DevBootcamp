Program Ex2RecMatriz;

type
	rLivros = record
		paginas : integer;
		nome : string;
	end;
	
var
	livro : array [1..2, 1..4] of rLivros;
	cont : array[1..2] of integer;
	repetir : string;
	
	procedure ObterInfo;
	var
		i, j : integer;
	begin	
		for i := 1 to 2 do
		begin
			for j:= 1 to 4 do
			begin
				clrscr;
				writeln('                  Livro ', i, ' Capítulo ', j);
				writeln('---------------------------------------------------------');
				write('Insira o nome do capítulo: ');
				read(livro[i, j].nome);
				write('Insira quantas páginas tem o capítulo: ');
				read(livro[i, j].paginas);
				writeln('---------------------------------------------------------');				 
				readkey;
			end;
		end;	
	end;
	
	procedure ContaPag;
	var
		i : integer;
	begin
		cont[1] := 0;
		cont[2] := 0;
		for i:= 1 to 4 do
		begin	
			cont[1] := (cont[1] + livro[1, i].paginas);
			cont[2] := (cont[2] + livro[2, i].paginas);
		end;
	end;
	
Begin

	repeat
	 
		ObterInfo;
		ContaPag;
		clrscr;
		writeln('                 Páginas totais dos livros                ');
		writeln('---------------------------------------------------------');
		writeln('Livro 1 tem: ', cont[1], ' páginas');
		writeln('Livro 2 tem: ', cont[2], ' páginas');
		writeln('---------------------------------------------------------');
		
		write('Deseja repetir o programa (S/N)? ');
		read(repetir);
	until((repetir='NÃO') or (repetir='Não') or (repetir='NAO') or (repetir='Nao') or (repetir='não') or (repetir='nao') or (repetir='N') or (repetir='n'));  

End.