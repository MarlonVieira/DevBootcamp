Program Ex5Record;

type
	rItem = record
	  codigo : integer;
	  descricao : string;
	  qtd : integer;
		valorunit : real;	
	end;

type
	rPedidos = record
		vendedor : string;
		mesa : integer;
		observ : string;
		valortot : real;
		item1 : rItem;
		item2 : rItem;
	end;

var
	cli : rPedidos;
	
	procedure ObterDados;
	begin
		clrscr;
		writeln('      Insira os dados requeridos      ');
		writeln('--------------------------------------');
		write('Insira qual é o vendedor: ');
		read(cli.vendedor);
		write('Insira qual é a mesa: ');
		read(cli.mesa);
		write('Alguma observação? ');
		readln(cli.observ);
		writeln('--------------------------------------');
		readkey;
	end;
	
	procedure ObterDadosItem1;
	begin
		clrscr;
		writeln('               Pedido do Item 1	  				  ');
		writeln('---------------------------------------------');	
		write('Insira o código do produto 1: ');
		read(cli.item1.codigo);
		write('Insira a descrição do produto 1: ');
		read(cli.item1.descricao);
		write('Insira a quantidade do produto 1: ');
		read(cli.item1.qtd);
		write('Insira o valor unitário do produto 1: ');
		read(cli.item1.valorunit);
		writeln('---------------------------------------------');	
		readkey; 
	end;
	
		procedure ObterDadosItem2;
	begin
		clrscr;
		writeln('              Pedido do Item 2 					    ');
		writeln('---------------------------------------------');	
		write('Insira o código do produto 2: ');
		read(cli.item2.codigo);
		write('Insira a descrição do produto 2: ');
		read(cli.item2.descricao);
		write('Insira a quantidade do produto 2: ');
		read(cli.item2.qtd);
		write('Insira o valor unitário do produto 2: ');
		read(cli.item2.valorunit);
		writeln('---------------------------------------------');	
		readkey; 
	end;
	
	procedure Pedido_ValorT;
	begin
		clrscr;
		cli.valortot := (cli.item2.qtd * cli.item2.valorunit) + (cli.item1.qtd * cli.item1.valorunit);
		writeln('   Valor total   ');
		writeln('-----------------');
		writeln('   R$ ', cli.valortot:0:2);
		writeln('-----------------');
		readkey;	
	end;
		
Begin

	ObterDados;
	ObterDadosItem1;
	ObterDadosItem2;
	Pedido_ValorT;
	  
End.