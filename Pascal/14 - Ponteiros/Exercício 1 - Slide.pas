program Ponteiros_Simples_Slide;

var
  ptIdade: ^Integer;

begin
  new(ptIdade); //Criando um espaço na memória
	
	ptIdade^ := 26; //Armazena na memória o valor 26
	
	writeln('A minha idade é: ', ptIdade^); //Obter o valor do ponteiro
	
	ptIdade^ := ptIdade^ + 4; //Alterando o valor do ponteiro
	
	writeln('A nova idade é: ', ptIdade^); //Obter o valor do ponteiro
	
	dispose(ptIdade); //Liberar a memória
	
	ptIdade := nil; //Marcar o espaço da memória como vazio, disponível pra uso novamente.
		
  readkey;  
end.