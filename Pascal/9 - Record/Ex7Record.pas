Program Ex7Record;

type
	rEndereco = record
		cidade : string;
		bairro : string;
		logra : string;
		num : integer; 	
	end;

type
	rDados = record
		nome : string;
		codigo : integer;
		end1 : rEndereco;
		end2 : rEndereco;
	end;

var
	pes : rDados;
	informa : char;

	procedure ObterDadosPes;
	begin
		clrscr;
		writeln('       Insira os dados da pessoa      ');
		writeln('--------------------------------------');
		write('Nome da pessoa: ');
		read(pes.nome);
		write('Código da pessoa: ');
		read(pes.codigo);
		writeln('--------------------------------------');
		readkey;
	end;
	
	procedure ObterEnd1;
	begin
		clrscr;
		writeln('              Endereço Principal              ');
		writeln('----------------------------------------------');	
		write('Insira a cidade: ');
		read(pes.end1.cidade);
		write('Insira o bairro: ');
		read(pes.end1.bairro);
		write('Insira ao logradouro: ');
		read(pes.end1.logra);
		write('Insira o  número: ');
		read(pes.end1.num);
		writeln('----------------------------------------------');	
		readkey; 
	end;
	
	procedure ObterEnd2;
	begin
		clrscr;
		writeln('              Endereço Cobrança	  				  ');
		writeln('---------------------------------------------');	
		write('Insira a cidade: ');
		read(pes.end2.cidade);
		write('Insira o bairro: ');
		read(pes.end2.bairro);
		write('Insira ao logradouro: ');
		read(pes.end2.logra);
		write('Insira o  número: ');
		read(pes.end2.num);
		writeln('---------------------------------------------');	
		readkey; 
	end;
	
	procedure InformaTipo;
	begin
		repeat
			clrscr;
			writeln('               Qual endereço deseja apresentar               ');
			writeln('-------------------------------------------------------------');
			
			write('Digite P-Principal ou C-Cobrança: ');
			read(informa);
			
			writeln('-------------------------------------------------------------');
			
			if((informa = 'P') or (informa = 'p')) then
			begin
				writeln('Código: ', pes.codigo,', Nome: ', pes.nome);
				writeln('End. Principal: ', pes.end1.logra,', ', pes.end1.num, ', ', pes.end1.bairro,' - ', pes.end1.cidade);
			end
				else if((informa = 'C') or (informa = 'c')) then
				begin
					writeln('Código: ', pes.codigo,', Nome: ', pes.nome);
					writeln('End. Cobrança: ', pes.end2.logra,', ', pes.end2.num, ', ', pes.end2.bairro,' - ', pes.end2.cidade);
				end
					else
						writeln('Opção inválida');
						
			writeln('-------------------------------------------------------------');
			readkey;
		until((informa = 'P' ) or (informa = 'p') or (informa = 'C') or (informa = 'c'))	
	end;
		
Begin

	ObterDadosPes;
	ObterEnd1;
	ObterEnd2;
	InformaTipo;
	  
End.