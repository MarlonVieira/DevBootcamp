program Ponteiros_Simples_Slide;

var
  ptIdade: ^Integer;

begin
  new(ptIdade); //Criando um espa�o na mem�ria
	
	ptIdade^ := 26; //Armazena na mem�ria o valor 26
	
	writeln('A minha idade �: ', ptIdade^); //Obter o valor do ponteiro
	
	ptIdade^ := ptIdade^ + 4; //Alterando o valor do ponteiro
	
	writeln('A nova idade �: ', ptIdade^); //Obter o valor do ponteiro
	
	dispose(ptIdade); //Liberar a mem�ria
	
	ptIdade := nil; //Marcar o espa�o da mem�ria como vazio, dispon�vel pra uso novamente.
		
  readkey;  
end.