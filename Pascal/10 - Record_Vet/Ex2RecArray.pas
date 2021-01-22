Program Ex2RecArray;

type
	rItem = record
		nome : string;
		qtd : integer;
		valorU : real;		 	
	end;
	
var
	item : array [1..5] of rItem;
	calc : array [1..5] of real;
	repetir : char;
	total : real;
	
	procedure RecebeDados;
	var
		i : integer;
	begin
		for i:=1 to 5 do
		begin
			clrscr;
			writeln('       Insira os dados do item ', i, '        ');
			writeln('-----------------------------------------');
			write('Insira o nome do item ', i,': ');
			read(item[i].nome);
			write('Insira a quantidade do item ', i,': ');
			read(item[i].qtd);
			write('Insira o valor unitário do item ', i,': ');
			read(item[i].valorU);
			writeln('-----------------------------------------');
			readkey;
		end;
	end;
	
	procedure ImprimeValorTotal;
	var
		i : integer;
	begin
		clrscr;
		writeln('         Valor total da compra            ');
		writeln('------------------------------------------');
		for i := 1 to 5 do
		begin
			total := total + (item[i].qtd * item[i].valorU);
		end;	
		//total := (calc[1] + calc[2] + calc[3] + calc[4] + calc[5]);
		writeln('              R$', total:0:2);
		writeln('------------------------------------------');
		readkey;
	end;
	
Begin

	repeat
	
		RecebeDados;
		ImprimeValorTotal;
		
		write('Deseja repetir o programa (S/N)? ');
		read(repetir);
	until((repetir='NÃO') or (repetir='Não') or (repetir='NAO') or (repetir='Nao') or (repetir='não') or (repetir='nao') or (repetir='N') or (repetir='n'));  
	
End.